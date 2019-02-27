s.boot;
i=INSTRUMENT();

(

i[\kick1]=SynthPlayer(i.synths.kicks.kickSimple);
i[\kick1].seq("1");

i[\kick2]=SynthPlayer(\kickElectro);
i[\kick2].seq(":2 1xx :0.5 1xxx :0.25 1xxx");

)

i.autoMIDI=true;

i[\kicks]=[\kick1,\kick2];


i.autoMIDI=false;


(

i[\hihat1]=SynthPlayer(i.synths.hihats.hihatClosed);
i[\hihat1].seq(":0.25 1xx ");

i[\hihat2]=SynthPlayer(\hihatElectroKit);
i[\hihat2].seq(":2 1xx :0.5 1xxx :0.25 1xxx",[\speed,2]);

)

i.autoMIDI=true;

i[\hihats]=[\hihat1,\hihat2];

i.autoMIDI=false;


i[\hihats].fx=\reverb;
i[\hihats].fx=\fx;
i[\hihats].setFx(\wet,3/4);
i[\hihats].setFx(\rv1,3/4);
i[\hihats].setFx(\rv2,3/4);

i[\hihats].fx=\distortion;
i[\hihats].setFx(\gain,1133.3);
