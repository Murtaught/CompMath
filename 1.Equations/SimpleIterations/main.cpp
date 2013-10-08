#include <stdexcept>
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
#include <cstdlib>
#include <ctime>
using namespace std;

#include <ginac/ginac.h>
namespace math = GiNaC;

int print_precision = 4;      // точность вывода double
double a, b;                  // отрезок, содержащий корень
math::symbol x("x");          // переменная x с точки зрения GiNaC
math::symbol t("t");          // переменная t с точки зрения GiNaC
math::ex f, phi, dphi;        // f(x), phi(x), phi'(x);

double max_allowed_error = 0.0001; // до какой точности будем считать

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
}

void calculate_derivatives()
{
    phi  = t * f + x; // phi(x) = t * f(x) + x
    dphi = phi.diff(x);

    // We want: |phi'(x)| < 1 => -2 < t * f'(x) < 0

    math::ex df = f.diff(x);
    cout << "f'(x) = " << df << ";";

    bool df_is_neg = df.subs(x == (a + b) / 2) < 0;
    cout << " (" << (df_is_neg ? "<" : ">=") << "0)" << endl;

    double mod_df_max;
    {
        math::ex mod_df = math::abs( df );

        int steps = int((b - a) * 100);
        mod_df_max = eval_at(mod_df, a);
        for (int i = 1; i < steps; ++i)
        {
            double temp = eval_at(mod_df, a + (b - a) / (steps - 1) * i);
            if (temp > mod_df_max)
                mod_df_max = temp;
        }
    }
    cout << "max(|f'(x)|) =~ " << mod_df_max << endl;

    double t_val = -1.5 / mod_df_max;
    if ( df_is_neg )
        t_val = -t_val;

    cout << "t = " << t_val << endl;

    cout << "phi (x) = " << phi  << ";\n";
    cout << "phi'(x) = " << dphi << ";" << endl;

    phi  = phi.subs(t == t_val);
    dphi = math::abs( dphi.subs(t == t_val) );
}

void make_gnuplot_file(int i, double x, double error)
{
    char buf[21];
    sprintf(buf, "%d", i);
    string filename = "pics/gnuplot/" + string(buf) + ".gnu";

    ofstream file(filename.c_str());
    file << fixed << setprecision(print_precision) << math::csrc_double;

    file << "set terminal png size 1024,768\n";
    file << "set output \"pngs/" << buf << ".png\" \n";

    file << "set title \"x = " << x << " +- " << error << " ("
         << (error / x * 100) << "%) \" \n";

    file << "set xrange [" << a << " : " << b << "]\n";

    file << "set xzeroaxis ls -1 \n";
    file << "set yzeroaxis ls -1 \n";
    file << "set grid \n";

    file << "phi(x) = " << phi << "\n";
    file << "x_(x)  = x\n";

    file << "set xtics add (\"x" << i << "\" " << x << ") \n";

    file << "set style arrow 1 nohead \n";
    file << "set arrow from " << x << ", 0 to " << x << ", phi(" << x << ") \n";
    file << "set arrow from " << x << ", phi(" << x << ") to phi(" << x << "), phi(" << x << ") \n";
    file << "set arrow from phi(" << x << "), phi(" << x << ") to phi(" << x << "), 0 \n";

    file << "plot phi(x) lt 1, x_(x) lt 3 \n";
}

void print_x(int i, double x, double error)
{
    cout << "x_" << i << " = " << x << ";  ";
    cout << "|x_" << i << " - x*| <= " << error << ";" << endl;

    make_gnuplot_file(i, x, error);
}

void simple_iterations()
{
    cout << "Simple iterations method:" << endl;

    int i = 0;
    double x = a + (b - a) / RAND_MAX * rand();
    double error = max(x - a, b - x);
    print_x(i, x, error);

    //for (i = 0; i < N; ++i)
    while ( error > max_allowed_error )
    {
        x = eval_at(phi, x);
        error = error * eval_at(dphi, x);

        ++i;
        print_x(i, x, error);
    }

    cout << "\nresult = " << x << endl;
}


int main()
{
    srand(time(NULL));
    read_input("inputf.txt");

    cout << fixed << setprecision(print_precision);
    cout << "[a, b] = [" << a << ", " << b << "];\n";
    cout << "f (x) = "  << f   << ";\n";

    calculate_derivatives();

    simple_iterations();

    return 0;
}

