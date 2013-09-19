#include <cstdio>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <string>
#include <cmath>
using namespace std;

// Константы
const int N = 18; // число итераций

const int PRECISION = 4; // точность вывода на экран чисел с
                         // плавющей точкой, знаки после запятой

const double start_a = 0;  // Отрезок [a;b], на котором ищем корень
const double start_b = 5;

double a = start_a;
double b = start_b;

// Строковое представление функции (для gnuplot)
const string f_str = "exp(x) - sin(x) - 3";

// Функция для уравнения f(x) = 0
// Должна быть непрерывной и монотонной на отрезке [a;b]
double f(double x)
{
    // e^x-sinx-3
    return exp(x) - sin(x) - 3;
}

// Кастрированный сигнум
int sgn(double x)
{
    return (x < 0) ? -1 : 1;
}

void print_x(double x, double error)
{
    cout << "x = " << x << " +- " << error << " ("
         << (error / x * 100) << "%)" << endl;
}

void make_gnuplot_file(int iter_number, double a, double b)
{
    char buf[21];
    sprintf(buf, "%d", iter_number);
    string filename = "pics/gnuplot/" + string(buf) + ".gnu";

    ofstream file(filename.c_str());
    file << fixed << setprecision(PRECISION);

    file << "set terminal png \n";
    file << "set output \"pngs/" << buf << ".png\" \n";

    double x = (a + b) / 2;
    double error = x - a;

    file << "set title \"x = " << x << " +- " << error << " ("
         << (error / x * 100) << "%) \" \n";


    file << "set xrange [" << start_a << " : " << start_b << "]\n";

    file << "set xzeroaxis ls -1 \n";
    file << "set yzeroaxis ls -1 \n";
    file << "set grid \n";

    file << "f(x) = " << f_str << "\n";

    // a
    file << "set arrow from " << a << ",0 to " << a << ",f(" << a << ") nohead "
            "lt 3 \n";
    file << "set xtics add (\"a\" " << a << ") \n";

    // b
    file << "set arrow from " << b << ",0 to " << b << ",f(" << b << ") nohead "
            "lt 4 \n";
    file << "set xtics add (\"b\" " << b << ") \n";

    file << "plot f(x) lt 1 \n";
}

void dichotomy()
{
    cout << "Метод деления пополам (дихотомия):" << endl;

    double c;
    for (int i = 0; i < N; ++i)
    {
        c = (a + b) / 2;

        cout << "Итерация №" << i << ": ";
        print_x(c, c - a);

        make_gnuplot_file(i, a, b);

        // если знаки функции в точках a и c равны...
        if ( sgn(f(a)) == sgn(f(c)) )
            a = c;
        else
            b = c;
    }

    cout << endl;
}

int main()
{
    // Реализация
    cout << fixed << setprecision(PRECISION);

    dichotomy();


    return 0;
}
