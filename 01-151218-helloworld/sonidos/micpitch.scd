s.boot;
s.meter;

(
SynthDef(\pit, {|out=0, in=5, decay=0.5|
	var sig, vel, delay;
	sig=SoundIn.ar(0);
	vel=PitchShift.ar(sig, 0.5, 1, 0.6, 0.2, 1, 1);
	delay = CombL.ar(sig,0.3, decay);
	Out.ar(out, Pan2.ar(vel+delay));
}).store;
)
m=Synth(\pit);
m.free;
