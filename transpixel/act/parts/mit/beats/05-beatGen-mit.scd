
 ////beat gen Mit

 i.beatgen = (

 	kick: INSTRUMENT(i.synths.electro.kick),
 	clap: INSTRUMENT(i.synths.clap.choose),
 	snare: INSTRUMENT(i.synths.snareNeuro),
 	snareBass: INSTRUMENT(i.synths.snareBass)

 );

   i.beatgen.kick[0].seq(" 1x3").speed(3);
   i.beatgen.kick[1].seq(" 1x2 1x2 ").speed(3);
   i.beatgen.clap.seq(" 1 1x7").speed(4);
   i.beatgen.snare.seq("1  1x4  ").speed(2);
   i.beatgen.snareBass.seq(" 1x4 :0.25 1x2 1x2").speed(3).pyramid.mirror;
   i.beatgen.snare.amp=0.5;

i.beatgen.go(0)
  i.beatgen.clock=1/4;
  i.beatgen.play;
  i.beatgen.stop;
