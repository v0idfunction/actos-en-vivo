// void function
// hello world
// 3 / 12

~mix.fadeTime=4;

~mix = ~pul
~pul={Pulse.ar(400, 0.5, Array.rand2(5, 30), 0.2 ).tanh /8 ! 2};

~mix = ~pul + ~sin;
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};

~mix = ~pul + ~sin + ~pul2 ;
~pul2={Pulse.ar(400*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};

~mix =  ~sin + ~crak;

~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(~tempo.kr/4, 200,200),1) )/2).tanh ! 2 };

~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};

// esperar
~mix.fadeTime=8;

~mix =  ~crak;

~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(~tempo.kr*8, 200,200),0.01) )/3).tanh ! 2 };

~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 400,800),0,0.1) +	Decay2.ar (Impulse.ar(8), 0.05, 0.01)/3 ! 2 };


~mix =  ~crak+~vibr;

~mix =  ~vibr;

~mix =  ~vibr+~kla1;
