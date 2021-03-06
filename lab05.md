---
title: "Лабораторная работа №5"
author: "Липатникова М.С. группа НФИбд-02-19"
subtitle: "Модель хищник-жертва"
output:
  word_document: default
  pdf_document: default
toc-title: Содержание
toc: yes
toc_depth: 2
lof: yes
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: yes
pdf-engine: lualatex
header-includes:
- \linepenalty=10
- \interlinepenalty=0
- \hyphenpenalty=50
- \exhyphenpenalty=50
- \binoppenalty=700
- \relpenalty=500
- \clubpenalty=150
- \widowpenalty=150
- \displaywidowpenalty=50
- \brokenpenalty=100
- \predisplaypenalty=10000
- \postdisplaypenalty=0
- \floatingpenalty = 20000
- \raggedbottom
- \usepackage{float}
- \floatplacement{figure}{H}
---

# Цель работы

1. Построить график зависимости x от y и графики функций x(t), y(t).
2. Найти стационарное состояние системы.

# Задание работы

### Вариант 37

$$
\begin{cases}
\frac{dx}{dt}=-0.79x(t)+0.078x(t)y(t) \\
\frac{dy}{dt}=0.77y(t)-0.076x(t)y(t)
\end{cases}
$$

Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях: $x_{0}=9, y_{0}=18$. Найдите стационарное состояние системы.

# Теоретическое введение

***Система «хищник — жертва»***
— сложная экосистема, для которой реализованы долговременные отношения между видами хищника и жертвы, типичный пример коэволюции. Отношения между хищниками и их жертвами развиваются циклически, являясь иллюстрацией нейтрального равновесия.[1]

# Выполнение лабораторной работы

## Постановка задачи

В лесу проживают х число волков, питающихся зайцами, число которых в этом же лесу у. Пока число зайцев достаточно велико, для прокормки всех волков, численность волков растет до тех пор, пока не наступит момент, что корма перестанет хватать на всех. Тогда волки начнут умирать, и их численность будет уменьшаться. В этом случае в какой-то момент времени численность зайцев снова начнет увеличиваться, что повлечет за собой новый рост популяции волков. Такой цикл будет повторяться, пока обе популяции будут существовать. Помимо этого, на численность стаи влияют болезни и старение. Данная модель описывается следующим уравнением:

$$
\begin{cases}
\frac{dx}{dt}=-ax(t)+bx(t)y(t) \\
\frac{dy}{dt}=cy(t)-dx(t)y(t)
\end{cases}
$$

a - коэффициент естественной смертности хищников

b - коэффициент естественного прироста жертв

c - коэффициент увеличения числа хищников

d - коэффициент смертности жертв

Стационарное состояние системы (положение равновесия, не зависящее от времени решение) будет в точке: $x_{0} = \frac{b}{d}, y_{0} = \frac{a}{c}$. Если начальные значения задать в стационарном состоянии $x(0)=x_{0}, y(0)=y_{0}$, то в любой момент времени численность популяций изменяться не будет. При малом отклонении от положения равновесия численности как хищника, так и жертвы с течением времени не возвращаются к равновесным значениям, а совершают периодические колебания вокруг стационарной точки. Амплитуда колебаний и их период определяется начальными значениями численностей x(0), y(0). Колебания совершаются в противофазе.

## Код в OpenModelica

Задаем параметры и прописываем функцию, записываем дифференциальные уравнения.(@fig:001)

![Код программы](4.png){#fig:001 width=100%}

Получаем график колебаний вокруг стационарной точки. (@fig:002)

![График - колебания](1.png){#fig:002 width=100%}

И график х от у. (@fig:003)

![График зависимости х от у](2.png){#fig:003 width=100%}

Меняем начальное условие на стационарное и получаем такой график (@fig:004):

![График стационарного состояния системы](3.png){#fig:004 width=100%}

# Вывод

В ходе выполнения лабораторной работы:

1. Построили график зависимости x от y и графики функций x(t), y(t).
2. Нашли стационарное состояние системы.

# Список литературы

1. Wikipedia: Система «хищник — жертва» ( [1]: [https://ru.wikipedia.org/wiki/%D0%A1%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0_%C2%AB%D1%85%D0%B8%D1%89%D0%BD%D0%B8%D0%BA_%E2%80%94_%D0%B6%D0%B5%D1%80%D1%82%D0%B2%D0%B0%C2%BB])
2. Теоретические материалы курса.
