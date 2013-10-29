#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <string>
using namespace std;

#include <ginac/ginac.h>
namespace math = GiNaC;

// Опции (читаются из текстового файла)
int print_precision = 8; // точность вывода double

// Область интегрирования в плоскости
double a, b;
math::ex upper_b, lower_b; // верхняя и нижняя ограничивающие функции

int N = 42;
int M = N;

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

    cout << "\nParamethers:\n";
    cout << "   f(x,y)  = " << f << "\n";
    cout << "   N       = " << N << "\n";
    cout << "   M       = " << M << "\n\n";
    cout << "   a       = " << a << "\n";
    cout << "   b       = " << b << "\n";
    cout << "   upper_b = " << upper_b << "\n";
    cout << "   lower_b = " << lower_b << "\n\n";
    cout << "   Double print precision is "
         << print_precision << " symbols." << endl;
}



int main()
{
    try
    {
        read_input("options.txt");
    }
    catch (string s)
    {
        cout << s << endl;
    }

    return 0;
}

