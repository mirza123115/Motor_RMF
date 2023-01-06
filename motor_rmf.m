clear all
close all
clc


t=0:.01:2*pi;

#*************---Single phase motor---**********|

##---------------single phase supply------------|
ph_a=sin(t);
ph_b=sin(t+pi/2);

##single phase supply resultant field
field=ph_a+i*ph_b;
r1=abs(field);
teta1=angle(field);
polar(teta1,r1)

##--------------3phase phase supply-------------|

##3phase phase supply abc sequence
ph_A=sin(t);
ph_B=sin(t-2*pi/3);
ph_C=sin(t+2*pi/3);

##3phase phase abc supply resultant field
hold on
x=ph_A + ph_B*cos(-2*pi/3) + ph_C*cos(2*pi/3);
y=ph_B*sin(-2*pi/3) + ph_C*sin(2*pi/3);
field=x+i*y;
r2=abs(field);
teta2=angle(field);
polar(teta2,r2)

##3phase phase supply acb sequence
ph_Aa=sin(t);
ph_Bb=sin(t+2*pi/3);
ph_Cc=sin(t-2*pi/3);

##3phase phase acb supply resultant field
hold on
x=ph_Aa + ph_Bb*cos(-2*pi/3) + ph_Cc*cos(2*pi/3);
y=ph_Bb*sin(-2*pi/3) + ph_Cc*sin(2*pi/3);
field=x+i*y;
r3=abs(field);
teta3=angle(field);
polar(teta3,r3)


##if single phase motor is run with 2phase of 3phase system
##resultant field of 2phse from 3phase on 1phase motor
hold on
field=ph_B+i*ph_C;
r4=abs(field);
teta4=angle(field);
polar(teta4,r4)

##if single phase motor is run with 3 phase where phaseB is connected with neutral
##phaseA is ocnnecteed with main and PbaseC is coonected with Auxilary winding
hold on
Vab=ph_A-ph_B;
Vcb=ph_C-ph_B;
Vbc=ph_B-ph_C;
field=Vab+i*Vcb;
r5=abs(field);
teta5=angle(field);
polar(teta5,r5)


##single phase with resistance starting
##let say,phase change 15deg after adding heavy resistor
hold on
ph_bb=sin(t+pi/12);
field=ph_a+i*ph_bb;
r6=abs(field);
teta6=angle(field);
polar(teta6,r6)



#**************---Three phase motor---***************|

##3phase motor with Two phase of 3-phase system ,one phase missing
hold on
x=ph_A + ph_B*cos(-2*pi/3);
y= ph_B*sin(-2*pi/3);
field=x+i*y;
r7=abs(field);
teta7=angle(field);
polar(teta7,r7)

##3phase motor with Single phase and capacitor
##coil-a connect with phase-a,coil-b connect through capacitor
##coil-c is opened
hold on
x=ph_a + ph_b*cos(-2*pi/3);
y= ph_b*sin(-2*pi/3);
field=x+i*y;
r8=abs(field);
teta8=angle(field);
polar(teta8,r8)


##3phase motor
##coil-a direct single phase connected
##coil-b connect through capacitor
##coil-c connect with neutral
##here field in phase-c will be neat corrent pass trough a and b

hold on
ph_cc=-(ph_a+ph_b);
x=ph_a + ph_b*cos(-2*pi/3) + ph_cc*cos(2*pi/3);
y=ph_b*sin(-2*pi/3) + ph_cc*sin(2*pi/3);
field=x+i*y;
r9=abs(field);
teta9=angle(field);
polar(teta9,r9)

##3phase motor with Single phase and capacitor,
##phase-a,b conneted with Single phase,
##phase-c is connected through capacitor
##neutral is connected with common point

hold on
x=ph_a + ph_a*cos(-2*pi/3) + ph_b*cos(2*pi/3);
y=ph_a*sin(-2*pi/3) + ph_b*sin(2*pi/3);
field=x+i*y;
r10=abs(field);
teta10=angle(field);
polar(teta10,r10)





