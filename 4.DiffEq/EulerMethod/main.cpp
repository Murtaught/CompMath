#include "utils.hpp"

void generate_gnuplot_datafile(vector<double> const& t_i,
                           vector<double> const& y_i)
{
    ofstream file( "data.dat" );
    file << fixed << setprecision(print_precision);

    for (size_t i = 0; i < t_i.size(); ++i)
        file << t_i[i] << " " << y_i[i] << "\n";
}

// Метод Эйлера для численного решения ОДУ
// Неявные параметры:
//      y' = f(t, y(t)), y0 = y(t0), t0, T
//
// Явный параметр N - количество точек t_i в равномерной сетке
void euler_method(int N = -1)
{
    // Значение N по умолчанию - десять точек на единицу длины отрезка
    if (N <= 0)
        N = int((T - t0) * 10);

    // Длина шага
    double h = (T - t0) / (N - 1);

    // Два массива:
    // t_i - узлы сетки
    // y_i - приближенное значение функции y(t) в соответствующем узле
    vector<double> t_i(N), y_i(N);

    t_i[0] = t0;
    y_i[0] = y0;

    cout << "Запускаем метод Эйлера:" << endl;
    cout << "  y( " << t0 << " ) = " << y0 << endl;

    for (int i = 1; i < N; ++i)
    {
        t_i[i] = t0 + i * h;
        y_i[i] = y_i[i - 1] + h * eval_at(dy, t_i[i - 1], y_i[i - 1]);

        cout << "  y( " << t_i[i] << " ) = " << y_i[i] << endl;
    }

    generate_gnuplot_datafile(t_i, y_i);
}

int main()
{
    try
    {
        read_input("options.txt");
        euler_method(N);
    }
    catch (string s)
    {
        cout << s << endl;
    }

    return 0;
}

