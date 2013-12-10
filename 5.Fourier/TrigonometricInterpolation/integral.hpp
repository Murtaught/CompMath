#ifndef INTEGRAL_HPP
#define INTEGRAL_HPP

#include <iostream>
#include <cfloat>


#include <ginac/ginac.h>
namespace math = GiNaC;

namespace cmath
{
#include <math.h>
}

// Численно посчитать GiNaC'овское выражение
double int_eval_at(const math::ex &expr, double x_val, math::symbol const& x)
{
    math::ex temp = expr.subs(x == x_val).evalf();
    return math::ex_to<math::numeric>( temp ).to_double();
}

double compute_integral(math::ex const& f,    // функция, которую интегрируем
                        double a, double b,   // отрезок, на котором интегрируем
                        double precision,     // точность (максимальная погрешность)
                        math::symbol const& x // переменная
                        )
{
    // Сначала надо найти подходящее N
    // берем вторую производную f(x)
    math::ex d2f = f.diff(x, 2);

    // берем максимум f"(x) брутфорсом
    int steps = int((b - a) * 100);
    double MAX_d2f = DBL_MIN;
    for (int i = 0; i < steps; ++i)
    {
        try
        {
            double temp = int_eval_at(d2f, a + (b - a) / (steps - 1) * i, x);
            if ( temp > MAX_d2f )
                MAX_d2f = temp;
        }
        catch ( math::pole_error )
        {
            // ignore
        }
    }

    // берем для погрешности модуль
    if (MAX_d2f < 0)
        MAX_d2f = -MAX_d2f;

    // Ищем такое N (число прямоугольников для разбиения)
    // чтобы погрешность была меньше заданной
    int N;
    for (N = 1; ; ++N)
    {
        double delta = (b - a) / N; // шаг сетки
        double R_n = (b - a) * delta * delta / 24.0 * MAX_d2f;

        if ( R_n < precision )
            break;
    }

    cout << "   integral: chosen N is " << N << endl;

    // Теперь можно посчитать и сам интеграл
    double sum     = 0;
    double delta   = (b - a) / N;
    for (int i = 0; i < N; ++i)
    {
        // это точка ровно посередине отрезка под номером i
        double x_cur   = a + delta * (2 * i + 1) / 2;

        // инкремент - площадь прямоугольника
        double increm   = delta * int_eval_at(f, x_cur, x);
        sum            += increm;
    }

    // Профит!
    return sum;
}

#endif // INTEGRAL_HPP
