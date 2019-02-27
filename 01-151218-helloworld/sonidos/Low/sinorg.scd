
s.boot;
s.scope;

(
// ProxySpace.clearAll;
p = ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~out= {Limiter.ar (~mix.ar)};
~mix= ~fsin + ~p;
~mix.fadeTime=2;
~out.play;

//~freq={500*XLine.kr(50,800,100)};
~p={ Decay2.kr( Impulse.kr(10), 0.01, 0.05) ! 2};
//~fsin={FSinOsc.ar([300,1200]).linlin(0,1,1,5)};
~fsin={FSinOsc.ar([62,65,68].midicps).linlin(0,1,1,5)};

//~linekr={Line.ar(-0.5,0.5,10)*rrand(50,500)};

~out.clear(3);

)
