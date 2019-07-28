SynthDef(\woodPerc, {|note=48, amp=1, out=0, att=0.01, rel=0.25, decay=1, lfo1rate=3, lfo2rate=5|

	var sig;
	var lfo1 = SinOsc.kr( lfo1rate, 0 );
	var lfo2 = SinOsc.kr( lfo2rate, 1/2 );

	sig = PinkNoise.ar();

	sig = (Resonz.ar(
		sig,
		Array.exprand(7,90,2440)*[1.3,3]+lfo1.linlin(-1,1,-1,1),
		lfo2.linlin(-1,1,1/4,1/9))*lfo1.linlin(-1,1,1.3,6)
	)*[0.85,1,0.6].tanh;

	sig = sig * EnvGen.kr(Env.perc(att,rel),doneAction:2);

	sig = sig * amp;

	Out.ar( out, Pan2.ar( Mix.ar(sig), 0 ) )

}).store;
