
~fktr={1};

(
	~z = {
	(

		(
			[
			CaosKick.robot(
				t:~tempo.kr,rel:8.reciprocal,lowcutfreq:SinOsc.kr(3,0,6666,6733)
			),
			SinOsc.ar([40,60],0,SinOsc.ar(~tempo.kr/32,0,4,4.3))
		]

		sqrdif: CaosKick.robot(t:~tempo.kr*~fktr.kr,rel:SinOsc.kr(~tempo.kr*[2,3],0,3,3.1))

		)

		*LFPulse.kr(~tempo.kr/[4,12] ,0.1,[3,1]/10).linlin(0,1,2.3,[64,314])

	).tanh / 1.5 ! 2

};

)

// incrementar hasta el 128:
~fktr={1};
~fktr={2};
~fktr={3};
~fktr={4};
~fktr={8};
~fktr={16};
~fktr={32};
~fktr={64};
~fktr={128};
~fktr={1024};



~fktr={
	// Stepper:
};

~fktr={
	Stepper.kr(Impulse.kr(~tempo.kr/4),0,1,20,4)
};
