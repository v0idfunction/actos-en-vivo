s.boot;

MandelHub.join("furenku",57122,{m=MandelHub.instance});
m.tools.metro
m.tools.stopMetro
m.clear

m.gui


m.takeLead

i.clock=m.clock;










p=ProxySpace.push(s);
~x.play;
~x.quant=1;
p.makeTempoClock(TempoClock.default.tempo)
~x={Pulse.ar(~tempo.kr/2)};
~x.stop

Tdef(\test, {
	inf.do{
		().play;
		2.wait;
	}
	});

Tdef(\test).quant=4;
Tdef(\test).play;
Tdef(\test).stop;


i=INSTRUMENT().play;

i.kick=INSTRUMENT(\kickElectro);
i.sn=INSTRUMENT(\snareNeuro);
i.hh=INSTRUMENT(i.synths.hihat[1]);

s.scope
i.kick.seq("1");
i.kick.go(0);
i.kick.stop;




// trigger synths with different amp values:
i.kick.seq("1 0.1 1 1x3 1 ").speed(1);
i.kick.amp=1/2;

i.tempo=90;

i.sn.seq("1  1xx 1");
i.hh.seq(" 1 1x4").speed(2);
i.go(0)
// this also works
i.kick.seq([1, 0.1, 0.75]);

i.kick.stop;
i.hh.play;
i.sn.play;

i.kick.stop;
i.hh.stop;
i.sn.stop;
