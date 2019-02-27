s.boot;
s.scope;

p=ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~out = { Limiter.ar( ~mix.ar ) };
~out.play;
~mix.fadeTime=2;
~mix.fadeTime=0;

~mix = ~pul + ~sin + ~pul2 ;
~pul={Pulse.ar(400, 0.5, Array.rand2(5, 30), 0.2 ).tanh /8 ! 2};
~pul2={Pulse.ar(400*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};
~sin={SinOsc.ar(300*Array.rand(4, 0.2, 4) ).tanh/3 ! 2};

~mix =  ~sin;

~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(~tempo.kr/4, 200,200),1) )/3).tanh ! 2 };
~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(~tempo.kr*8, 200,200),0.01) )/3).tanh ! 2 };


~mix =  ~crak;

~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 400,800),0,0.1) +
	Decay2.ar (Impulse.ar(8), 0.05, 0.01) ! 2 };


~mix.clear(2)

//~sin2={SinOsc.ar(3000*exprand(300,1600) ).tanh ! 2};
