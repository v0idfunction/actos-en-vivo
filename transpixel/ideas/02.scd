s.boot;

i = INSTRUMENT().play;

i.kick = INSTRUMENT(i.synths.kick.choose)
i.kick.seq("1")
i.kick.stop

i.drums = (

	k1: i.synths.kickSyn1,
	k2: i.synths.kickSyn2,
    h1: i.synths.hihatClosed,
	s1: i.synths.snareNeuro

);

i.groups

i.drums.k1.seq(":1/3  1xx :1/4  1xx ");
