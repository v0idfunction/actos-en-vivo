// void function
// hello world
// final



~mix = ~arm;



~arm[0]={|notes=#[60,62,64,66,70]|
	Mix((Pulse.ar(~tempo.kr*4)*SinOsc.ar(notes.midicps*[3,9],0,0.1))) ! 2
};
~arm[1]={|notes=#[60,62,64,66,70]|
	Mix((Pulse.ar(~tempo.kr*4)*SinOsc.ar(notes.midicps*[1.5,6],0,0.1))) ! 2};
~arm[2]={|notes=#[60,62,64,66,70]|
	Mix((Pulse.ar(~tempo.kr*4)*SinOsc.ar(notes.midicps*[1/2,2.5],0,0.1))) ! 2};

~arm[4]=\filter->{|in| Mix.new(in+CombC.ar(in,1,1/[3,4,6],1/6)/6 ) ! 2};


i[\arm] = Proxy(~arm);

(

i[\arm][0].seq(\chord,[
		C(0,\m,1,[12,15]),
		C(0,\m,0,[12,14]),
		\r,\r,
		C(3,\m,0,[12,15]),
		C(3,\sus2,1,[12,15]),
		C(3,\sus2,2,[12,15]),
		\r,
		C(7,\sus4,2,[12,19]),
],[\speed,1/4])

)

(

i[\arm][1].seq(\chord,[
		C(0,\m,0,[12,14]),
		\r,\r,
		C(1,\Mmaj7,0,[12,15]),
		C(3,\sus2,1,[12,15])
],[\speed,1/4])

)
