// void function
// hello world
// 12 / 12

// i=INSTRUMENT();

i[\kick]=SynthPlayer(\kickElectroKit);
i[\hihat]=SynthPlayer(\hihatElectroKit);
i[\snare]=SynthPlayer(\snareElectroKit);
i[\snare1]=SynthPlayer(\snare1);
i[\snare2]=SynthPlayer(\snare2);
i[\snare3]=SynthPlayer(\snare3);

i[\kick][0].seq("1 ");
i[\hihat][0].seq("1  ");
i[\snare][0].seq("1   ");
i[\snare1][0].seq("1    ");
i[\snare2][0].seq("1     ");
i[\snare3][0].seq("1      ");

i.autoMIDI=true;
i.autoMIDI=false;

i[\snares]=[
\snare1,
\snare2,
\snare3
];

i[\snares].speed=3;
i[\snares].speed=1;
i[\snares].speed=4;
i[\snares].speed=8;
i[\snares].speed=1;

i[\snares].fx=\distortion;
i[\snares].setFx(\reverb);

i[\drums]=[
	\kick,
	\hihat,
	\snare,
	\snare1,
	\snare2,
	\snare3,
];


i[\drums].speed=1;
i[\drums].speed=4;
i[\drums].speed=8;


i[\drums].fx=\reverb;
i[\drums].fx=\distortion;
i[\drums].fx=nil;
