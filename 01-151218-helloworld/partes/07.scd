// void function
// hello world
// 7 / 12



i[\mic].fx=\shineDestroy;


// destroy
i[\mic].seq(\setFx,[
	(\cutoff:500),
	(\cutoff:700,gain:3,res:11),
	(\wet:0.1),
	(\cutoff:1010),
	(\cutoff:1010),
	(\cutoff:3700,gain:113,res:0.1),
	\r,
	(\wet:1,\cutoff:8000,gain:1,res:3),
	\r,
	\r,
	(\wet:0.1,\cutoff:80),
]);





i[\mic].seq(\fx,[
	\revlpf,
	\reverb,
	"gateDistort.crunch",
	"gateDistort.extreme",
	\shineDestroy,
	"gateDistort.overdrive",
	"gateDistort.hardcore",
]);

i[\mic].speed=1/8


i[\mic].fx=\reverb;
i[\mic].fx=\revlpf;
i[\mic].fx="gateDistort.overdrive";
i[\mic].fx="gateDistort.crunch";
i[\mic].fx="gateDistort.hardcore";
i[\mic].fx="gateDistort.extreme";
i[\mic].setFx(\gain,0.03);
i[\mic].setFx(\compGate,3.6);
i[\mic].fx=\shineDestroy;



i[\mic].setFx(\cutoff,222);


i[\mic].setFx(\rv1,1);
i[\mic].setFx(\wet,1);
i[\mic].setFx(\rv2,1);

i[\mic].fx=\reverb;
