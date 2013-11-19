#ifndef UTILS_HPP
#define UTILS_HPP

#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
using namespace std;

namespace cmath
{
#include <math.h>
}

#include <ginac/ginac.h>
namespace math = GiNaC;

// Опции (читаются из текстового файла)
int print_precision = 8; // точность вывода double
double   t0, T;          // Область численного вычисления функции y(t): [t0, T]
double   y0;             // y(t0) = y0
math::ex dy;             // y' = f(x, y(x))
int      N = -1;         // количество точек в сетке

// Переменные GiNaC
math::symbol t("t"), y("y"); // переменные с точки зрения GiNaC


// Численно посчитать GiNaC'овское выражение
double eval_at(const math::ex &expr, double t_val, double y_val)
{
    math::ex temp = expr.subs(t == t_val).subs(y == y_val).evalf();
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
        table["t"] = t;
        table["y"] = y;
        math::parser reader(table);

        if ( param == "y'" )
        {
            string f_str;
            getline(ss, f_str);

            dy = reader( f_str );
        }
        else if ( param == "t0" )
        {
            ss >> t0;
        }
        else if ( param == "y0" || param == "y(t0)" )
        {
            ss >> y0;
        }
        else if ( param == "T" )
        {
            ss >> T;
        }
        else if ( param == "N" )
        {
            ss >> N;
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

    cout << fixed << setprecision(print_precision);

    cout << "\nParameters:\n";
    cout << "   y'      = " << dy << "\n";
    cout << "   t0      = " << t0 << "\n";
    cout << "   T       = " << T  << "\n";
    cout << "   y(t0)   = " << y0 << "\n";

    cout << "   N       = ";
    if (N == -1)
        cout << "std";
    else
        cout << N;
    cout << "\n\n";

    cout << "   Double print precision is "
         << print_precision << " symbols.\n" << endl;
}


#endif // UTILS_HPP
