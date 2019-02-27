// void function
// hello world
// 4 / 12

i[\dkHcKick]=SynthPlayer(\kickGabber)
i[\dkHcKick].seq("1:3  1:2 :0.25 1xxx ")
i[\dkHcKick].amp=0.75;


i.autoMIDI=true;
i.autoMIDI=false;
i[\kickBase]=SynthPlayer(\kickDeep)
i[\kickBase].seq("1:3")
i[\kickBase][0].seq("1")
i[\kickBase][1].seq(":0.25 1xxx ")



i[\kickBase][2].seq(":0.25 1xx :0.125  2xxx :1 1x 0.7xx ")
