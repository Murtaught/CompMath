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

double M_d2f;               // максимальное значение d2f (для расч. погрешности)
int N;                      // количество отрезков dx для интегрирования
double max_allowed_error;   // максимальная допустимая погрешность
int pics_n;                 // количество картинок


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

    file >> a >> b;

    file >> max_allowed_error;
    file >> print_precision;
    file >> pics_n;

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

void make_gnuplot_file(int n, double error)
{
    double dx = (b - a) / N;

    char buf[21];
    sprintf(buf, "%05d", n);
    string filename = "pics/gnuplot/" + string(buf) + ".gnu";

    ofstream file(filename.c_str());
    file << fixed << setprecision(print_precision) << math::csrc_double;

    file << "set terminal png size 1024,768\n";
    file << "set output \"pngs/" << buf << ".png\" \n";

    file << "set title \"N = " << n << ", error = " << error << "\" \n";

    file << "set xrange [" << a << " : " << b << "]\n";

    file << "set xzeroaxis ls -1 \n";
    file << "set yzeroaxis ls -1 \n";
    file << "set grid \n";

    file << "f(x) = " << f << "\n";

    file << "set style fill  \n";
    for (int i = 0; i < n; ++i)
    {
        double x_beg = a + dx * i;
        double x_end = x_beg + dx;

        file << "set obj " << (i + 1) << " polygon from " <<
                x_beg << ", " <<                    0 << " to " <<
                x_beg << ", " << "f(" << x_beg << ")" << " to " <<
                x_end << ", " << "f(" << x_end << ")" << " to " <<
                x_end << ", " <<                    0 << " to " <<
                x_beg << ", " <<                    0 << " \n";

        file << "set object " << (i + 1) << " fc rgb \"orange\" fillstyle solid 1.0"
                " border lt 4 \n";
    }

    file << "plot f(x) lt 1 \n";
}

void find_appropriate_N()
{
    // Ищем такое N (число прямоугольников для разбиения)
    // чтобы погрешность была меньше заданной

    // temp = R_n * n^2 = f"(z) * (b - a)^3 / 12, где a <= z <= b
    // Доказательство см. 2 том Фихтенгольца, стр. 159
    double temp = (b - a);
    temp = temp * temp * temp;
    temp /= 12;
    temp *= M_d2f;

    // Просто линейно увеличиваем N и высчитываем
    // R_n для каждого значения N
    for (N = 1; ; ++N)
    {
        double R_n = temp / (N * N);
        ///cout << "R_" << N << " = " << R_n << endl;

        // Хорошего понемногу
        if ( N <= pics_n )
            make_gnuplot_file(N, R_n);

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

    ///cout << "\nProcess:" << endl;

    double sum     = 0;
    double dx      = (b - a) / N;
    for (int i = 0; i < N; ++i)
    {
        double l = a + dx * i;
        double r = a + dx * (i + 1);

        // инкремент - площадь трапеции
        double increm   = dx * ((eval_at(f, l) + eval_at(f, r)) / 2);
        sum            += increm;

        cout << "i = " << i << ", l = " << l << ", r = " << r << ", increment = " << increm << endl;
    }

    // Профит!
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
