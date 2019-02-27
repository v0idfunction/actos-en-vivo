Server.killAll;

s.boot;
s.scope;

~z = { (SinOsc.ar([58,61])*3).tanh / 2 ! 2 };

p=ProxySpace.push(s);
p.makeTempoClock(TempoClock.default.tempo);
p.quant=4;

~out={Limiter.ar(~mix.ar)};
~out.play;
~mix.fadeTime=2;
~mix= ~z ;
~mix= ~kla1 + ~dec +~z ;
~mix= ~kla2 + ~kla1 + ~dec +~z ;
~mix= ~dec + ~z ;

~kla1={ Klank.ar(`[[500, 1000, 1200, 1000], nil, [1, 2, 1, 2]], WhiteNoise.ar(0.005) ) ! 2 };

~kla2={Klank.ar(`[Array.rand(120, 800.0, 4000.0),nil,
Array.rand(120, 0.1, 20)], Decay.ar(Impulse.ar(5), 0.003, ClipNoise.ar(0.01))).tanh/2 ! 2 };

~dec={FreeVerb.ar (RLPF.ar(Impulse.ar(4) * 20, [850, 1950], 0.2)* FSinOsc.ar(600), 0.5, 0.5) ! 2};

~mix.clear(2);


//~dec={FreeVerb.ar (Decay2.ar(Impulse.ar(2), 0.01, 0.001 ) * FSinOsc.ar(600), 0.5,0.5) ! 2}.play;
