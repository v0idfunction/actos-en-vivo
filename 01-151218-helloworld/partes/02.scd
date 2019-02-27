// void function
// hello world
// 2 / 12

~mix.fadeTime = 0;

i[\kickReverb]=SynthPlayer(\kickDeep);
i[\kickReverb].seq(":4 1");
i[\kickReverb].fx=\revlpf;
i[\kickReverb].setFx(\wet,1);
i[\kickReverb].setFx(\rv,1);
i[\kickReverb].setFx(\rv,1);



i[\kickReverb].seq(\setFx,[
	(\cutoff:500),
	(\cutoff:700,rv1:0.3,rv2:0.5),
	(\wet:0.1),
	(\cutoff:1010),
	(\cutoff:1010),
	(\cutoff:3700,rv1:0.113,rv2:0.1),
	\r,
	(\wet:1,\cutoff:8000,rv1:1,rv2:1),
	\r,
	\r,
	(\wet:0.1,\cutoff:80),
]);







i[\kick2]=SynthPlayer(\kickElectro)
i[\kick2].seq(":8 1")
i[\kick2].seq(":4 1")



i[\hihat]=SynthPlayer(\hihatClosed)
i[\hihat].seq(":0.5 1xx :0.25 1xx ")

i[\hihat][1].seq(":0.25 1xx :0.125 1xx ")

i[\hihat][2].seq(":0.125 1xx 1xx :0.25 1xxx 1xx ")






i[\snare]=SynthPlayer(\snare1);
i[\snare].seq(":2  1")


i.autoMIDI = true;

(
	i[\drums]=[
	\kickDeep,
	\kickElectr,
	\hihatClose,
	\snare1,
];
)

i.autoMIDI = false;
