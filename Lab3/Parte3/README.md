Puesto que el algoritmo implementado en la prueba está incompleto y podría no ser correcto, 
entonces se decidió por realizarotro algoritmo.
Para este algoritmo se utiliza el método de simpson 1/3 para su cálculo.

Este método consta de 3 funciones, la función principal "adaptativo" que calcula una primera 
aproximación dado tres valores (a, b, y un c calculado por m=(a+b)/2, o lo que es lo mismo 
de c=a+(b-a)/2), con el método de simpson 1/3 simple. Luego hace un llamado a la función "adapta", 
el cual hace la recursión hasta un noivel que es dado por el calculo hecho con la tolerancia.

Para la ejecución del programa, se debe abrir el archivo lab3_parte3.m y descomentar las funciones 
que allí se presentan.

Se incluyen 3 funciones, las cuales se probaron en wolfram alpha para comparar sus resultados, y 
estas se caracterizan por su continuidad en el intervalo dado y por una dificultad media de su 
cálculo.
