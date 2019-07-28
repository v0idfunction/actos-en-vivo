
i.autoMIDI();

i.ddm = (

	k1: INSTRUMENT(i.synths.syn[0]),
	k2: INSTRUMENT(i.synths.syn[1]),
    h1: INSTRUMENT(i.synths.hihatClosed),
	s1: INSTRUMENT(i.synths.snareNeuro)

);


i.ddm.k1.seq(":1/3  1xx :1/4  1xx ").speed(1/2);

i.ddm.h1.seq("1 :1/3 1x3 :1 1x6").speed(2)

// i.ddm.k1=INSTRUMENT(i.ddm.synths.kick[0])
i.ddm.k1.seq("1   0.7").speed(1/2)

// i.ddm.s1=INSTRUMENT(i.ddm.synths.snare[0])
i.ddm.s1.fx=\delay2;
i.ddm.s1.fxSet(\delay,1/8);
i.ddm.s1.fxSet(\wet,1);
i.ddm.s1.seq("  1   0.7  0.5").speed(1/2)





~x.fadeTime=10;
~x={0}
