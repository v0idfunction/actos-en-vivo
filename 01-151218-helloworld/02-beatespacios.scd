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
i[\snares].clock=4;

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

i[\drums].clock=1;
i[\drums].clock=4;
i[\drums].clock=8;


i[\drums].fx=\reverb;
i[\drums].fx=\distortion;
i[\drums].fx=nil;

i[\drums].seq(\fx,[\reverb,\distortion,\r,\r,\revlpf],[\speed,4]);

i[\drums][0].rm(\fx,0)
