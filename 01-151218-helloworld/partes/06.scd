// void function
// hello world
// 6 / 12



~mix.fadeTime=2;
~mix = ~noize;


~zkr={LFPulse.kr(~tempo.kr,0,0.5,2,1) ! 2};

~noize[0]={|freq=440|
	(Resonz.ar(PinkNoise.ar*~zkr.kr,(freq),0.05)*10).tanh ! 2};
~noize[1]={|freq=440|
	RLPF.ar(PinkNoise.ar(0.5), (freq*2)*~zkr.kr, 0.1)/2 ! 2};
~noize[2]={|freq=440|
	RLPF.ar(PinkNoise.ar(0.5), 80*~zkr.kr, 0.1)/2 ! 2};
~noize[1]={|freq=440|
	RLPF.ar(PinkNoise.ar(0.5), (freq*2)*~zkr.kr, 0.03)/2 ! 2};
~noize[3]={|freq=440|
	LFNoise0.ar(300, 0.5*~zkr.kr)/9 ! 2};


~noize={|freq=440|	(Resonz.ar(PinkNoise.ar*~zkr.kr,(freq),0.05)*10).tanh ! 2};

i[\noize].octave=4;
~noize={|freq=440|	(Resonz.ar(PinkNoise.ar*~zkr.kr,(freq)/[1,2,8],0.025)*130).tanh ! 2};
~noize={|freq=440|	(Resonz.ar(PinkNoise.ar*~zkr.kr,(freq)/[1,2,8],0.025)*330).tanh ! 2};

~zkr={LFPulse.kr(~tempo.kr/[2,3],0,0.5,LFSaw.ar(~tempo.kr/4).linlin(-1,1,0.125,0.25),0.125) ! 1};
~zkr={LFPulse.kr(~tempo.kr/4,[0,3]/8,0.25,2,1) ! 1};



i[\noize2]=Proxy(~noize)
i[\noize2][0].seq(\note,"0 3 2");
i[\noize2][1].seq(\note,"0 3 1 5 8");
i[\noize2].octave=6
i[\noize2].speed=1/4
