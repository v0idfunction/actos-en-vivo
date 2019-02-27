



i[\dk]=SynthPlayer(\kickElectro);
i[\dk][0].seq("1 :0.25 1xx");
i[\dk][1].seq("1:0.25 1xx ");

i[\dk2]=SynthPlayer(\kickDeep);

i[\dk2][0].seq("3:2");
i[\dk2].fx=\reverb;


i[\dh]=SynthPlayer(\hh2);
i[\dh][0].seq("1 :0.25 1xx ");
i[\dh][1].seq("1:0.25 1xx ");

i[\dc]=SynthPlayer(\clapBasic);
i[\dc][0].seq(" 1");


i[\drumSlow] = [
\dk,
\dk2,
\dh,
\dc,
];

i[\drumSlow].speed=1/4
i[\drumSlow].fx=\reverb
