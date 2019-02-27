
s.boot;

p=ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~out = { Limiter.ar( ~mix.ar ) };
~out.play;
~mix = ~tin + ~tonhel ;
~mix = ~tin + ~tonhel + ~ladans ;
~mix =  ~tin;
~mix.fadeTime=2;
~mix.fadeTime=0;

~tin={LFSaw.ar(2400,0.5,1) * Decay2.kr(Dust2.kr(1/3,1,0), 0.1, 0.5) ! 2};
~tin={LFSaw.ar(1400,0.5,1) * Decay2.kr(Dust2.kr(1/8,1,0), 0.1, 0.5) ! 2};
~tonhel={SinOsc.ar(440,0.5,1,0.1) * LFGauss.ar(0.1, 0.12) ! 2};
~tonhel={SinOsc.ar(150,0.5,1,0.1) * LFGauss.ar(0.1, 0.12) ! 2};
// {SinOsc.ar(Rand(300, 1500)) * Line.kr(0.3, 0, 0.5) ! 2}.play;
~ladans={SinOsc.ar(LFNoise0.kr(200,600, 900)) * Decay2.kr(Impulse.kr(4)+Dust.kr(2))/2 ! 2};
~ladans={SinOsc.ar(LFNoise1.kr(200,600, 900))/2 * Decay2.kr(Impulse.kr(8)+Dust.kr(4))/2 ! 2};

~mix.clear(2)



//{ SinOsc.ar(SinOsc.ar( MouseX.kr(1,40),0).linlin(-1,1,100,600)) ! 2 }.play
