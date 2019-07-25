i = INSTRUMENT().play;


(
i.drums = (
	k1: INSTRUMENT(i.synths.electro.kick),
	// k2: INSTRUMENT(i.synths.kick[6]),
	h1: INSTRUMENT(i.synths.electro.hihat),
	h2: INSTRUMENT(i.synths.hihat[0]),
	s1: INSTRUMENT(i.synths.electro.snare),
	// hihat: INSTRUMENT(i.synths.electro.hihat),
	// clap: INSTRUMENT(i.synths.electro.clap)
);
)


(
	i.bass= INSTRUMENT(i.synths.trance[2]);
i.bass.amp=2;
i.bass.octave=4;
i.bass.set(\rel, 2);
)


i.bass[0].note(" 0 :1/2 1x2").speed(1).x(3);
i.bass[1].note(" 0 :1/2 3 1").speed(1).x(1);
i.bass[2].note(" 0 :1/2 1x2").speed(1).x(3);
i.bass[3].note(" 0 :1/2 3 Bb3").speed(1).x(1);

i.bass[4].note(" 0 :1/2 1 G3 3 5xxx :1 0 Bb3 7").speed(1).x(4);



i.drums.k1[0].seq(" 1 :1/2 1x2").speed(1).x(3);
i.drums.k1[1].seq(" 1 :1/2 1x2").speed(2).x(2);

i.drums.h1[0].seq("1xx :2 1  1").speed(8).x(9);
i.drums.h1[1].seq("1xx :2 1 ").speed(3).x(2);

i.drums.h2[0].seq(" 1xx  :2  1").speed(8).x(9);
i.drums.h2[1].seq("1xx  :1/2  1x4 1").speed(8).x(3);

i.drums.h2.amp = 0.8;
i.drums.h2.set(\rel, 0.5);


i.drums.s1[0].seq(" 1").speed(2).x(7);
i.drums.s1[1].seq("1x3  1xx :2 ").speed(8).x(1);



(
	i.bass.stop;
	i.drums.clock=1/4;
	i.drums.fx=\delay2;
)

(
i.every(8,{

	i.drums.fxSet(\delay,1/[2, 4, 6, 8].choose);
	i.drums.fxSet(\lag,1/[1/2, 1, 2, 4, 6, 8].choose);

	i.drums.clock=1/[1/2, 1, 2, 4, 6, 8].choose;

});
)




i.drums.clock=12;




i.drums.clock=1/16;

i.drums.stop;

(
	i.drums.play;
	i.bass.play;
	i.drums.clock=1;
	i.drums.fx=nil;

	i.every(8,nil);

)



(
Tdef(\break,{
	1.do{

		i.drums.clock=1/16;

		8.wait;

		i.drums.stop;
		1/2.wait;
		i.drums.play;
		i.bass.play;
		i.drums.clock=1;
		i.drums.fx=nil;

		i.every(8,nil);

	}
}).play;
)






i.pads=(
	p0: INSTRUMENT(i.synths.pad.choose),
	p1: INSTRUMENT(i.synths.pad.choose),
	p2: INSTRUMENT(i.synths.pad.choose),
	p3: INSTRUMENT(i.synths.pad.choose),
);

// Scale.hungarianMinor
i.pads.p0.note( "C  G   Bb :0.5 G3   Db" ).random.speed(1/4).maybe.pyramid;
i.pads.p1.note( "C  G   Bb :0.5 G3   Db" ).random.speed(1/4).maybe.pyramid;
i.pads.p2.note( "C  G   Bb :0.5 G3   Db" ).random.speed(1/4).maybe.pyramid;
i.pads.p3.note( "C  G   Bb :0.5 G3   Db" ).random.speed(1/4).maybe.pyramid;


i.pads.p0.octave=5+0;
i.pads.p1.octave=5+1;
i.pads.p2.octave=5+2;
i.pads.p3.octave=5+3;



i.drums.stop

i.bass.fx=\delay2;


i.bass.stop;
i.pads.stop;

i.drums.play;
i.drums.fx="gateDistort.crunch";


i.bass.play;
i.pads.play;
