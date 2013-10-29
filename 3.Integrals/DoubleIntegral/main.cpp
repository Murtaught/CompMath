#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
using namespace std;

namespace cmath
{
#include <math.h>
}

#include <ginac/ginac.h>
namespace math = GiNaC;

typedef vector< vector<double> > GridType;

// Опции (читаются из текстового файла)
int print_precision = 8; // точность вывода double

// Область интегрирования в плоскости
double a, b;
math::ex upper_b, lower_b;       // верхняя и нижняя ограничивающие функции
double upper_limit, lower_limit; // их максимум и минимум соответственно

int N = 42;
int M = N;

GridType grid;

math::symbol x("x"), y("y"); // переменные с точки зрения GiNaC
math::ex f;                  // f(x, y), мы её интегрируем


// Численно посчитать GiNaC'овское выражение
double eval_at(const math::ex &expr, double x_val)
{
    math::ex temp = expr.subs(x == x_val).evalf();
    return math::ex_to<math::numeric>( temp ).to_double();
}

double eval_at(const math::ex &expr, double x_val, double y_val)
{
    math::ex temp = expr.subs(x == x_val).subs(y == y_val).evalf();
    return math::ex_to<math::numeric>( temp ).to_double();
}


void read_input(string filename)
{
    ifstream file( filename.c_str() );

    if ( !file.is_open() )
        throw string("Could not open file ") + filename;

    while (true)
    {
        string line;
        getline(file, line);

        if ( file.eof() )
            break;

        // Пропускаем пустые строки и комментарии
        if ( line.size() == 0 || line[0] == '#' )
            continue;

        cout << "Processing options file line \"" << line << "\"..." << endl;

        // Собственно обработка
        stringstream ss(line);
        string param, equals;

        ss >> param >> equals;

        if ( equals != "=" )
            throw string("Parsing error!");

        // Подготовка парсера
        math::symtab table;
        table["x"] = x;
        table["y"] = y;
        math::parser reader(table);

        if ( param == "f(x,y)" )
        {
            string f_str;
            getline(ss, f_str);

            f = reader( f_str );
        }
        else if ( param == "a" )
        {
            ss >> a;
        }
        else if ( param == "b" )
        {
            ss >> b;
        }
        else if ( param == "delta_x" )
        {
            ss >> N;
        }
        else if ( param == "delta_y" )
        {
            ss >> M;
        }
        else if ( param == "upper_b(x)" )
        {
            string upper_str;
            getline(ss, upper_str);

            upper_b = reader( upper_str );
        }
        else if ( param == "lower_b(x)" )
        {
            string lower_str;
            getline(ss, lower_str);

            lower_b = reader( lower_str );
        }
        else if ( param == "print_prec" )
        {
            ss >> print_precision;
        }
        else
        {
            string smth;
            getline(ss, smth);
            cout << "  WARNING! Unknown paramether \"" << param << "\" "
                 << "(= \"" << smth << "\")" << endl;
        }
    }

    cout << fixed << setprecision(print_precision);

    cout << "\nParamethers:\n";
    cout << "   f(x,y)  = " << f << "\n";
    cout << "   N       = " << N << "\n";
    cout << "   M       = " << M << "\n\n";
    cout << "   a       = " << a << "\n";
    cout << "   b       = " << b << "\n";
    cout << "   upper_b = " << upper_b << "\n";
    cout << "   lower_b = " << lower_b << "\n\n";
    cout << "   Double print precision is "
         << print_precision << " symbols.\n" << endl;
}

