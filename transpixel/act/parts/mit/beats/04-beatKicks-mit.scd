
/////beat kicks Mit

i.beatkicks = (

   kick1: INSTRUMENT(i.synths.kick.kickGabber),
   kick2: INSTRUMENT(i.synths.kick.kickHollow),
   kick3: INSTRUMENT(i.synths.kick.kickHard),
);

//continuacion archivo 03 beat bass
i.pad.stop
i.bassgrrr.clock=1/2;
i.bassgrrr.amp=6;
//
i.beatkicks.kick1.seq("1x3 ").speed(1);
i.beatkicks.kick2.seq(" 1").speed(2);
i.beatkicks.kick3.seq("  1x4").speed(2);

i.beatkicks.clock=1;

i.beatBass.clock=1;

i.beatkicks.play;
i.beatkicks.stop;
