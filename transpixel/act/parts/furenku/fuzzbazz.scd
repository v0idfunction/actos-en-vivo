s.options.memSize=2048*1024;
s.options.maxNodes=128*1024;


s.boot;
s.scope;
i=INSTRUMENT().play;

i.tempo=192;

i.bataka_a=(
	kick0: INSTRUMENT(i.synths.kick.kickHard),
	kick1: INSTRUMENT(i.synths.kick.kickSyn3),
	hh: INSTRUMENT(i.synths.hihatClosed),
	snare: INSTRUMENT(i.synths.snareDry)
);


i.bataka_a.kick0.seq("1");
i.bataka_a.kick1.seq("1 1   1 1 ").speed(2);
i.bataka_a.hh.seq("1 1   1 1 ").speed(3);
i.bataka_a.snare.seq(" 1   1 1 ");
i.bataka_a.hh.amp=2/3;
i.bataka_a.clock=1;


i.bass=INSTRUMENT(i.synths.bass.bassDist);
i.bass.octave=3;
i.bass[0].note("0xxx  3 ");
i.bass[1].note("0   3   10 12  0 :0.5 2xxx  3 ").speed(2);
i.bass[2].note("0  2 3 7");
i.bass.seq(\rel,"0.3   0.65  1 0.2  ");

i.bass.go(0)



p=ProxySpace.push(s);
~x.play

i.bataka_a.play
i.bass.stop
i.pad.stop
i.pad2.stop

~x.fadeTime=10

~x={|note=48| RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps))/3};
~x={|note=48| RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,100,763))/3};
~x={|note=48| RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,100,763),1/5)/3};
~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,100,763),1/5)*3).tanh/8};
~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,80,1763),1/8)*13).tanh/8};
~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,80,2763),1/12)*33).tanh/8};


~x.set(\note,48);

i.fuzzBazz=INSTRUMENT(~x);
i.fuzzBazz.octave=3

i.fuzzBazz[0].note("12  15  17   12 ").x(3);
i.fuzzBazz[1].note("12  17  14   12 ").x(1);
i.fuzzBazz[2].note("12  15  10   12   15  17   19 12").x(2);


i.fuzzBazz.rm(\note,1);
i.fuzzBazz.rm(\note);

i.fuzzBazz[0].note("12  13   10 12 15 0   :0.5  12 13 10 :1  12 :0.5 17 15 5   :1  19 17");

i.fuzzBazz.go(0);
i.bataka_a.go(0);

i.fuzzBazz.clock=2;



~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,80,2763),1/12)*133).tanh/8};
~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,80,2763),1/12)*1.3).tanh/5};



i.fuzzBazz[0].note("0 1  5   0 ").x(3);
i.fuzzBazz[1].note("0 1  3   0 ").x(1);
i.fuzzBazz[2].note("0 3  5   10   3  1   8 ").x(2);


i.fuzzBazz[1].note("0 3  5   0  2 3  5  4  7 :0.5 14 12 0 :1  7  2").x(1)
i.fuzzBazz[2].note(":0.5 0 5 3  2  11 14 12 0  :1 5   0  2 3  5  4  7 14   9  5").x(1)
i.fuzzBazz.rm(\note)

i.fuzzBazz.clock=2

i.bataka_a.clock=1/2;
i.bataka_a.fx="gateDistort.hardcore";
~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps)+SinOsc.ar(note.midicps),SinOsc.kr(1/16).linlin(-1,1,80,2763),1/12)*133).tanh/8};


~x={0};

i.bataka_a.fx="gateDistort.extreme";
i.bataka_a.clock=2;
i.bataka_a.hh.clock=6;
i.bataka_a.amp=4;

i.bataka_a.fx="gateDistort.overdrive";
i.bataka_a.clock=3;
i.bataka_a.hh.clock=8;
i.bataka_a.amp=12;

