s.boot;
s.doWhenBooted({

	i=INSTRUMENT().play;

	i.note=INSTRUMENT(i.synths.note.distNote1);
	i.note2=INSTRUMENT(i.synths.note.distNote2);
	i.note3=INSTRUMENT(i.synths.note.distNote3);

	i.note.amp=4;
	i.note2.amp=3;
	i.note3.octave=6;


	i.note.note("C  Eb F  Bb");
	i.note3.note("G A  Eb G ");
	i.note2.note("C G  Eb Bb  F C  Bb Eb").speed(3).pyramid;
	i.note2.octave=5;

});
