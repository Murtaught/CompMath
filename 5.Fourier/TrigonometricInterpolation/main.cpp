#include "utils.hpp"
#include "integral.hpp"

const double int_precision = 0.0001;

void fourier()
{
    // Сначала вычислим первый член ряда (a0 / 2, я назвал его a0)
    double a0 = (1 / T) * compute_integral(f, 0, T, int_precision, t);

    double omega = 2 * 3.1415926 / T;

    //vector<double> a(K + 1), b(K + 1); // коэффициенты ряда Фурье

    math::ex g = a0;
    for (int k = 1; k <= K; ++k)
    {
        cout << "Computing coefficients for k = " << k << "..." << endl;
        double a_k = (2 / T) * compute_integral(f * math::cos(k * omega * t), 0, T, int_precision, t);
        double b_k = (2 / T) * compute_integral(f * math::sin(k * omega * t), 0, T, int_precision, t);

        g = g + a_k * math::cos(k * omega * t)
              + b_k * math::sin(k * omega * t);
    }

    // generating gnuplot file
    ofstream file("plot.gp");
    file << fixed << setprecision(print_precision) << math::csrc_double;

    file << "set terminal png size 1024,768\n";
    file << "set output \"plot.png\" \n";

    file << "set title \"K = " << K << "\" \n";

    file << "pow(b, p) = b ** p \n";

    file << "set xzeroaxis ls -1 \n";
    file << "set yzeroaxis ls -1 \n";
    file << "set grid \n";

    file << "f(t) = " << f << "\n";
    file << "g(t) = " << g << "\n";

    file << "set arrow from " << T << ",0 to " << T << ",f(" << T << ") ls -1 \n";

    file << "plot [t=" << -1 << ":" << (T + 1) << "] ";
    file << "f(t) lt 1, g(t) lt 2 \n";
}

int main()
{
    try
    {
        read_input("options.txt");

        fourier();
        //compute_integral(f, 0, T, 0.00001, t);
    }
    catch (string s)
    {
        cout << s << endl;
    }

    return 0;
}

