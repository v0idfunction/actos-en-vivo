//abismo
s.scope
~down.fadeTime=3;
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[60,63,80],0.01)*3.3).tanh*amp!2 }
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[90,65,180],0.01)*3.3).tanh*amp!2 }

~mix= ~down;
~mix={0};

//aterc
~dec.fadeTime=3;
~dec={FreeVerb.ar (RLPF.ar(Impulse.ar(~tempo.kr*4) * 20, [850, 1950], 0.2)* FSinOsc.ar(600), 0.75, 0.75,0.75) ! 2};
~dec={FreeVerb.ar (RLPF.ar(Impulse.ar(~tempo.kr*4) * 20, [850, 1950], 0.2)* FSinOsc.ar(600), 0.5, 0.5) ! 2};
~mix= ~dec + ~down;

//hamornyarmy
~mix.fadeTime = 2;
~kla1={ Klank.ar(`[[500, 1000, 1200, 1000], nil, [1, 2, 1, 2]], WhiteNoise.ar(0.005) ).tanh/2.5 ! 2 };
~mix= ~kla1 + ~dec + ~down;

~kla2.fadeTime=5;
~kla2={Klank.ar(`[Array.rand(120, 800.0, 4000.0),nil,
Array.rand(120, 0.1, 20)], Decay.ar(Impulse.ar(~tempo.kr*5), 0.003, ClipNoise.ar(0.01))).tanh/2 ! 2 };
~mix= ~kla2 ;

~mix= ~kla1 + ~dec;
~mix={0};
~mix= ~kla2 + ~dec;
~mix= ~kla2 + ~kla1 + ~dec;


///broken freq
~mix= ~nze;
~mix.fadeTime=2;

~nze={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) * WhiteNoise.ar / 2   ! 2 };
~nze={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2   ! 2 };

~mix= ~hc3;
~hc1={HPF.ar ( LFSaw.ar(33.midicps, 0.5), MouseX.kr(60,1000,1), 0.5) ! 2};
~hc3={BPF.ar(FSinOsc.ar([80, 800], 0.3) , 0.01, 60, 800  ) * Crackle.ar ( MouseX.kr(0.8,1.8,1))/2 ! 2};
