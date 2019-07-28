SynthDef(\windPercDis, {|note=48, amp=0.5, out=0, att=1.6, rel=0.01, lfo1rate=3, lfo2rate=0.3|

	var sig;
	var lfo1 = SinOsc.kr( lfo1rate, 0 );
	var lfo2 = SinOsc.kr( lfo2rate, 1/2 );
	var filter1, filter2;

	sig = BrownNoise.ar();

	filter1 = (Resonz.ar(
		sig,
		note.midicps,
		lfo2.linlin(-1,1,0.025,0.0025))*lfo1.linlin(-1,1,3,60)
	).tanh;

	filter2 = MoogFF.ar(sig,note.midicps*4,3.97);

	sig = filter1 + filter2;

	sig = sig * EnvGen.kr(Env.perc(att,rel),doneAction:2);

	sig = sig * amp;

	Out.ar( out, Pan2.ar( Mix.ar(sig), 0 ) )

}).store;
