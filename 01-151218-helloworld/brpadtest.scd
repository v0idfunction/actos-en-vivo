(

	s.options.memSize=2048*1024;
	s.options.maxNodes=128*1024;
	s.boot;
	s.scope;

)

(

	i=INSTRUMENT();

	TempoClock.default.tempo=195/120;

	i[\pad1]=SynthPlayer(\pad1);
	i[\pad1].amp=1;

	i[\pad1].seq(\note,"0 7 10  14",[\speed,1/4]);
	i[\pad1].set(\decay,6);
	i[\pad1].set(\rel,4);
	i[\pad1][1].seq(\note,"8 5 2",[\speed,1/2,\repeat,2]);



	i[\kick]=SynthPlayer(\kickSyn1);
	i[\kick].seq(":0.25  0.8xx ");

	i[\kick2]=SynthPlayer(\kickElectro);
	i[\kick2].seq("1");

	i[\snare]=SynthPlayer(\snareNeuro);
	i[\snare].seq(" 1");
	i[\snare].amp=0.5;

	i[\hihat]=SynthPlayer(\hihatClosed);
	i[\hihat][0].seq(":0.25 1xx ",[\repeat,8]);
	i[\hihat][1].seq(":0.125 1xx ");

	i[\drums]=[
		\kick,
		\kick2,
		\snare,
		\hihat,
	]

	i[\drums].fx=\reverb
	i[\drums].amp=0.3


)
