i[\d0]=INSTRUMENT(i.synths.electro.kick);
i[\d1]=INSTRUMENT(i.synths.electro.clap);
i[\d2]=INSTRUMENT(i.synths.electro.hihat);

i[\d0].seq("1");
i[\d1].seq(" 1");
i[\d2].seq("1").speed(2);


i[\drms1]=[\d0,\d1,\d2]
i[\drms1].clock=1/4
i[\drms1].fx=i.synths.fx.time.choose
