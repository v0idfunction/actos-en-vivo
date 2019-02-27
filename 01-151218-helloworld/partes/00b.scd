~z = {|amp| Silent.ar * amp ! 2 };

i.autoMIDI=true;

i[\gtr]=SynthPlayer(\audioIn,autostart:true,fx:\reverb);
i[\gtr].set(\inBus,0);
i[\mic]=SynthPlayer(\audioIn,autostart:true,fx:\reverb);
i[\mic].set(\inBus,1);

i[\lap]=SynthPlayer(\audioIn,autostart:true,fx:\distortion);
i[\lap2]=SynthPlayer(\audioIn,autostart:true,fx:\distortion);
i[\lap].set(\inBus,2);
i[\lap2].set(\inBus,3);

i[\z]=Proxy(~z);

i.autoMIDI=false;



i[\mic].fx=\revlpf;

//revlpf


i[\mic].seq(\setFx,[
	(\cutoff:500),
	(\cutoff:700,rv1:0.3,rv2:0.5),
	(\cutoff:1010),
	(\wet:0.6,\cutoff:80,rv1:1),
	(\cutoff:1010),
	(\wet:0.1),
	\r,
	\r,
	(\cutoff:3700,rv1:0.113,rv2:0.1),
	\r,
	(\wet:1,\cutoff:8000,rv1:1,rv2:1),
	\r,
	\r,
	(\cutoff:170),
	(\cutoff:17000),
]);

i[\mic].speed=2;

i[\mic].speed=1/3;


i[\mic].speed=4;
