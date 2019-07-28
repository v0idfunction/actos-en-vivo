
i.autoMIDI();

~z.fadeTime = 10;
~z = {|note=48,amp=1| ((LFTri.ar(Lag2.kr(note-12).midicps,1/2)/2)+Saw.ar(Lag2.kr(note).midicps))*amp / 2 }

().play


i.sad=INSTRUMENT(~z);

i.sad.octave=2;

i.sad[0].note("12 13 12   10   13   48   12 10 9  13  15 17  19").speed(1/2)
i.sad[0].note("12 13 12   7   1   51   12 10 9  13  15 17  19").speed(1/2)
i.sad[1].note("12 13 12   10   13   48   12 10 9  13  15 :0.5 17 22 :0.125 19    20 19 20 17").speed(1/2).x(2)
i.sad[2].note("12 13 12   10   1   48   12 10 9  13  15 17 :0.125 19    20 19 20 17").speed(1/2).x(1)

i.pads = (
	p0: INSTRUMENT(i.synths.distPad1),
	p1: INSTRUMENT(i.synths.distPad2),
	p2: INSTRUMENT(i.synths.distPad3),
);

i.pads.p0.note("12 13 12   10   13   48   12 10 9  13  15 17  19").speed(1/4).random().maybe(0.9);
i.pads.p1.note("12 13 12   10   13   48   12 10 9  13  15 17  19").speed(1/4).random().maybe(0.9);
i.pads.p2.note("12 13 12   10   13   48   12 10 9  13  15 17  19").speed(1/4).random().maybe(0.9);

i.pads.p0.octave=3;
i.pads.p1.octave=5;
i.pads.p2.octave=7;
i.pads.amp=1/2

i.sad.octave=2



i.pads.fx=\reverb;

i.pads.play;


i.upkit=(
	clap0: INSTRUMENT(i.synths.clapBasic),
	clap1: INSTRUMENT(i.synths.clapNoise),
	kick0: INSTRUMENT(i.synths.kickSyn1),
	kick1: INSTRUMENT(i.synths.kickSyn2),
	kick2: INSTRUMENT(i.synths.electro.kick)
);

i.upkit.go(0)


i.upkit.kick0.seq(":0.125 1     1 1 ").speed(1/4);
i.upkit.kick1.seq(":0.125  1     1 1").speed(1/4);

i.upkit.kick0.seq(":0.125 1     1 1 ");
i.upkit.kick1.seq(":0.125  1     1 1");

i.upkit.kick1.seq("  1");
i.upkit.kick2.seq("1");
i.upkit.kick2.seq("1").speed(1/2);
i.upkit.kick2.seq("1").speed(1/4);

i.upkit.clap0.rm(\trigger);
i.upkit.clap1.rm(\trigger);
i.upkit.clap1[0].seq("  1");
i.upkit.clap0[0].seq("0 1 0 0 :0.5     1xxx ").speed(2);
i.upkit.clap0[1].seq("1xx 0 :0.125  1xx  :0.5 1").speed(1);
