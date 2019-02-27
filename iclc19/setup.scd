(
s.options.memSize=2048*1024;
s.options.maxNodes=128*1024;
s.boot;
s.doWhenBooted({

	s.scope;
	s.meter;
	s.freqscope;
	s.volume=(0);

});
)
(





	TempoClock.default.tempo=120/120;
	// ProxySpace.clearAll;
	p = ProxySpace.push(s);
	p.makeTempoClock(166/120,'instrument',TempoClock.default);


		i=INSTRUMENT();

		  p.quant = 4;

		  ~out.quant=4;

		  // ~out=NodeProxy.audio(s,2);
		  // ~z=NodeProxy(s,\audio,2);
		  //
		  // ~mix=NodeProxy.audio(s,2);


		  // ~z= { Silent.ar ! 2 };
		  ~z.fadeTime = 5;
		  ~z = {|amp=0.5| WhiteNoise.ar(amp) ! 2  };

		  ~amp = {1/4};
		  ~mix = ~z;

		  ~out = {
			  Pan2.ar(Limiter.ar(CompanderD.ar(Mix.new(HPF.ar(
				  ~mix.ar
			  ,30)), 0.9, 1, 0.9, 0.045,0.3 )*~amp.kr),0);
		  };
		  ~mix.fadeTime=8;


		  ~out.play;


		  (thisProcess.nowExecutingPath.dirname ++ "/midi/midi-setup.scd").load;


)
