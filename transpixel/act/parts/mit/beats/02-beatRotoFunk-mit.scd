//beat roto funk mit

i.beatrotofunk = (

	kick: INSTRUMENT(i.synths.electro.kick),
	hihat: INSTRUMENT(i.synths.electro.hihat),
	clap: INSTRUMENT(i.synths.clap[1]),
	snare: INSTRUMENT(i.synths.snareNeuro),
	snareBass: INSTRUMENT(i.synths.snareBass)

);

  i.beatrotofunk.kick[0].seq(" 1x3").speed(4).x(14);
  i.beatrotofunk.kick[1].seq(" 1x2  1x2").speed(3).x(2);

  i.beatrotofunk.hihat[0].seq(" 1 0.7 ").speed(4).x(16);

  i.beatrotofunk.snare[0].seq("1 ").speed(2);
  i.beatrotofunk.snare[1].seq("  0.75x3 ").speed(3);

  i.beatrotofunk.hihat[1].seq(" 1 0.7 0.5").speed(8).x(12);
  i.beatrotofunk.hihat[2].seq(" 1x2  1  1 ").speed(4).x(16);

  i.beatrotofunk.clap.seq(" 1x6     1x3  ").speed(2);
  i.beatrotofunk.clap.amp=3;

  i.beatrotofunk.snareBass.seq(" :2 1x2  :0.25  1xx ").random.speed(1);
  i.beatrotofunk.snare.amp=0.85;

  i.beatrotofunk.fx = \reverb;
  i.beatrotofunk.fx = nil;

  i.beatrotofunk.clock=1/3;

  i.beatrotofunk.play;
  i.beatrotofunk.stop;
