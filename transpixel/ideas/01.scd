p=ProxySpace.push(s);

~mix=~x;

~x.play;

(
	~x[0]={|notes=#[60,62,66,70]|
		(Resonz.ar(WhiteNoise.ar(1/2)*2,notes.midicps,1/100)*23).tanh/5 ! 2
	};

	~x[1]={|notes=#[60,62,66,70],t_trig|
		(Saw.ar(notes.midicps/4,1/100)*23).tanh/2
		*
		Decay2.kr(t_trig,[3,3.5,4,4.5],1)
		/2 ! 2
	};
	~x[2]={|notes=#[60,62,66,70],t_trig|
		Mix.new((SinOsc.ar(notes.midicps*1.5)*3).tanh/6
		*
		Decay2.kr(CombC.kr(t_trig,1,2/[1,3,4,5].pyramid,8),1/10,1)/24)
		 ! 2
	};
	~x[3]={|notes=#[60,62,66,70],t_trig|
		Mix.new(LFSaw.ar(notes.midicps*2)*3).tanh/8
		*
		Decay2.kr(CombC.kr(t_trig,1,([1,3,6,7]/4).pyramid,8),1/10,1)/12
		 ! 2
	};
)



// i=INSTRUMENT().play;


i.x=INSTRUMENT(~x);

i.x.octave=5;

(
i.x.chord([
	C(0,\m),
	\r,
	C(0,\m,2),
	\r,
	C(0,\sus2,1),
	\r,
	C(1,\Mmaj7,1),
	C(1,\Mmaj7,2),
]).speed(1/2)
)

(
i.x.chord([
	C(0,\m),
	\r,
	C(0,\m,2),
	\r,
	C(0,\sus2,1),
	\r,
	C(1,\Mmaj7,1),
	C(1,\Mmaj7,2),
	C(3,\Mmaj7,),
	C(0,\m,1,[11]),
]).speed(1/2)
)
