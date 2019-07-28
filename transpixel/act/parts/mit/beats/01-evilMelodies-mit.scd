////Mit Evil melodies

i.evilmelodies = (
	note1: INSTRUMENT(i.synths.note.distNote4),
	note2: INSTRUMENT(i.synths.note.distNote3),
	note3: INSTRUMENT(i.synths.note.distNote3),
	bass1: INSTRUMENT(i.synths.trance.bassTrance2),
	bass2: INSTRUMENT(i.synths.trance.bassTrance1)
);

i.evilmelodies.note1[0].note(" 0 3 7").random.speed(4);
i.evilmelodies.note1[1].note(" 0 3 7 1.5 0.5 ").random.speed(2).x(2);

i.evilmelodies.note2[0].note("0 5 0").random.speed(2);
i.evilmelodies.note2[1].note("3 5 3").random.speed(4);

i.evilmelodies.note3[0].note("0 5 0").random.speed(2).x(7);
i.evilmelodies.note3[1].note("2.5 7 2.5").random.speed(4).x(2);

i.evilmelodies.bass1[0].note("0  9 2  7  12").random.speed(2);
i.evilmelodies.bass1[1].note("3  2  7  14 13.5").random.speed(4);
i.evilmelodies.bass1.octave=4;

i.evilmelodies.bass2[0].note("7 3 G3  10 0  5").random.speed(2).pyramid.mirror;
i.evilmelodies.bass2[1].note(" 7 14  3 12  1.5").random.speed(2).pyramid.mirror;
i.evilmelodies.bass2.octave=4;


i.evilmelodies.fx = "gateDistort.extreme";
i.evilmelodies.fx = nil;

i.evilmelodies.note1.amp=1/2;

i.evilmelodies.clock= 1;

i.evilmelodies.stop;
i.evilmelodies.play;
