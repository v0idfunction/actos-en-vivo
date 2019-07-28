i.ddmz=(
	dd0:INSTRUMENT(i.synths.electro.kick),
	dd1:INSTRUMENT(i.synths.electro.hihat),
	dd2:INSTRUMENT(i.synths.electro.clap),
	dd3:INSTRUMENT(i.synths.electro.snare),
);
i.ddmz.dd3.amp=1/2;

i.ddmz.dd0.seq("1").speed(1/2);
i.ddmz.dd1.seq("  1").speed(3);
i.ddmz.dd2.seq("   1").speed(4);
i.ddmz.dd3.seq("    1").speed(6);



i.ddmz=[
	\dd0,
	\dd1,
	\dd2,
	\dd3,
];


i.beat_1.clock=1/2;
i.ddmz.clock=1/3


)


(
i.beat_1.clock=1/3;
i.beat_1.fx=\delay2;
i.beat_1.amp=1;
i.beat_1.fxSet(\wet,0.9);
i.beat_1.fxSet(\delay,0.25);
i.beat_1.fxSet(\damp,0.8);


i.ddmz.fx=\reverbLPF;
i.ddmz.clock=1/2;
i.ddmz.amp=2;
i.ddmz.fxSet(\wet,0.7);
i.ddmz.fxSet(\room,0.9);
i.ddmz.fxSet(\damp,0.9);


i.ddmz.go(0);
i.beat_1.go(0);


)




(

i.ddmz.seq(\fxSet,[
	(cutoff:900, q:0.1),
	(cutoff:90, q:0.1),
	(cutoff:9000, q:0.1),
]);
i.ddmz.seq(\fxSet,[
	(cutoff:1900, q:0.01),
	(cutoff:290, q:0.1),
	(cutoff:3900, q:0.03),
]).speed(4);

i.ddmz.seq(\fxSet,[
	(cutoff:2900, q:0.2),
	(cutoff:1590, q:0.005),
	(cutoff:900, q:0.03),
]).speed(2);

i.ddmz.seq(\fxSet,[
	(cutoff:48.midicps, q:0.1),
	(cutoff:61.midicps, q:0.1),
	(cutoff:79.midicps, q:0.1),
]);
i.ddmz.seq(\fxSet,[
	(cutoff:84, q:0.01),
	(cutoff:85, q:0.1),
	(cutoff:97, q:0.03),
]).speed(4);

i.ddmz.seq(\fxSet,[
	(cutoff:96, q:0.2),
	(cutoff:48, q:0.005),
	(cutoff:54, q:0.03),
]).speed(2);
)



(

	i.ddmz.clock=1/2;
	i.ddmz.fx=\reverb;
	i.ddmz.fxSet(\wet,0.2);
	i.ddmz.fxSet(\room,0.6);
	i.ddmz.fxSet(\damp,0.6);

)

(
	i.beat_1.clock=2;
	i.beat_1.fx=nil;

)

(
i.ddmz.go(0);
i.beat_1.go(0);

)


(
i.dd1[0].seq("  1").speed(3).x(8);
i.dd1[1].seq("  1").speed(6);
i.dd1[2].seq("  1").speed(9);
i.dd1[3].seq("  1").speed(18).x(3);


i.dd0[0].seq("1").speed(2).x(16);
i.dd0[1].seq("1").speed(4);
i.dd0[2].seq("1").speed(8);
i.dd0[3].seq("1").speed(16);

)







i.ddmz.fx=\distortion;

i.ddmz.clock=1;


(
	i.ddmz.clock=2;
	i.ddmz.fxSet(\gain,3);
)

i.ddmz.fxSet(\gain,13);
i.ddmz.fxSet(\gain,33);
i.ddmz.fxSet(\gain,123);

i.ddmz.fxSet(\gain,1233);

i.ddmz.fxSet(\gain,12333);


(
	i.ddmz.fxSet(\gain,212333);
	i.ddmz.clock=1/4;
	i.beat_1.stop;
)

~mix={0};

i.ddmz.clock=1/2;

i.ddmz.clock=1;
i.ddmz.clock=4;
i.ddmz.clock=8;
i.ddmz.clock=16;

(
i.ddmz.rm(\fxSet,0);
i.ddmz.rm(\fxSet,1);
i.ddmz.rm(\fxSet,2);
i.ddmz.rm(\fxSet,3);
i.ddmz.rm(\fxSet,4);
i.ddmz.rm(\fxSet,5);
i.ddmz.amp=1/4;
i.ddmz.clock=4;
)

// dejar un rato
(
i.ddmz.fx=\distortion;
i.ddmz.fxSet(\cutoff,12000);
i.ddmz.clock=8;
i.ddmz.amp=1/4;
)

(
i.ddmz.fx=nil;
i.ddmz.amp=1;
)

i.ddmz.clock=16;
i.ddmz.clock=32;
i.ddmz.clock=36;
i.ddmz.clock=30;
i.ddmz.clock=24;
i.ddmz.clock=25;
i.ddmz.clock=24;
i.ddmz.clock=12;
i.ddmz.clock=13;
i.ddmz.clock=11;
i.ddmz.clock=9;
i.ddmz.clock=4;

i.ddmz.clock=3;
i.ddmz.clock=4;




(
	i.ddmz=\distortion
	i.ddmz.amp=1.5;
	i.ddmz.fxSet(\gain,21.2);
	i.ddmz.clock=2;
)
