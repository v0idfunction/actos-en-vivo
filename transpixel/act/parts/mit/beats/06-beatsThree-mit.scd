i = INSTRUMENT().play;
i.tempo=192;
s.scope;


//beat 01 drums
i.drums = (
	kick: INSTRUMENT(i.synths.electro.kick),
	hihat: INSTRUMENT(i.synths.electro.hihat),
	clap: INSTRUMENT(i.synths.electro.clap)
);

i.drums.kick[0].seq("1xx :1/2 1xx 1xx").x(3);
i.drums.kick[1].seq("1xx :1/2 1xx :1/4 1x2  1").x(1);
i.drums.hihat.seq(" :1/4 1x4").speed(1);
i.drums.clap.seq("   1 :1/2 1x3 1");
i.drums.hihat.go(2);
i.drums.stop;
i.drums.play;


////clavpas markpass
i.drumsa = (
	kick: INSTRUMENT(i.synths.kick.kickHollow),
	//kick: INSTRUMENT(i.synths.kick.choose.postln)
	hihat: INSTRUMENT(i.synths.hihatOpen),
	clapa: INSTRUMENT(i.synths.electro.clap),
	snare: INSTRUMENT(i.synths.snareBass)
);

i.drumsa.kick.seq("1x3 :1/4 1x4 1x3 :1/4 1x5").speed(1);
i.drumsa.hihat.seq(" 1x3");
i.drumsa.clapa.seq("  1x2  1");
i.drumsa.snare.seq(":1/2  1 0.7x6").speed(1);
i.drumsa.stop;
i.drumsa.play;

i.checkick=INSTRUMENT(i.synths.kick.choose.postln);


//////locco
i.sosd = (
	kickd: INSTRUMENT(i.synths.electro.kick),
	clapn: INSTRUMENT(i.synths.clapNoise),

	);

i.sosd.kickd[0].seq("1 :1/3 1x4 1x2 1x2 1").speed(2)
i.sosd.kickd[1].seq("1 :1/6 1x4 1x2").speed(2)
i.sosd.kickd[2].seq(" :1/6 1x3 1x3").speed(2).x(2)
i.sosd.clapn.seq("  :1/6 1x3  1x5 1x2 1").speed(2)
//i.sosd.clapn[1].seq(" 1  :1/3 1x5 1x4").speed(2)
i.sosd.stop
