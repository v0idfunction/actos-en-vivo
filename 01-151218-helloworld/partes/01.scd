// void function
// hello world
// 1 / 12


~z={|amp=1| (RLPF.ar(WhiteNoise.ar,[60,63],0.01)*3.3).tanh*amp!2 }



~mix.fadeTime = 16;

~mix= ~kla1;


~kla1={ Klank.ar(`[[500, 1000, 1200, 1000], nil, [1, 2, 1, 2]], WhiteNoise.ar(0.005) ) ! 2 };

~mix= ~kla2 + ~kla1;


~kla2={Klank.ar(`[Array.rand(120, 800.0, 4000.0),nil,
Array.rand(120, 0.1, 20)], Decay.ar(Impulse.ar(~tempo.kr*5), 0.003, ClipNoise.ar(0.01))).tanh/2 ! 2 };


~dec={FreeVerb.ar (RLPF.ar(Impulse.ar(~tempo.kr*4) * 20, [850, 1950], 0.2)* FSinOsc.ar(600), 0.5, 0.5) ! 2};

~mix= ~kla1 + ~dec;

~mix= ~kla2 + ~dec;

~dec.fadeTime=8;

~dec={FreeVerb.ar (RLPF.ar(Impulse.ar(~tempo.kr*4) * 20, [850, 1950], 0.2)* FSinOsc.ar(600), 0.75, 0.75,0.75) ! 2};


~mix= ~kla2;

~dec={FreeVerb.ar (RLPF.ar(Impulse.ar(~tempo.kr*4) * 20, [850, 1950], 0.2)* FSinOsc.ar(600), 0.5, 0.5) ! 2};

~mix= ~kla2 + ~kla1 + ~dec;

~mix= ~dec;
