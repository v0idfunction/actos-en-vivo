s.boot;

s.scope

i = INSTRUMENT();

i.autoMIDI = true;

i[\kick]=INSTRUMENT(\kickDeep);
i[\kick].seq("1");

i[\kick].fx=\revlpf
i[\kick].fxSet([
	(rv1:1/3,cutoff:3000),
	(rv1:1,cutoff:1000),
	(rv1:1/2,cutoff:5000),
])

i[\hihat]=INSTRUMENT(\hihatClosed);
i[\hihat2]=INSTRUMENT(\hihatElectroKit);
i[\hihat].seq("1").speed(2);
i[\hihat2].seq("1").speed(3);
i[\hihat2].set(\amp,1)

i[\hihats] = [\hihat,\hihat2]
i.autoMIDI=false
i[\drums] = [\hihat2,\kick]
i[\drums].amp=1
i[\hihats].fx=nil;
i[\drums].fx=\reverb;
i[\hihats].fx=\reverb;
i[\hihats].fxSet(\wet,1)
i[\hihats].fxSet(\room,0.75)
i[\hihats].fxSet(\damp,0.75)
i.autoMIDI=false;

i.autoMIDI=true
i.map(m.mpk_mk2.knob1,i[\hihat],\rel,[0.5,1]);


i[\bass]=INSTRUMENT(\bassSmooth);
i[\bass].octave=2;
i[\bass].mode=\mono;
i.map(m.mpk_mk2.piano,i[\bass],\note);

i[\dist]=INSTRUMENT(\distNote1)
i[\dist].octave=2
i.map(m.mpk_mk2.pads,i[\dist],\note);

().play
i.play
i[\dist].note("0 3 2")


i[\bass].note("0 3 2")


i[\dist].go(0);
i[\bass].go(0);

i[\dist].rm(\note,0)

i[\bass].synthdef=\bassSmooth
i[\bass].octave=0
