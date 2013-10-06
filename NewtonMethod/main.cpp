#include <stdexcept>
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
using namespace std;

#include <ginac/ginac.h>

namespace math
{
    // uBlas here
    using namespace GiNaC;
}
using namespace math;


int print_precision = 4;      // точность вывода double
double a, b;                  // отрезок, содержащий корень
math::symbol x("x");          // переменная x с точки зрения GiNaC
math::ex f, df, d2f;          // f(x), f'(x), f"(x)

bool df_is_neg, d2f_is_neg;   // f'(x) < 0 ? ...
double M, m;                  // M = max( f"(x) );  m = min( f'(x) );  a <= x <= b;

double max_allowed_error = 0.0001; // до какой точности будем считать


double eval_at(const math::ex &expr, double x_val)
{
    math::ex temp = expr.subs(x == x_val).evalf();
    return math::ex_to<math::numeric>( temp ).to_double();
}

void make_gnuplot_file(int i, double x, double error)
{
    char buf[21];
    sprintf(buf, "%d", i);
    string filename = "pics/gnuplot/" + string(buf) + ".gnu";

    ofstream file(filename.c_str());
    file << fixed << setprecision(print_precision) << csrc_double;

    file << "set terminal png size 1024,768\n";
    file << "set output \"pngs/" << buf << ".png\" \n";

    file << "set title \"x = " << x << " +- " << error << " ("
         << (error / x * 100) << "%) \" \n";

    file << "set xrange [" << a << " : " << b << "]\n";

    file << "set xzeroaxis ls -1 \n";
    file << "set yzeroaxis ls -1 \n";
    file << "set grid \n";

    file << "f(x) = " << f << "\n";

    file << "g(x) = " << eval_at(df, x) << " * x + (" << (eval_at(f, x) - eval_at(df, x) * x) << ") \n";

    file << "set xtics add (\"x" << i << "\" " << x << ") \n";


    file << "plot f(x) lt 1, g(x) lt 3 \n";
}

void print_x(int i, double x, double error)
{
    cout << "x_" << i << " = " << x << ";  ";

    cout << "|x_" << i << " - xi| <= " << error << ";" << endl;
}

void newton_method()
{
    cout << "Newton:" << endl;

    double side = ( d2f_is_neg == (eval_at(f, b) < 0) ) ? b : a;

    double x_cur = side;
    double error = b - a;
    print_x(0, x_cur, error);

    int i = 1;
    while ( error >= max_allowed_error )
    {
        error = M / (2 * m) * error * error;
        x_cur = x_cur - eval_at(f, x_cur) / eval_at(df, x_cur);

        print_x(i, x_cur, error);
        make_gnuplot_file(i, x_cur, error);

        ++i;
    }

}

void read_input(string filename)
{
    ifstream file( filename.c_str() );

    string f_str;
    getline(file, f_str); // считать всю строчку

    file >> a >> b; // интервал где находится корень и
                    // выполняются 3 условия из Фихтенгольца

    file >> max_allowed_error;
    file >> print_precision;

    // parsing
    math::symtab table;
    table["x"] = x;

    math::parser reader(table);
    f = reader( f_str );
}

void calculate_derivatives()
{
    df  =  f.diff(x);
    d2f = df.diff(x);
}

void find_M_and_m()
{
    // По нашему требованию на [a, b] производные
    // сохраняют знак
    double c = (a + b) / 2;
    df_is_neg  = df.subs(x == c).evalf()  < 0;
    d2f_is_neg = d2f.subs(x == c).evalf() < 0;

    // m определить легко - f'(x) монотонна
    m = eval_at(df, d2f_is_neg ? b : a);

    // с M всё несколько сложнее
    {
        double temp;
        unsigned long steps = int(b - a) * 100;

        M = eval_at(d2f, a);
        for (unsigned long i = 1; i < steps; ++i)
            if ( (temp = eval_at(d2f, a + (b - a) / (steps - 1) * i)) > M )
                M = temp;
    }
}

int main()
{
    read_input("inputf.txt");
    calculate_derivatives();

    cout << fixed << setprecision(print_precision);

    cout << "[a, b] = [" << a << ", " << b << "];\n";
    cout << "f (x) = "  << f   << ";\n";
    cout << "f'(x) = "  << df  << ";\n";
    cout << "f\"(x) = " << d2f << ";\n" << endl;

    find_M_and_m();

    cout << "m  = " << m << ";\n";
    cout << "M ~= " << M << ";\n" << endl;

    newton_method();

    return 0;
}


