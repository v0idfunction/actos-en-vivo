SynthDef(\windPercHarm, {|note=48, amp=0.5, out=0, att=0.45, rel=0.35, lfo1rate=3, lfo2rate=5|

	var sig;
	var lfo1 = SinOsc.kr( lfo1rate, 0 );
	var lfo2 = SinOsc.kr( lfo2rate, 1/2 );
	sig = BrownNoise.ar();

	sig = (Resonz.ar(
		sig,
		(note.midicps*([2,4,12])+lfo1.linlin(-1,1,-1,1)),
		lfo2.linlin(-1,1,0.025,0.00125))*lfo1.linlin(-1,1,30,60)
	).tanh/2;

	sig = sig * EnvGen.kr(Env.perc(att,rel),doneAction:2);

	sig = sig * amp;

	Out.ar( out, Pan2.ar( Mix.ar(sig), 0 ) )

}).store;
