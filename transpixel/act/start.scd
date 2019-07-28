(
	// First, boot SC and establish some variables

	e=Environment[

		'tempo' -> 192,

		'useMidi' -> true,

		'showScope' -> true,
		'showMeter' -> true,
		'showFreqscope' -> true,

		'readyMessage' -> 'I N S T R U M E N T: ready'

	];
	
	m=MandelHub.start("furenku");

	s.options.memSize=2048*1024;
	s.options.maxNodes=128*1024;

	s.boot;

	s.volume=(-12);

)

(thisProcess.nowExecutingPath.dirname ++ "/tools/setup/setup.scd").load;
