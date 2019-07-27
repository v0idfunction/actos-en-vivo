(
	s.options.memSize=2048*1024;
	s.options.maxNodes=128*1024;
	s.boot;
)

i=INSTRUMENT().play;


i.tempo=192;

(

i.electro=(
	kick: INSTRUMENT(i.synths.electro.kick),
	hihat: INSTRUMENT(i.synths.electro.hihat),
	hihatB: INSTRUMENT(i.synths.hihat[3]),
	clap: INSTRUMENT(i.synths.electro.clap),
);


i.electro.kick.seq("1").speed(2);

i.electro.hihat[0].seq("1xx :2 1").speed(4).x(16);
i.electro.hihatB[0].seq("1 :1/2 1xx").speed(4).x(32);

i.electro.hihat[1].seq(":1/4  1  1 :1 1").speed(2).x(8);
i.electro.hihatB[1].seq("1 :1/4 1xx  1xx  :1/2 1  1").speed(2).x(2);

i.electro.hihatB.amp=7/8;


i.electro.clap[0].seq(" 1").speed(2).x(7);
i.electro.clap[1].seq(" 1xx ").speed(8).x(2);

i.electro.clock=2/3;

))


i.electro.go(0)







i.electro.go(1321);
i.electro.go(0);


(

i.electro=(
	// kick: INSTRUMENT(i.synths.electro.kick),
	// hihat: INSTRUMENT(i.synths.electro.hihat),
	hihatB: INSTRUMENT(i.synths.hihat[3]),
	clap: INSTRUMENT(i.synths.electro.clap),
	bass: INSTRUMENT(i.synths.bass.trance[3])
);

i.electro.clock=2/3;

i.electro.bass.note(":1/8 1x8 :1   ");
i.electro.bass.octave=3;
i.electro.bass.amp=2.5;

)






(
i.electro=(
	kick: INSTRUMENT(i.synths.electro.kick),
	hihat: INSTRUMENT(i.synths.electro.hihat),
	hihatB: INSTRUMENT(i.synths.hihat[3]),
	clap: INSTRUMENT(i.synths.electro.clap),
	bass: INSTRUMENT(i.synths.bass.trance[2])
);

i.electro.go(0);

i.electro.bass.octave=4;

i.electro.bass.amp=1.5;


i.electro.bass.fx="gateDistort.crunch";
)

i.electro.bass.fx="gateDistort.hardcore";
i.electro.bass.amp=1/2;


i.electro.go(33)
i.electro.stop


(
i.leads=(
	b0: INSTRUMENT(i.synths.pad[2]),
	b1: INSTRUMENT(i.synths.trance[3])
);

i.leads.clock=2/3;

i.leads.b0.mode=\mono;
i.leads.b1.mode=\mono;

i.leads.b0[0].note(":1/3 7 3 0 :2   :1/4 G3 0 2  :2   ");
i.leads.b0[1].note(":1/4 G3 0 2  :2  :1/4 G3 0 3  :2  :1/4 G3 0 5  :1/3 7 3 0");

i.leads.b1[0].note("   :1/3 7 3 0 :2  ");
i.leads.b1[1].note("  :1/3 12 3 0 :2    :1/4 G3 0 2  :2   ");
i.leads.b1[2].note("  :1/4 G3 0 3  :2   :1/4 G3 0 5  :2");
i.leads.b1[3].note("  :1/4 G3 0 14  :2  :1/4 G3 0 3  :2  :1/4 G3 0 5  :1/3 7 3 0");

i.leads.b0.set(\rel,0.01);
i.leads.b0.set(\att,3);

i.leads.b1.set(\rel,1/2);
i.leads.b1.set(\att,1);
i.leads.b1.octave=3;
i.leads.b1.amp=1;
i.leads.b1.fx="gateDistort.crunch";

i.leads.b0.amp=2;
i.leads.b1.amp=1;
)


(

i.leads=(
	// b0: INSTRUMENT(i.synths.pad[2]),
	// b1: INSTRUMENT(i.synths.trance[3]),
	f0: INSTRUMENT(i.synths.noise[0]),
	f1: INSTRUMENT(i.synths.trance[1]),
)
)



i.leads.f1.set(\rel,2/3);

