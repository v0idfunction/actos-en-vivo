
i[\hihat]=INSTRUMENT(i.synths.hihats.choose);
i[\hihat][0].seq("1 :0.5 :0.25 1 1").speed(2);
i[\hihat][1].seq("1 1 :0.5 :0.5 1xxx 1").speed(4);
i[\hihat][2].seq(" 1 :0.25 :0.5 :0.5").speed(8);
i[\hihat][3].seq("1xx  1 :0.5 1").speed(4);

i[\hihat].fx=i.synths.fx.time.choose;

i.synths.hihats.keys;

i[\hihat].stop;