i.bataka_a.fx=nil;
i.bataka_a.clock=1;
i.bataka_a.hh.clock=1;
i.bataka_a.amp=1;


i.pad=INSTRUMENT(i.synths.pad.padCrickets)
i.pad2=INSTRUMENT(i.synths.pad.distPad2)
i.pad[0].note("0 7  8 15").speed(1/4)
i.pad[1].note("0 7  14 8").speed(1/4)

i.pad2.note("0 7  8 2 14 10").speed(1/4)



i.bataka_a=(
	// kick0: INSTRUMENT(i.synths.kick.kickHard),
	// kick1: INSTRUMENT(i.synths.kick.kickSyn3),
	hh: INSTRUMENT(i.synths.hihatClosed),
	// snare: INSTRUMENT(i.synths.snareDry)
);

i.bataka_a.clock=1/4;
i.bataka_a.fx=\delay2;

i.fuzzBazz.octave=7;
i.fuzzBazz.clock=6;
~x[1]=\filter->{|in| FreeVerb.ar(in,1,3/4,3/4) };




i.bataka_a=(
	kick0: INSTRUMENT(i.synths.kick.kickHard),
	// kick1: INSTRUMENT(i.synths.kick.kickSyn3),
	hh: INSTRUMENT(i.synths.hihatClosed),
	// snare: INSTRUMENT(i.synths.snareDry)
);
i.bataka_a.kick0.clock=4;




~x={|note=48| (RLPF.ar(Saw.ar((note-12).midicps*[1,1.5])+SinOsc.ar(note.midicps*[1,1.5]),SinOsc.kr(1/16).linlin(-1,1,810,6763),1/12)*12.3).tanh/[8,16]};

~x={|note=48| (RLPF.ar(LFTri.ar((note-12).midicps*[1,1.5])+SinOsc.ar(note.midicps*[1,1.5]),SinOsc.kr(1/16).linlin(-1,1,810,6763),1/12)*1.3).tanh/[8,16]};

i.fuzzBazz.clock=24

~x.fadeTime=1;

~x={|note=48| o=LFPulse.kr(1/8,1/[2,3,6],1/[12,16,18],1,[3,2,1/4,1/8]); (Resonz.ar(LFTri.ar((note-12).midicps*(o*[1,1.5]))+SinOsc.ar(note.midicps*(o*[1,1.5])),SinOsc.kr(1/16).linlin(-1,1,810,993),1/12)*133.3).tanh/[8,16]};


i.bataka_a.stop;



i.fuzzBazz.octave=8;
i.fuzzBazz.octave=9;
i.fuzzBazz.octave=6;
i.fuzzBazz.octave=7;
i.fuzzBazz.octave=4;
i.fuzzBazz.octave=5;
i.fuzzBazz.octave=2;
i.fuzzBazz.octave=3;


i.fuzzBazz.octave=1;

~x={|note=48| o=LFPulse.kr(1/8,1/[2,3,6],1/[12,16,18],1,[3,2,1/4,1/8]); (Resonz.ar(LFTri.ar((note-12).midicps*(o*[1,1.5]))+SinOsc.ar(note.midicps*(o*[1,1.5])),SinOsc.kr(1/16).linlin(-1,1,810,993),1/12)*633.3).tanh!2};


i.fuzzBazz.clock=24

i.fuzzBazz.clock=32

i.fuzzBazz.clock=64


i.fuzzBazz.clock=128

i.fuzzBazz.clock=256

i.fuzzBazz.clock=18
i.fuzzBazz.clock=16
i.fuzzBazz.clock=12
i.fuzzBazz.clock=8
i.fuzzBazz.clock=6
i.fuzzBazz.clock=2




i.fuzzBazz.octave=7;
i.fuzzBazz.clock=6;
~x[1]=\filter->{|in| FreeVerb.ar(in,1,3/4,3/4) };

~x.fadeTime=24;
~x={0};
