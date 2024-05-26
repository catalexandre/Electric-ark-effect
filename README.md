# Electric-ark-effect
A Game Maker Studio 2 Electric Ark effect

## How it works

The way this works is it calculates the distance between the two objects that the electric ark needs to link, and it divides it by a number N, which is how many segments the electric ark is composed of, and this will give the length of each segment. It then starts from one object, and draws a line in the direction of the object the electric ark must link to, with a random variation to it's angle. It then repeats the last step N times, always starting from where the last segment got to. To make sure the electric ark links the two objects, a last line is drawn from the where the previous segment ended to the end point of the electric ark.

## The result

![](EAF.gif)
