
i.tempo=192;

i.bataka_b=(
	kick0: INSTRUMENT(i.synths.kick.kickGabber),
	kick1: INSTRUMENT(i.synths.electro.kick),
	hh0: INSTRUMENT(i.synths.hihatClosed),
	hh1: INSTRUMENT(i.synths.hihatShort),
	snare: INSTRUMENT(i.synths.snareNeuro)
);


i.bataka_b.kick0.seq("1    1 1  ").speed(2);
i.bataka_b.kick1.seq("  1 1 1  ").speed(2).mirror;

i.bataka_b.hh0[0].seq("1    1 1  ").speed(8).x(32);
i.bataka_b.hh1[0].seq("  1   1 1 ").speed(8).x(32);

i.bataka_b.hh0[1].seq(" 1 ").speed(8).x(32);
i.bataka_b.hh1[1].seq("  1").speed(8).x(32);

i.bataka_b.hh0[2].seq("1    1 1  ").speed(8).mirror.pyramid.mirror;
i.bataka_b.hh1[2].seq("  1   1 1 ").speed(8).mirror.pyramid.mirror;

i.bataka_b.hh0[3].seq(" 1 ").speed(8).mirror.pyramid.mirror;
i.bataka_b.hh1[3].seq("  1").speed(8).mirror.pyramid.mirror;





i.bataka_b.clock=2;

i.bataka_b.clock=1;

i.bataka_b.play;






i.bataka_b.go(0);
i.bataka_b.kick0[0].seq("1").speed(1).x(32)
i.bataka_b.kick0[1].seq("1").speed(2).x(62)
i.bataka_b.kick1[0].seq("1").speed(4).x(31);
i.bataka_b.kick1[1].seq("1xxx ").speed(16).x(1);
i.bataka_b.kick1[2].seq("1").speed(4).x(31);
i.bataka_b.kick1[3].seq("1 1xx ").speed(16).x(1);
i.bataka_b.kick1[4].seq("1xxx  1xxx  1").speed(4).x(3);
i.bataka_b.kick1[5].seq("1xxx ").speed(16).x(3);
i.bataka_b.kick1[6].seq("1").speed(8).x(14);
i.bataka_b.kick1[7].seq("1xxxxxxx ").speed(16).x(4);

i.bataka_b.snare[0].seq(" 1").speed(2).x(14);
i.bataka_b.snare[1].seq("1xx  1").speed(4).x(1);
i.bataka_b.snare[2].seq("  1 ").speed(4).x(6);
i.bataka_b.snare[3].seq("1xx  1xxx  1xx  1xx ").speed(4).x(1);
i.bataka_b.snare.amp=2;


i.every(3,{ i.bataka_b.go(512.rand) });
i.every(4,{ i.bataka_b.go(512.rand); i.bataka_b.clock=1; });
i.every(7,{ i.bataka_b.go(128) });
i.every(9,{ i.bataka_b.go(512.rand); i.bataka_b.clock=1+3.rand; });
i.every(13,{ i.bataka_b.go(0); i.bataka_b.clock=4+(4.rand*4); });



i.bataka_b.fx="gateDistort.overdrive"
i.bataka_b.fx="gateDistort.crunch"
i.bataka_b.fx="gateDistort.hardcore"
i.bataka_b.clock=1/8
i.bataka_b.fx="gateDistort.extreme"

(
i.every(2,nil);
i.every(4,nil);
i.every(3,nil);
i.every(7,nil);
i.every(9,nil);
i.every(13,nil);
i.bataka_b.kick1.stop;
i.bataka_b.clock=1/8;
i.bataka_b.amp=2;
i.bataka_b.fx=\delay2;

)

(
i.bataka_b.clock=1/3;
i.bataka_b.fx=\delay3;

)



i.bataka_b.clock=1/8;


i.bataka_b.clock=1;
i.bataka_b.fx="gateDistort.extreme"

i.bataka_b.clock=2;
i.bataka_b.kick1.play;
i.bataka_b.clock=4;
i.bataka_b.clock=6;
// i.bataka_b.clock=8;
i.bataka_b.stop;
