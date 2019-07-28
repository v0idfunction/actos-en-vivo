//////beat bass Mit

i.beatBass = (

 kick: INSTRUMENT(i.synths.kick.kickSyn2),
 kick2: INSTRUMENT(i.synths.kick.kickDeep),
 hihat: INSTRUMENT(i.synths.hihat[2]),

 bass: INSTRUMENT(i.synths.trance[2]),
);

i.beatBass.play;
i.beatBass.stop;
i.beatBass.go(0);

i.beatBass.kick.seq(" 1x4 ").speed(2);
i.beatBass.kick2.seq("1").speed(2);

i.beatBass.bass.note("0 1 5 7 10").speed(2);
i.beatBass.bass.note(" 0  1  5  7 10 13   0x3  1x2 ").random.speed(2).pyramid;
i.beatBass.bass.set(\rel,3/4);

(
i.beatBass.bass.set(\att,2/3);
i.beatBass.bass.set(\rel,0);
i.beatBass.bass.mode=\mono;
)

i.beatBass.bass.amp=1.5;

i.beatBass.stop
i.beatBass.play



///part 2
i.beatBass.hihat[0].seq(":1/2 1 0.75").speed(2).x(16);
i.beatBass.hihat[1].seq(":1/6  1  1  ").speed(2).x(7);

//i.beatBass.hihat.rm(\trigger)
i.beatBass.hihat.seq(":1/3  1x2  1x4  1x3").speed(3).x(3);
i.beatBass.hihat.play;


i.pad=INSTRUMENT(i.synths.pad.dist.choose);
i.pad.note(" 0  1  5  15  7 2 10 13   0x3  14 1x2 ").random.speed(1/4).pyramid;
i.pad.octave=5;

i.bassgrrr=INSTRUMENT(i.synths.trance[2]);
i.bassgrrr.note("0x2  1x3  3x4 5").pyramid.speed(2);
i.bassgrrr.amp=4;
i.bassgrrr.octave=4;

i.beatBass.stop;
