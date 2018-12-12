(
s.options.memSize=2048*1024;
s.options.maxNodes=128*1024;
s.boot;
)
(

	s.scope;



	TempoClock.default.tempo=166/120;
	ProxySpace.clearAll;
	p = ProxySpace.push(s);
	p.makeTempoClock(166/120,'instrument',TempoClock.default);


		i=INSTRUMENT();

		  p.quant = 4;

		  ~out=NodeProxy.audio(s,2);
		  ~z=NodeProxy(s,\audio,2);

		  ~mix=NodeProxy.audio(s,2);

		  ~z= { Silent.ar ! 2 };
		  ~z.fadeTime = 5;
		  ~z = {|amp=0.5| WhiteNoise.ar(amp) };

		  ~amp = 0.25;
		  ~mix = ~z;

		  ~mix.fadeTime=8;

		  ~out = {
		    Pan2.ar(Limiter.ar(CompanderD.ar(Mix.new(HPF.ar(~mix.ar,30)), 0.9, 1, 0.9, 0.045,0.3 )*~amp),0);
		  };


		  ~out.play;

		  ("~out"++~out).postln;



		  p.quant=4;
		  ~out.quant=4;
		  // ~x.quant_(4);




		  // p.makeTempoClock( bpm / 60 );



		  ~out.play;
		  // [~mix,~x].postln;ix



		  // ["play",~z,~out,p].postln;


		  "INSTRUMENT v.0.1".postln;


		  "/home/mukkekunst/Musica/furenku/sets/01-morelia/midi-multidevice.scd".load;

		  // ~z = { Silent.ar ! 2 };


)
