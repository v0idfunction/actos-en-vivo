(
s.boot;

s.doWhenBooted({

	// i = INSTRUMENT().play;

	// i.tempo=155;

	i.drums=(
		k0:INSTRUMENT(i.synths.electro.kick),
		k:INSTRUMENT(i.synths.kick.kickDeep),
		k2:INSTRUMENT(i.synths.kick.kickHard),
		k3:INSTRUMENT(i.synths.kick.kickFull),
		h1:INSTRUMENT(i.synths.hihat.hihatClosed),
		h2:INSTRUMENT(i.synths.hihat.hihatClosed),
	);

	i.percNotes=(
		p1:INSTRUMENT(\windPerc),
		p2:INSTRUMENT(\windPercHarm),
		p3:INSTRUMENT(\windPercDis),
	);

	i.drums.k0[0].seq("1").speed(2).x(64);
	i.drums.k0[1].seq("1xx  1xx :0.5 1xx  1xx :0.25 1xx").speed(2);
	i.drums.k0[2].seq("1xx  1xx :0.5 1xx  1xx :0.25 1xx").speed(4).x(8);
	i.drums.k0[3].seq("1xx  1xx :0.5 1xx  1xx :0.25 1xx").speed(8).x(4);
	i.drums.k0[4].seq("1xx  1xx :0.5 1xx  1xx :0.25 1xx").speed(16).x(4);
	i.drums.k0[5].seq("0.4xx  0.4xx :0.5 0.4xx  0.4xx :0.25 0.4xx").speed(32).x(8);
	i.drums.k0[6].seq("0.3xx  0.3xx :0.5 0.3xx  0.3xx :0.25 0.3xx").speed(64).x(16);
	i.drums.k0[7].seq("1xx  1xx :0.5 1xx  1xx :0.25 1xx").speed(2).x(4);
	i.drums.k0[8].seq("1").speed(2).x(8);
	i.drums.k0[9].seq("0.3xx  0.3xx :0.5 0.3xx  0.3xx :0.25 0.3xx").speed(64).x(64);

	i.drums.k0.amp=1/2;
	i.drums.k.seq("1  1   1    1  1").speed(3);
	i.drums.k.amp=0.9;
	i.drums.k2[0].seq("1  1 ").speed(2);

	i.drums.k2[1].seq("1 1   1 ").speed(4);
	i.drums.k2[2].seq("1 1  1   1 ").speed(8);
	i.drums.k2.amp=0.9;

	i.drums.k3[0].seq("1 :0.5 1  1 ").speed(2).x(16);
	i.drums.k3[1].seq(" 1").speed(4).x(4);
	i.drums.h1[0].seq("1 :0.5 1xx 1xx 1 ").speed(2).x(8);
	i.drums.h1[1].seq("1 :0.5 1xx 1xx 1 ").speed(4).x(4);
	i.drums.h1.seq(\synthdef,["hihatClosed",\r,\r,\r,"hihatOpen"]);
	i.drums.k1.stop;


	i.percNotes.p1.note("0 2 3  1 7  17 ").random.pyramid.mirror;
	i.percNotes.p2.note("0  2   3   1 7  17  ").random.pyramid.mirror;
	i.percNotes.p3.note("0  2   3  1 7   17  ").random.pyramid.mirror;

	i.percNotes.p1.octave=4;
	i.percNotes.p2.octave=5;
	i.percNotes.p3.octave=3;
	i.percNotes.amp=2/3;




	i.woodNote=(
		w1: INSTRUMENT(\woodPerc),
		w2: INSTRUMENT(\woodPerc),
	);

	i.woodNote.w1.note("0  7  15 :0.125 22xxxxxxxx :0.5 17xxx 13xx 12xx ").speed(1/2);
	i.woodNote.w2.note("0  17  5 :0.125 15xxxxxxxx :0.5 3xxx 2xx 12xx ").speed(1/3);

	i.woodNote.w1.amp=0.8;

	i.woodNote.w2.octave=2;
	i.woodNote.w1.amp=2;
	i.woodNote.w2.amp=3;

	i.drums.stop

});
)
i.drums.clock=2;

i.kickHard=INSTRUMENT(\kickGabber)
i.kickHard[0].seq("1").speed(2).x(32)
i.kickHard[1].seq("1 :0.25 1xxx  :0.5 1xx  1  1").speed(2).x(4)
i.kickHard[2].seq("1 :0.125 1xxx  :0.5 1xx  1  1").speed(8).x(8)
i.kickHard.amp=2/3
i.kickHard2=INSTRUMENT(\kickSyn3)
i.kickHard2.seq(" 1").speed(2);




i.drums.stop;


i.drums.play;
i.percNotes.stop;
i.woodNote.stop;

i.drums.h1.clock=2;

i.drums.go(3);

i.percNotes.play;
i.woodNote.play;
i.woodNote.fx=\reverb;







i.drums.stop;
i.percNotes.stop;
i.woodNote.play;
i.woodNote.fxSet(\wet,0.7);
i.woodNote.fxSet(\damp,1);
i.woodNote.fxSet(\room,1);


i.woodNote.fx=\reverbLPF;
i.woodNote.seq(\fxSet,[
	(cutoff:440),
	(cutoff:330),
	(cutoff:210),
	(cutoff:120),
	\r,\r,\r
])

i.woodNote.seq(\fxSet,[
	(cutoff:1440),
	(cutoff:1330),
	(cutoff:1210),
	(cutoff:1120),
	\r,\r,\r
])




i.drums.k0.play;
i.drums.k0.fx=\reverb;
i.drums.k0.fx=nil;
i.drums.h1.play;



i.drums.stop;

i.drums.play;
i.woodNote.fx=nil;


i.woodNote.fx=\reverbLPF;
i.drums.stop;

i.woodNote.stop;

i.drums.k0.remove("trigger")
