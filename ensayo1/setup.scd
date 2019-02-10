(
s.options.memSize=2048*1024;
s.options.maxNodes=128*1024;
s.boot;
s.doWhenBooted({

	// s.scope;
	// s.meter;
	// s.freqscope;
	s.volume=(-12);

	(thisProcess.nowExecutingPath.dirname ++ "/load-everything.scd").load;

});
)
