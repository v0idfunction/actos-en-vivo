s.boot;

p=ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~out = { Limiter.ar( ~mix.ar ) };
~out.play;
~mix = ~z1 + ~z2 + ~z4;
~mix =  ~z4;
~mix.fadeTime=2;
~mix.fadeTime=0;

~z1={Pulse.ar(500,0.5,0.5) ! 2};

~zkr={LFPulse.kr(~tempo.kr,0,0.5,2,1) ! 2};

~z2={RLPF.ar(PinkNoise.ar(0.5), 600*~zkr.kr, 0.1) ! 2};
~z2={RLPF.ar(PinkNoise.ar(0.5), 80*~zkr.kr, 0.1) ! 2};

~z3={SinOsc.ar(~zkr.kr*300,0.5)};

~z4={LFNoise0.ar(300, 0.5*~zkr.kr) ! 2};

~mix.clear(4);
