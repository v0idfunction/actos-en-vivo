
s.boot;
s.scope;

p=ProxySpace.push(s)
//p.quant=4;
//TempoClock.default.tempo=166/120;
//p.makeTempoClock(166/120);
p.quant=4;

t=TempoClock.default;
p.makeTempoClock(t);

~out = { Limiter.ar( ~mix.ar ) };
~out.play;
~mix = ~arm1 + ~arm2 + ~arm3 ;
~mix = ~arm1 * 1/8 + ~arm2 * 0.15 + ~arm3 * 1/4 ;
~mix = ~arm1 * 1 + ~arm2 * 0 + ~arm3 * 1 ;
~mix =  ~arm1;
~mix.fadeTime=1;
~mix.fadeTime=0;
~freq={ LFNoise0.ar(1000, 0.25)};
~freq={ SinOsc.ar(LFNoise0.ar(4, 400, 450),0, 0.2)};
~arm1={Mix((Pulse.ar(4)*SinOsc.ar(200*[60,62,64,66,68,70].midicps,0,0.1))) ! 2};
~arm2={Mix((Pulse.ar(4)*SinOsc.ar(400*[0,2,4,5,7,9,11,12].midiratio,0,0.1))) ! 2};
~arm3={Mix((Pulse.ar(4)*SinOsc.ar(300*[0,4,7,11,14,17,21].midiratio,0,0.1))) ! 2};

~mix.clear(2);
