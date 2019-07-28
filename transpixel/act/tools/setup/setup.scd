if( e['showScope'] ) {
	s.scope;
};

if( e['showMeter'] ) {
	s.meter;
};

if( e['showFreqscope'] ) {
	s.freqscope;
};


"Loading...".postln;

(thisProcess.nowExecutingPath.dirname ++ "/load-everything.scd").load;
