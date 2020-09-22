# Traffic_Controller

The objective of this lab is to gain experience with state machine design by using the six-step design
process. From the project specifications you will:
Develop a state diagram,
o Reduce the number of states using the implication chart.
o Assign the reduced states the optimal binary values.
o Develop the excitation table using T flip-flops.
o Design the logic and implement the finite state machine.
Lab Description and Specs:

Function:
Design a variation of the classical traffic light controller. The intersection is shown in the following diagram.
"A" street runs north-south, "B" street runs east-west, and "C" street enters the intersection from the
southeast. "A" street is quite busy, and it is frequently difficult for cars heading south on "A" to make the
left turn onto either "B" or "C". In addition, cars rarely enter the intersection from "C" street. Design a
traffic light state diagram for this three-way intersection to the following specifications:
a. There are five sets of traffic lights, facing cars coming from "A" north, "A" south, "B" east, "B" west,
and "C" street.
b. The red, yellow, and green lights facing cars that are heading South on road A are augmented with a
left turn arrow that can be lit up as either green or yellow or not lit up at all.
c. The normal sequencing of lights facing the cars heading South on road A is arrow green, arrow
yellow, traffic light green, traffic light yellow, traffic light red, and repeat. In other words, the left
arrow light is illuminated in every complete cycle of the lights.
d. However, it should be possible for traffic going from north to south on "A" street to cross the
intersection even when the left turn arrow is illuminated. Therefore, the traffic light green should
also be illuminated while the turn arrow is lit up.
e. Cars traveling from south to north on "A" street (and all directions on "B" and "C" streets) must see
a red light while the left turn arrow is illuminated for the traffic heading south.
f. A car sensor C is embedded in "C" street to detect whether a car is waiting to enter the intersection
from the southeast.
g. A timer generates a long interval signal, Time Long (TL), and a short interval signal, Time Short (TS)
when set by a start timer (ST) signal.
h. Red and green lights are lit up for at least a TL unit of time. Yellow lights, the green arrow, and the
yellow arrow are lit up for exactly a TS unit of time.
i. The "C" street lights cycle from red to green only if the embedded car sensor indicates that a car is
waiting. The lights cycle to yellow and then red as soon as no cars are waiting. Under no
circumstances is the "C" street green light to be lit for longer than a TL unit of time.


Inputs:
Sensor C, short and long time intervals TS and TL.
Outputs:
"A" street north arrow green/yellow/off (three separate signals)
"A" street north light green/yellow/red
"A" street south light green/yellow/red
"B" street east light green/yellow/red
"B" street west light green/yellow/red
"C" street southeast green/yellow/red and the start timer (ST) signal

