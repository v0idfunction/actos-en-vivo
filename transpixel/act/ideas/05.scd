p=ProxySpace.push(s);

~q.play;

{SinOsc.ar/7}.play


s.scope;

~x

(

~q[0]={|notes=#[62,65,69,75],t_trig=1|
	o=SinOsc;
	Mix.new(
		(LFPulse.ar(notes.midicps*2,o.kr(1/8).linlin(-1,1,0,1),o.kr(1/3,1/2).linlin(-1,1,0,1))*o.kr(1/16,1/2).linlin(-1,1,1,122.1)).tanh/8
		*
		EnvGen.kr(Env.perc((3/[2,3,4,5]),0),t_trig)
	)*0!2
};

~q[1]={|notes=#[62,65,69,75],t_trig=1,rate=0.5,phases=#[0.5,0.333,0.25,0.2]|
	o=SinOsc;
	Mix.new(
		(LFPulse.ar(notes.midicps/2,o.kr(1/6).linlin(-1,1,1/3,2/3),o.kr(1/4,1/2).linlin(-1,1,1/3,2/3))*o.kr(1/8,1/2).linlin(-1,1,1,22.1)).tanh/8
		*
		LFPulse.kr(rate,phases,1/(6..10))
	)!2
};

)

~q.set(\rate,1/2)
~q.setn(\phases,1/(2..5))
~q.setn(\phases,(2..5)/8)
~q.setn(\phases,[0,0,0,0])

i=INSTRUMENT().play;

i.kick=INSTRUMENT(i.synths.kick[3]);
i.kick.seq("1")

i.q=INSTRUMENT(~q)

i.q.octave=4;

(
i.q.chord([
	C(0,\m),
	\r,
	C(0,\m,1,[15]),
	\r,
	\r,
	C(2,\sus2),
	\r,
	\r,
	C(2,\sus2,2,[4]),
]).speed(1)
)
