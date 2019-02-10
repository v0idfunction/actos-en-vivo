i[\dB0]=INSTRUMENT(i.synths.kicks.choose);
i[\dB1]=INSTRUMENT(i.synths.claps.choose);
i[\dB2]=INSTRUMENT(i.synths.hihats.choose);

i[\dB0][0].seq("1 :0.5 1xxx :0.25 1xxx ");
i[\dB0][1].seq("1 :0.5 1xxx :0.25 1xxx :2 1").speed(2);

i[\dB1].seq(" 1");
i.every(4,{
	i[\dB2].seq("1xxxxxxxx").speed(8).maybe;
})

i[\drms2]=[\dB0,\dB1,\dB2]

i[\drms2].clock=2
