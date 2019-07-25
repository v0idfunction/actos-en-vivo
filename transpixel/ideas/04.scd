i=INSTRUMENT().play


i.hh=INSTRUMENT(i.synths.hihat[0])
i.hh.seq("1 :1/3 1x3 :1 1x6").speed(2)

i.kk=INSTRUMENT(i.synths.kick[0])
i.kk.seq("1   0.7").speed(1/2)

i.ss=INSTRUMENT(i.synths.snare[0])
i.ss.fx=\delay2;
i.ss.fxSet(\delay,1/8);
i.ss.fxSet(\wet,1);
i.ss.seq("  1   0.7  0.5").speed(1/2)