void make_gnuplot_2d_file()
{
    ofstream file("int_rect.gnuplot");
    file << fixed << setprecision(print_precision) << math::csrc_double;

    file << "set terminal png size 1024,768\n";
    file << "set output \"int_rect.png\" \n";

    file << "fabs(x) = abs(x) \n";
    file << "pow(x,y) = x**y \n";
    file << "cbrt(x,y) = x**(1.0/3) \n";

    file << "set xrange [" << a << " : " << b << "]\n";
    file << "set yrange [" << lower_limit << " : " << upper_limit << "]\n";

    file << "set xzeroaxis ls -1 \n";
    file << "set yzeroaxis ls -1 \n";
    file << "set grid \n";

    file << "up_b(x)  = " << upper_b << "\n";
    file << "low_b(x) = " << lower_b << "\n";

    // Добавим немного цветных квадратов
    double sq_w = (b - a) / N;
    double sq_h = (upper_limit - lower_limit) / M;
    for (int n = 0; n < N; ++n)
        for (int m = 0; m < M; ++m)
        {
            if ( grid[n][m] != 0 )
            {
                file << "set label \"\" at "
                     << (lower_limit + sq_h * (m + 0.5)) << ", "
                     << (a + sq_w * (n + 0.5))
                     << " point pointtype 1 \n";
            }

            file << "set obj rect "
                 << "from "
                 << (lower_limit + sq_h * m) << ", " << (a + sq_w * n) << " "
                 << "to "
                 << (lower_limit + sq_h * (m + 1)) << ", " << (a + sq_w * (n + 1))
                 << " fc rgb \"" << ((grid[n][m] != 0) ? "light-blue" : "white") << "\""
                 << " fs noborder \n";
        }

    file << "plot up_b(x) lt 1 lw 3, low_b(x) lt 1 lw 3 \n";
}

void make_gnuplot_3d_file()
{
    // not implemented yet
}

void find_limits()
{
    int steps = int((b - a) * 100);
    upper_limit = -INFINITY;
    lower_limit =  INFINITY;
    for (int i = 0; i < steps; ++i)
    {
        double tmp = eval_at(upper_b, a + ((b - a) / steps) * i);
        if ( tmp > upper_limit ) upper_limit = tmp;

        tmp = eval_at(lower_b, a + ((b - a) / steps) * i);
        if ( tmp < lower_limit ) lower_limit = tmp;
    }

    cout << "Upper limit = " << upper_limit << "\n";
    cout << "Lower limit = " << lower_limit << "\n\n";

    cout << "So integration rectangle is from (" << a << "; " << upper_limit << ") "
            "to (" << b << "; " << lower_limit << ").\n" << endl;
}

void calculate_integral()
{
    find_limits();

    cout << "Let's finally compute the integral sum!" << endl;

    grid = GridType(N, vector<double>(M));

    double int_sum = 0;

    double sq_w = (b - a) / N;
    double sq_h = (upper_limit - lower_limit) / M;
    for (int n = 0; n < N; ++n)
        for (int m = 0; m < M; ++m)
        {
            double center_x = a + sq_w * (n + 0.5);
            double center_y = lower_limit + sq_h * (m + 0.5);

            if ( (center_y >= eval_at(lower_b, center_x)) &&
                 (center_y <= eval_at(upper_b, center_x)) )
            {
                grid[m][n] = sq_w * sq_h * eval_at(f, center_x, center_y);

                // Тут же добавляем этот столбик в интегральную сумму
                int_sum += grid[m][n];
            }
            else
            {
                // Если точка лежит за пределами области
                grid[m][n] = 0;
            }
        }

    cout << "ASCII 2d map (just for lulz). 0 - means rest dx*dy is null, 1 - not null: \n";
    for (int n = N - 1; n >= 0; --n)
    {
        for (int m = 0; m < M; ++m)
            cout << ((grid[n][m] != 0) ? 1 : 0) << " ";

        cout << "\n";
    }

    cout << "\nIntegral sum = " << int_sum << "." << endl;

    make_gnuplot_2d_file();
    make_gnuplot_3d_file();
}

int main()
{
    try
    {
        read_input("options.txt");
        calculate_integral();
    }
    catch (string s)
    {
        cout << s << endl;
    }

    return 0;
}

