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
	~z = {|amp=1| WhiteNoise.ar(amp) };

	~amp = 0.85;

	~mix = ~z;

	~mix.fadeTime=0;

	~out = {
		Pan2.ar(
			Limiter.ar(
				CompanderD.ar(
					Mix.new(
						HPF.ar(~mix.ar,30)
					)
					, 0.9, 1, 0.9, 0.045, 0.3
				)*~amp
			)
			, 0
		);
	};

	// se inicializa salida principal.
	// Sólo ésta debe llevar '.play'; las demas se insertan via ~mix = ...

	~out.play;



	p.quant=4;
	~out.quant=4;



	~out.play;

	// silenciar fuente sonora ya lista para usarse:

	// ~z = { Silent.ar ! 2 };



	// cargar controlador MIDI
	"/home/mukkekunst/Musica/furenku/sets/01-morelia/midi-multidevice.scd".load;


	"".postln;
	"---------------------------".postln;
	"setup listo".postln;
	"---------------------------".postln;
	"".postln;


)
