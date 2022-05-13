![BrightCoders Logo](img/logo-bc.png)

# Kata El Juego de la Vida.
![cover](img/cover.jpg)
<span>Photo by <a href="https://unsplash.com/@ravi_roshan_inc?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Ravi Roshan</a> on <a href="https://unsplash.com/s/photos/life?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></span>

## Pre-requisitos
Para evaluar tu código e identificar posibles mejoras debes instalar y utilizar las siguientes herramientas:
- [Rubocop](https://brightcoder.gitbook.io/handbook/recursos/ruby-on-rails/rubocop)

## Nuevo requerimiento
Incorporarás las siguientes herramientas para evaluar la calidad de tu código

- [Rubycritic](https://brightcoder.gitbook.io/handbook/recursos/ruby-on-rails/rubycritic)
- [SandiMeter](https://github.com/makaroni4/sandi_meter)

Estas herramientas te sirven para identificar diferentes aspectos que debes atender para que la calidad de tu código sea mejor.

Para el caso de RubyCritic deberás obtener una puntuación mínima de 75.

## Requerimientos Funcionales
Addapted from [Coding Dojo](https://codingdojo.org)

The Game of Life is not your typical computer game. It is a 'cellular automaton', and was invented by Cambridge mathematician John Conway.

This game became widely known when it was mentioned in an article published by Scientific American in 1970. It consists of a collection of cells which, based on a few mathematical rules, can live, die or multiply. Depending on the initial conditions, the cells form various patterns throughout the course of the game.

This Kata is about calculating the next generation of Conway’s game of life, given any starting position. 

You start with a two dimensional grid of cells, where each cell is either alive or dead. In this version of the problem, the grid is finite, and no life can exist off the edges. When calcuating the next generation of the grid, follow these rules:

1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
2. Any live cell with more than three live neighbours dies, as if by overcrowding.
3. Any live cell with two or three live neighbours lives on to the next generation.
4. Any dead cell with exactly three live neighbours becomes a live cell.

You should write a program that can accept an arbitrary grid of cells, and will output a similar grid showing the next generation.

### Clues
The input starting position could be a text file that looks like this:
```
Generation 1:
4 8
........
....*...
...**...
........
```
And the output could look like this:
```
Generation 2:
4 8
........
...**...
...**...
........
```
## Requerimientos no-funcionales
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Pruebas unitarias (TDD)
  - Puntuación en Rubycritic por lo menos 75 en la carpeta de la App y por lo menos 65 en las pruebas
  - Utilizar [SandiMeter](https://github.com/makaroni4/sandi_meter) para analizar el código y utilizar el resultado para hacer mejoras
- Ejecución
  - Puede ejecutarse desde la linea de comandos y mostrar la salida en consola
- Código fuente
  - Orientado a Objetos 
  - Métodos Pequeños
  - [Aplicar los principios SOLID](https://rubygarage.org/blog/solid-principles-of-ood)
- Otros
  - Incluir en el repositorio el [SmallBadge](https://github.com/jorge27/tutorial-rubycritic-small-badge) con la puntuación obtenida por RubyCritic
  - Incluir en el repositorio el reporte HTML que genera [SandiMeter](https://github.com/makaroni4/sandi_meter)
  - El repositorio debe reflejar el trabajo en equipo (en la conversación del repositorio, commits)
  - Los commits de Git deben ser atómicos y significativos
  - Actualizar [este archivo](setup/README.md) en donde se describa el proceso para hacer funcionar el proyecto 
  
## Tecnologías
- Lenguaje de programación Ruby
- Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)
- Rubocop, RubyCritic y SandiMeter para calidad de código
- Línea de comando

## Entregable
- Código fuente en Github (en la rama master)

## Setup
En [este elnace](setup/README.md) se describen los pasos necesarios para ejecutar/probar este proyecto.

## Resources
[Encuentra aquí una lista completa de recursos de ayuda](https://brightcoder.gitbook.io/handbook/ruby-on-rails)

