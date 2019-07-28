/*
part 1
*/


/*

void function
void function
void function
void function
void function
void function
void function

*/


i.drums2=(	
	kickc: INSTRUMENT(i.synths.kick.kick_808),
	hihat: INSTRUMENT(i.synths.hihat.choose)
);


i.drums2.kick.seq("1");

i.drums2.hihat.seq("1  1 1 ").speed(4);
i.drums2.hihat.amp=3/4;

i.autoMIDI;
i.drums2 = [\kick,\hihat];

i.drums2.fx=\reverbLPF;
i.drums2.fxSet(\cutoff,444);
i.drums2.fxSet(\wet,0.9);
i.drums2.fxSet(\room,0.9);
i.drums2.fxSet(\damp,0.9);


i.drums2.clock=1/2;
i.drums2.amp=1;
