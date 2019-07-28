(
	s.boot;

s.doWhenBooted({


i=INSTRUMENT().play;


i.piano=INSTRUMENT(i.synths.piano[1]);
//


i.piano[0].note("0 3").speed(2).x(2);
i.piano[1].note("7 :1/2  12xx ").speed(2).x(1);
i.piano[2].note("7 :1/2  C3 0 ").speed(2).x(1);
i.simpleKit=(
	kick0: INSTRUMENT(i.synths.electro.kick),
	kick: INSTRUMENT(i.synths.kick[3]),
	hihat: INSTRUMENT(i.synths.hihat[2]),
	clap: INSTRUMENT(i.synths.clap[2]),
);

i.piano.amp=2;
i.piano.octave=3;


i.simpleKit.kick0.seq("1     1  ").speed(2);
i.simpleKit.kick0.amp=1/4;
i.simpleKit.kick.seq("1xx  1xx  1xx");
i.simpleKit.hihat.seq("1xxxx   1xxxx   1xxxx").speed(4);
i.simpleKit.hihat.amp=1/4;
i.simpleKit.clap[0].seq(" 1").x(3);
i.simpleKit.clap[1].seq(":1/2  1.2x2 ").x(1);
i.simpleKit.clock=2;

// i.simpleKit.stop
// i.simpleKit.go(0)
// i.simpleKit.play
})

)