i.every(32,{


	i.leads.f0.octave=5+3.rand;
	i.leads.f1.octave=5+3.rand;

	i.leads.f0[0].note("Bb D5  A Eb5  G  Eb C  F  G5 Bb5 C");
	i.leads.f1[0].note("Bb D5  A Eb5  G  Eb C  F  G5 Bb5 C").random.maybe(0.8).speed(2);

	i.leads.f0[1].note("Db G5  D Eb5  G  Bb Eb  A  G5 Bb5 D").random;
	i.leads.f1[1].note("Bb D5  A Bb5  Bb  Eb G  F  F5 Bb5 C").random.mirror.maybe(7/8).speed(4);

});


i.leads.go(0)
i.leads.clock=(2/3)/2
i.leads.f1.clock=(2/3)*2
i.leads.f1.fx=\shineDestroy
i.leads.f1.amp=1/2



i.electro.stop



i.electro=(
	kick1: INSTRUMENT(i.synths.kick[0]),
	kick2: INSTRUMENT(i.synths.kick[1]),
	kick3: INSTRUMENT(i.synths.kick[4]),
	kick4: INSTRUMENT(i.synths.kick[5]),
	kick5: INSTRUMENT(i.synths.kick[6]),
	kick6: INSTRUMENT(i.synths.kick[3]),
);

i.electro.kick1.seq("1").speed(4)
i.electro.kick2.seq("1xx :2 1").speed(4)
i.electro.kick3.seq("1").speed(4)
i.electro.kick4.seq("1").speed(1/4)
i.electro.kick5.seq("1x2 ").speed(1/4)
i.electro.kick6.seq("1x3  1x4  1x2   1  ").speed(1/4)

i.electro.kick6.fx=\reverb;
i.electro.kick6.fxSet(\wet,1);
i.electro.kick6.fxSet(\room,0.9);
i.electro.kick6.fxSet(\damp,0.9);
i.electro.kick.clock=1/6;
i.electro.kick.amp=3/4

i.electro.clock=2/3;


i.electro.kick4[1].seq("1x3  1x2  1x4").speed(4);
i.electro.kick5[1].seq("1x3  1x2").speed(2);

i.electro.kick4[3].seq("1x3  1x2  1x3  1x5").speed(8);


i.electro.kick6.seq(\synthdef,[
	i.synths.kick[0],
	i.synths.kick[3],
	i.synths.kick[9],
	i.synths.kick[12]
])



i.btk_dnb=(
	kick: INSTRUMENT(i.synths.electro.kick),
	hihatA: INSTRUMENT(i.synths.electro.hihat),
	hihatB: INSTRUMENT(i.synths.hihat[3]),
	hihatC: INSTRUMENT(i.synths.hihat[2]),
	hihatD: INSTRUMENT(i.synths.hihat[1]),
	snare: INSTRUMENT(i.synths.snareNeuro),
)
i.btk_dnb.clock=1/3
i.btk_dnb.play
i.btk_dnb.stop
i.electro.stop





(
	i.btk_dnb.kick.seq("1     1  ").speed(4);
	i.btk_dnb.hihatA.seq(" 1xx  :4 1x2 :2 1xx  1xx  1xx :1 1xxx ").speed(1/2);
	i.btk_dnb.hihatB[0].seq(" 1xx :2 1").speed(4);
	i.btk_dnb.hihatB[1].seq(" 1xx :2 1").speed(2);
	i.btk_dnb.hihatC.seq("  1xx  1xxx").speed(4);
	i.btk_dnb.hihatD[0].seq("  1x  ").speed(4);
	i.btk_dnb.hihatD[1].seq(" 1x ").speed(4);
	i.btk_dnb.hihatD[2].seq("   1x ").speed(4);
	i.btk_dnb.hihatD.amp=3/4;
	i.btk_dnb.snare[0].seq(" 1").speed(2).x(15);
	i.btk_dnb.snare[1].seq("1xx  1xx  1xx").speed(4).x(1);
	i.btk_dnb.snare[2].seq(" 1").speed(2).x(15);
	i.btk_dnb.snare[3].seq(" 1.2xxx  0.8xx  1xx  1x5").mirror2.speed(8).x(1);
	i.btk_dnb.clock=1;
)



i.btk_dnb.go(0)
i.btk_dnb.stop
i.btk_dnb.play



(
	i.leads.play;
i.electro.stop;
i.every(32,nil);
i.leads.octave=4;
i.leads.amp=2/3;
i.leads.f0=INSTRUMENT(i.synths.trance[1]);
i.leads.fx="gateDistort.crunch";
)
