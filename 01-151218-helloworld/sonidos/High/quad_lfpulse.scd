s.boot;
s.scope;
s.meter;

p = ProxySpace.push(s);

p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~out={ Limiter.ar (~mix.ar) };
~out.play;
~mix.fadeTime=1;
~mix= ~nze;
~nze.quant=4;

~nze.fadeTime=1;
~nze[0]={ LFPulse.ar(LFPulse.kr(~tempo.kr/3, 0.5, 0.3, 1500, 50), 0, 0.1 ) * WhiteNoise.ar / 2   ! 2 };
~nze[1]={ LFPulse.ar(LFPulse.kr(~tempo.kr/3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 4   ! 2 };
~nze[2]={ LFPulse.ar(LFPulse.kr(~tempo.kr/4, 0.75, 0.1, 500, 50), 0.75, 0.1 ) / 6   ! 2 };
~nze[3]={ LFPulse.ar(LFPulse.kr(~tempo.kr/6, 0.75, 0.1, 250, 50), 0.75, 0.1 ) / 8   ! 2 };


(
	~nze[2]= \filter -> {|in| (in*10).tanh/2 };
	~nze[3]={ 0 };
)

~nze[3]= \filter -> {|in| FreeVerb.ar(in,2/3,2/3,2/3)  };


~mix= ~hc1+~hc2+~hc3;


~hc1={HPF.ar ( LFSaw.ar(33.midicps, 0.5), MouseX.kr(60,1000), 0.5) ! 2};
~hc2={HPF.ar (LFSaw.ar([40,62].midicps, 0.1), 69.midicps, 0.1) ! 2};
~hc3={BPF.ar(FSinOsc.ar([80, 800], 0.3) , 0.01, 60, 800  ) * Crackle.ar ( MouseX.kr(0.8,1.8))/2 ! 2};

~mix= ~b1 + ~b2 + ~b3 + ~b4 + ~noixy + ~lfdcn
~b1={ Blip.ar(31.midicps,SinOsc.kr(LFNoise0.ar(1,90,1)/3,0,75,75)) / 2 ! 2 };
~b2={ Blip.ar(SinOsc.kr(1600,800,1200),[50, 50, 300])/5 ! 2 };
~b3={ Blip.ar(SinOsc.kr(1600,800,1200),[100, 200, 300])/5 ! 2 };
~b4={ Blip.ar(SinOsc.kr(1600,800,1200),[10, 20, 3])/5 ! 2 };
~noixy={SinOscFB.ar((LFNoise0.kr(60,1500,100)),MouseButton.kr(0,MouseX.kr(0,4))).tanh ! 2};
~lfdcn={SinOscFB.ar((LFNoise0.kr(60,1500,100)),LFDClipNoise.kr(4).linlin(-1,1,0,4)).tanh*0.3 ! 2};

(
	~mix=~alarm;


(
	~alarm.play;
~alarm=
{(RLPF.ar(LFSaw.ar([80,LFSaw.kr(1/3, 0).linlin(-1,1,100,233)]),
	LFTri.kr(LFSaw.kr(0.1, 0,1/3,1/5),0).linlin(-1,1,100,[400,1000])/2, 0.1)*[33,133]).tanh / [6,12] ! 2 };


)


~nze.clear(3)
