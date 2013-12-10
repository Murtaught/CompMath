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
math::ex  f;             // функция f(t)
double    T;             // область аппроксимации функции рядом Фурье: [0, T]

int       K = 10;        // определяет количество слагаемых в ряде (2*K + 1)

// Переменные GiNaC
math::symbol t("t"); // переменные с точки зрения GiNaC


// Численно посчитать GiNaC'овское выражение
double eval_at(const math::ex &expr, double t_val)
{
    math::ex temp = expr.subs(t == t_val).evalf();
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
        math::parser reader(table);

        if ( param == "f" || param == "f(t)" )
        {
            string f_str;
            getline(ss, f_str);

            f = reader( f_str );
        }
        else if ( param == "T" )
        {
            ss >> T;
        }
        else if ( param == "K" )
        {
            ss >> K;
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
    cout << "   f(t)    = " << f  << "\n";
    cout << "   T       = " << T  << "\n\n";

    cout << "   K       = " << K  << "\n\n";

    cout << "   Double print precision is "
         << print_precision << " symbols.\n" << endl;
}


#endif // UTILS_HPP
