i=INSTRUMENT();



i[\kick][0].seq(\synthdef, [\kickGabber,\r,\r,\kickElectro]);

i[\kick]=SynthPlayer(\kickElectroKit);
i[\kick].speed=4;

i[\hihat]=SynthPlayer(\hihatElectroKit);
i[\snare]=SynthPlayer(\snareElectroKit);
i[\snare1]=SynthPlayer(\snare1);
i[\snare2]=SynthPlayer(\snare2);
i[\snare3]=SynthPlayer(\snare3);

i[\kick][0].seq("1 ");
i[\hiht][0].seq("1  ");
i[\snre][0].seq("1   ");
i[\snr1][0].seq("1    ");
i[\snr2][0].seq("1     ");
i[\snr3][0].seq("1      ");

i.autoMIDI=true;
i.autoMIDI=false;

i[\snares].speed=1;

i[\snares].fx=\distortion;
i[\snares].setFx(\reverb);

i[\snares]=[
	\snare1,
	\snare2,
	\snare3
];

i[\drums].speed=1;
i[\drums].speed=4;
i[\drums].speed=8;

i[\drums]=[
	\kick,
	\hihat,
	\snare,
	\snare1,
	\snare2,
	\snare3,
];

i[\drums].fx=\reverb;
i[\drums].fx=\distortion;
i[\drums].fx=nil;

i[\drums][0].seq(\fx,[\reverb,\distortion,\r,\r,\revlpf],[\speed,4]);

i[\drums][0].rm(\fx,0)
