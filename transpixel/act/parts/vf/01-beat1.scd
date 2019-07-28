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

i.synths.kic

i.beat_1=(	
	kick: INSTRUMENT(i.synths.kick[3]),
	hihat: INSTRUMENT(i.synths.hihat[2])
);


i.beat_1.kick.seq("1");

i.beat_1.hihat.seq("1  1 1 ").speed(4);
i.beat_1.hihat.amp=3/4;

i.autoMIDI;
i.beat_1 = [\kick,\hihat];

i.beat_1.fx=\reverbLPF;
i.beat_1.fxSet(\cutoff,444);
i.beat_1.fxSet(\wet,0.9);
i.beat_1.fxSet(\room,0.9);
i.beat_1.fxSet(\damp,0.9);


i.beat_1.clock=1/2;
i.beat_1.amp=1;
