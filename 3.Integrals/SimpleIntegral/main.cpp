#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
using namespace std;

#include <ginac/ginac.h>
namespace math = GiNaC;


int print_precision;        // точность вывода double
double a, b;                // пределы интегрирования
math::symbol x("x");        // переменная x с точки зрения GiNaC
math::ex f;                 // f(x), мы её интегрируем

double M_d2f;               // максимальное значение d2f
int N;                      // количество отрезков dx для интегрирования

double max_allowed_error;   // максимальная допустимая погрешность


// Численно посчитать GiNaC'овское выражение
double eval_at(const math::ex &expr, double x_val)
{
    math::ex temp = expr.subs(x == x_val).evalf();
    return math::ex_to<math::numeric>( temp ).to_double();
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


    cout << "int ( " << f << " ) from " << a << " to " << b << endl
         << "   with abs. error under " << max_allowed_error << endl;

    cout << "print precision is " << print_precision << " digits." << endl;
}

void find_M_d2f()
{
    // берем вторую производную f(x)
    math::ex d2f = f.diff(x, 2);
    cout << "f\"(x) = " << d2f << endl;

    // берем максимум f"(x) брутфорсом
    int steps = int((b - a) * 100);
    M_d2f = eval_at(d2f, a);
    for (int i = 1; i < steps; ++i)
    {
        double temp = eval_at(d2f, a + (b - a) / (steps - 1) * i);
        if ( temp > M_d2f )
            M_d2f = temp;
    }

    cout << "M_f\"(x) = " << M_d2f << endl;

    // берем для погрешности модуль
    if ( M_d2f < 0 ) M_d2f = -M_d2f;
    cout << "|M_f\"(x)| = " << M_d2f << endl;
}

void find_appropriate_N()
{
    double temp = (b - a);
    temp = temp * temp * temp;
    temp /= 24;
    temp *= M_d2f;

    for (N = 1; ; ++N)
    {
        double R_n = temp / (N * N);
        cout << "R_" << N << " = " << R_n << endl;

        if ( R_n < max_allowed_error )
            break;
    }

    cout << "OK, N = " << N << endl;
}

void simple_integral()
{
    cout << "\n\nSimple integral.\n  Params:\n";
    cout << "    f      = " << f << "\n";
    cout << "    [a, b] = [" << a << ", " << b << "]\n";
    cout << "    N      = " << N << endl;

    cout << "\nProcess:" << endl;

    double sum     = 0;
    double dx      = (b - a) / N;
    for (int i = 0; i < N; ++i)
    {
        double x_i     = a + ((b - a) / N) * i;
        double x_iplus = a + ((b - a) / N) * (i + 1);
        double x_cur   = (x_i + x_iplus) / 2;

        double increm   = dx * eval_at(f, x_cur);
        sum            += increm;

        cout << "i = " << i << ", x_cur = " << x_cur << ", increment = " << increm << endl;
    }

    cout << "\nIntegral sum = " << sum << endl;
}

int main()
{
    read_input("inputf.txt");
    cout << fixed << setprecision(print_precision);

    find_M_d2f();

    find_appropriate_N();

    simple_integral();





    return 0;
}
