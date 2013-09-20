#include <iostream>
#include <iomanip>
#include <fstream>

#define _USE_MATH_DEFINES // Ради M_PI
#include <cmath>
using namespace std;

// В основном для рассчета обратной матрицы
#include <boost/numeric/ublas/vector.hpp>
#include <boost/numeric/ublas/matrix.hpp>
#include <boost/numeric/ublas/lu.hpp>
namespace ublas = boost::numeric::ublas;

// Настройки (времени компиляции, ибо лень)
#include "settings.h"

// ------
// Реализация
ublas::vector<double> X(N), F(N), A(N);

double lagrange_psi_func(int k, double x)
{
    return pow(x, k);
}

double chebyshev_psi_func(int k, double x)
{
    if ( k < 2 )
        return (k == 0) ? 1 : x;
    else
        return 2 * x * chebyshev_psi_func(k - 1, x) - chebyshev_psi_func(k - 2, x);
}

double uniform_grid(int k)
{
    return a + k * ((b - a) / (N - 1));
}

double chebyshev_grid(int k)
{
    k = N - 1 - k;
    return (a + b) / 2 + ((b - a) / 2) * cos(M_PI * ((2.0 * k + 1) / (2 * N)));
}


// Интерполирубщая функция
double g(double x)
{
    double sum = 0;

    for (int k = 0; k < N; ++k)
        sum += A(k) * psi_func(k, x);

    return sum;
}

// Магия
 /* Matrix inversion routine.
 Uses lu_factorize and lu_substitute in uBLAS to invert a matrix */
template<class T>
bool invert_matrix(const ublas::matrix<T>& input, ublas::matrix<T>& inverse)
{
    using namespace ublas;
	typedef permutation_matrix<std::size_t> pmatrix;

	// create a working copy of the input
	matrix<T> A(input);

	// create a permutation matrix for the LU-factorization
	pmatrix pm(A.size1());

	// perform LU-factorization
	int res = lu_factorize(A, pm);
	if (res != 0)
		return false;

	// create identity matrix of "inverse"
	inverse.assign(identity_matrix<T> (A.size1()));

	// backsubstitute to get the inverse
	lu_substitute(A, pm, inverse);

	return true;
}

template<class T>
void print_matrix(const ublas::matrix<T>& M)
{
    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < N; ++j)
            cout << M(i, j) << "  ";

        cout << endl;
    }

}

int main()
{
    cout << fixed << setprecision(PRECISION) << "Давайте что-нибудь интерполируем!" << endl;

    cout << "Шаг №1: Выберем N точем из отрезка [a, b].\n"
            "N      = " << N << ";\n"
            "[a, b] = [" << a << ", " << b << "];" << endl;

    if ( grid == chebyshev_grid )
        cout << "Используется сетка Чебышева.\n" << endl;
    else
        cout << "Используется равномерная сетка.\n" << endl;

    for (int k = 0; k < N; ++k)
        X[k] = grid(k);

    // выведем полученные точки на экран
    // (и заодно посчитаем функцию в этих точках)
    for (int k = 0; k < N; ++k)
    {
        F(k) = f( X[k] );

        cout << "x_" << k << " = " << X[k] << ";  "
                "f( x_" << k << " ) = " << F[k] << ";" << endl;
    }


    cout << "\nШаг №2: Запишем матрицу PSI.\n" << endl;

    // По горизонтали увеличиваем k в psi_func()
    // По вертикали используем x_i[]
    ublas::matrix<double> PSI(N, N); // NxN

    for (int i = 0; i < N; ++i)
        for (int k = 0; k < N; ++k)
            PSI(i, k) = psi_func(k, X[i]);

    // Выведем эту матрицу на экран
    print_matrix(PSI);


    cout << "\nШаг №3: Вычислим обратную матрицу PSI^-1.\n" << endl;

    ublas::matrix<double> inv_PSI(N, N);
    invert_matrix(PSI, inv_PSI);

    // Выведем эту матрицу на экран
    print_matrix(inv_PSI);


    cout << "\nШаг №4: Умножим PSI^-1 на вектор значений функции F и получим "
            "вектор коэффициентов интерполяционного многочлена А.\n" << endl;

    A = ublas::prod(inv_PSI, F);

    cout << "Наши коэффициенты:" << endl;
    for (int i = 0; i < N; ++i)
        cout << "a_" << i << " = " << A(i) << ";" << endl;


    cout << "\nшаг №5: Сгенерируем входной файл для gnuplot чтобы посмотреть, насколько "
            "хорошо будет интерполироваться наша функция.\n" << endl;

    ofstream plotfile("interp.gp");
    plotfile << fixed;
    plotfile << "# x      f(x)       g(x) - interpolation\n";

    double max_error = 0;
    double relative_error = 0;

    for (int i = 0; i < plot_N; ++i)
    {
        double x = a + i * ((b - a) / plot_N);
        double f_cache = f(x);
        double g_cache = g(x);

        double cur_error = abs(f_cache - g_cache);
        if ( cur_error > max_error )
        {
            max_error = cur_error;
            relative_error = max_error / abs(g_cache) * 100;
        }

        plotfile << x << " " << f_cache << " " << g_cache << "\n";
    }

    plotfile.flush();
    cout << "Готово!" << endl;

    cout << "Максимальная найденная абсолютная погрешность "
            "при построении графика:\n      " << max_error << " (" <<
            relative_error << "%)." << endl;

    return 0;
}
