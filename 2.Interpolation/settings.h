#ifndef SETTINGS_H_INCLUDED
#define SETTINGS_H_INCLUDED

// --- НАСТРОЙКИ ---

// 1. Выберите пси-функцию
double lagrange_psi_func(int k, double x);
double chebyshev_psi_func(int k, double x);

double (* psi_func)(int, double) = lagrange_psi_func;
//double (* psi_func)(int, double) = chebyshev_psi_func;

// 2. Выберите сетку (способ выбора x_i)
double uniform_grid(int k);
double chebyshev_grid(int k);

double (* grid)(int) = uniform_grid;
//double (* grid)(int) = chebyshev_grid;

// 3. Выберите отрезок интерполяции [a, b]
const double a = -10;
const double b = 2;

// 4. Выберите количество точек x_i
const int N = 20;

// 5. Введите функцию, которую мы будем интерполировать (полиномом)
double f(double x)
{
    //return exp(x) * sin(x);
    return 10 * sin(2 * x);
}

// 6. Выберите количество знаков после запятой в выводе double
const int PRECISION = 3;

// 7. Выберите количество точек в графике f(x) и интерполяции
const int plot_N = (int) 200 * (b - a);

// (200 точек графика на единицу длины)


#endif // SETTINGS_H_INCLUDED
