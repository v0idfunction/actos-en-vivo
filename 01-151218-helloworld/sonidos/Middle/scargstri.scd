
~z = { (SinOsc.ar([58,61])*3).tanh / 2 ! 2 };

s.boot;

s.scope;

(
// ProxySpace.clearAll;
p = ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);


~out={ Limiter.ar (~mix.ar) };
~out.play;

~mix= ~stri + ~scar ;
~mix= ~stri;
~mix.fadeTime=1;

//~beat = {WhiteNoise.ar * Decay2.kr( Impulse.kr( ~tempo.kr*5, 0.15 ) ! 2 )};

~geom={3.10*LFPulse.kr(~tempo.kr).linlin(0,1,1,3)};
//~geom={3.50*SinOsc.kr(~tempo.kr/8).linlin(-1,1,1,5)};
~geom={4.00*LFSaw.kr(~tempo.kr*2).linlin(-1,1,1,2)};
~freq={8.40*XLine.kr(500,2500,100)};

~scar={LFSaw.ar(500*Array.geom(5,0.1,~geom.kr).mirror ,0,0.5) ! 2};
//~scar={LFSaw.ar(500*Array.geom(5,0.1,1.16).mirror ,0,0.5) ! 2};
~stri={LFTri.ar(1500*~tempo.kr/16, 0, 0.5)  ! 2};
//~scar={LFSaw.ar(~tempo.kr*~freq*Array.geom(9,0.1,~geom.kr) ,0,0.5) ! 2};

~mix.clear(5);


)
[1,2,3].mirror
Array.geom(5,0.1,1.16).mirror.size
//
//
// Tdef(\playtest,{
// 	inf.do {
// 		Synth(\test);
// 		1.wait;
// 	}
// }).play

)

// // quitar ~tempo.kr para ver cómo se desfasa
// ~beat = {
// 	WhiteNoise.ar * Decay2.kr( Impulse.kr( 1)/8 ! 2 )
// }
