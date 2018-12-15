s.boot

// i=INSTRUMENT();


TempoClock.default.tempo=195/120;
p.makeTempoClock(195/120,'instrument',TempoClock.default);

i[\kick]=SynthPlayer(\kickGabber);
i[\kick][0].seq("1:0.25");
i[\kick].rm(\trigger,0);
i[\kick][0].seq(\trigger,"1:0.5",[\repeat,32]);
i[\kick].speed=1/2;
//
// i[\kick].go(0);
// i[\kick2].go(0);

i[\kick2]=SynthPlayer(\kickElectro);
i[\kick2].synthdef=\kickElectro;
i[\kick2][0].seq("1.3:0.25 :0.125 0.7x ");

i[\hh]=SynthPlayer(\hh2);
i[\hh].fx=\distortion;
i[\hh][0].seq("1xx:0.25 0.7xxxx:0.125 :0.5");

i[\hh2]=SynthPlayer(\hihatElectroKit);
i[\hh2].fx=\distortion;
i[\hh2][0].seq("1xxxx:0.125 ");

i[\snare]=SynthPlayer(\snare3);
i[\snare].fx=\distortion;
i[\snare][0].seq(" :0.25 1xx :0.125 1xxxx 0.5xxxx 1.3xx :0.5 1");


i[\drums]=[
\kick,
\kick2,
\hh,
\hh2,
\snare,
]


i[\drums].amp=0.5
