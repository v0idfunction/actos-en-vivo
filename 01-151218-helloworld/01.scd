~z = { (SinOsc.ar([58,61])*3).tanh / 2 ! 2 };

(
	i[\kick].stop;
i[\kick].go(0);
i[\kick2].stop;
i[\kick2].go(0);
i[\hh].stop;
i[\hh].go(0);
i[\hh2].stop;
i[\hh2].go(0);
i[\snare].stop;
i[\snare].go(0);

)


~mix = ~btk
~mix = ~btk + ~son1



~fktr = { 1/2}
~fktr = { LFPulse.kr(~tempo.kr/8,0,1/2,5.5,0.5 ); }


~fktr.quant=4

i=INSTRUMENT();

~out.play;




~btk = { CaosHats.robot(t:~fktr.kr/~tempo.kr/4,tp:[0,1,5,6,9,10]/16) ! 2 / 2 };

~btk[0] = { CaosKick.robot(t:~fktr.kr/~tempo.kr/4,tp:[0,2,4,8,10]/8) ! 2 / 2 };
~btk[0] = { CaosKick.robot(t:~fktr.kr/~tempo.kr/4,tp:[0,2,4,8,10]/8) ! 2 / 2 };
~btk[0] = { CaosKick.robot(t:~fktr.kr/~tempo.kr,tp:[0,2,4,8,10]/8) ! 2 / 2 };
~btk[1] = { CaosSnare.robot(t:~fktr.kr/~tempo.kr/2,tp:[0,3,5,7]/8) ! 2 / 2 };
~btk[1] = { CaosSnare.robot(t:~fktr.kr/~tempo.kr,tp:[0,3,5,7]/8) ! 2 / 2 };
~btk[2] = { CaosHats.robot(t:~fktr.kr/~tempo.kr/1,tp:[0,7,10,13]/8) ! 2 / 2 };
~btk[2] = { CaosHats.robot(t:~fktr.kr/~tempo.kr/2,tp:[0,7,10,13]/8) ! 2 / 2 };
~btk[3] = { CaosHats2.robot(t:~fktr.kr*~tempo.kr/4,tp:[0,17,21,23]/8) ! 2 / 2 };
~btk[4] = { CaosKick2.robot(t:~fktr.kr*~tempo.kr/2,tp:[4,8,16]/8) ! 2 / 4 };


// ~son1 = {LFTri.ar(43.midicps)/6 * Decay2.kr(Impulse.kr(12*~tempo.kr), 0.01, 0.2) ! 2};
~son1 = {|note=48| (BPF.ar( ~btk.ar*13, note.midicps, 0.05 ).tanh * Decay2.kr(Impulse.kr(4*~tempo.kr), 0.01, 0.25) )! 2 };


~son1.set(\note,48);

i[\btkfltr]=Proxy(~son1);

i[\btkfltr].octave=4

i[\btkfltr][0].seq(\note, "0 3 2 5 10 12")
i[\btkfltr][1].seq(\note, "0 3 1 12")


i[\kick].stop


i=INSTRUMENT()
i.play;

i[\kk]=SynthPlayer(\kickGabber);
i[\kk].synthdef=\kickElectro;
i[\kk][0].seq(\synthdef, [\kickGabber,\r,\r,\kickElectro]);


i[\kk][0].seq("1");


i[\kk][1].seq("1 0.85")
i[\kk][1].seq("1 1xxxxxxxx:0.125  ")



// ~btk[5] = {|note=60| CaosBass.robot(note:note.midicps,t:~tempo.kr*[2,3],tp:[2,4]/2) ! 2 };
~mix = ~son1;

~mix = ~btk;

~mix = ~btk + ~son1

~btk[5] = { 0 };



// i[\btk]=Proxy(~btk)
// i[\btk][0].seq(\note,"0 3 2 7")
// i[\btk][0].octave=2

i[\kk].play

i=INSTRUMENT()
i[\kick]=SynthPlayer(\kickSyn1);


i[\kick][0].seq("1 :0.125 1xxxxxxx ");
i[\kick][1].seq("1   ");
i[\kick][2].seq("1xxxx:0.5 ");

i

i=INSTRUMENT();
i[\kick]=SynthPlayer(\kickElectro);
i[\kick][3].seq("1 1xxxx:0.25");


~btk[3] = { CaosHats2.robot(t:~fktr.kr*~tempo.kr/4,tp:[1,3,5,7]/8) ! 2 / 2 };
~btk[4] = { CaosHats.robot(t:~fktr.kr*~tempo.kr/[8,12],tp:[0,4]/8, rel: [4,5]) ! 2 / 2 };

~btk[5] = { CaosKick.robot(t:~fktr.kr*~tempo.kr,tp:[0]/8) ! 2 / 2 };

~btk[6] = { CaosKick2.robot(t:~fktr.kr*~tempo.kr/4,tp:[3]/8) ! 2 / 5 };

~btk[7] = \filter -> {|in| (in*1.3).tanh / 2 };
~btk[7] = \filter -> {|in| (in*13).tanh / 2 };
~btk[7] = \filter -> {|in| FreeVerb.ar(in,2/3,2/3,2/3) };
