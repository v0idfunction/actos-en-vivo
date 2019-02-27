// void function
// hello world
// 9 / 12

~mix.fadeTime=4;

~mix = ~tin;
~mix = ~tin + ~tonhel ;
~mix = ~tin + ~tonhel + ~ladans ;
~mix =  ~tin;

~tin={|freq=2400,dustFreq=6| LFSaw.ar(freq,0.5,1) * Decay2.kr(Dust2.kr(dustFreq), 0.1, 0.5) ! 2};

~tin.set(\dustFreq,1/2);

~tin.set(\dustFreq,8);

~tonhel[0]={SinOsc.ar(69.midicps,0.5,1,0.1) * LFGauss.ar(~tempo.kr/8, 0.12) ! 2};
~tonhel[1]={SinOsc.ar(150,0.5,1,0.1) * LFGauss.ar(~tempo.kr/8, 0.12) ! 2};
// {SinOsc.ar(Rand(300, 1500)) * Line.kr(0.3, 0, 0.5) ! 2}.play;
~ladans={SinOsc.ar(LFNoise0.kr(200,600, 900)) * Decay2.kr(Impulse.kr(~tempo.kr*4)+Dust.kr(2)) ! 2};

~mix=~ladans

~ladans={SinOsc.ar(LFNoise1.kr(200,600, 900))/2 * Decay2.kr(Impulse.kr(~tempo.kr*8)+Dust.kr(4))! 2};
~ladans[1]=\filter -> {|in| FreeVerb.ar(in,1/2,1/2,1/2) };



~ladans[0]={SinOsc.ar(LFNoise1.kr(200,600, 900))/2 * Decay2.kr(Impulse.kr(~tempo.kr/6)+Dust.kr(2))*3 ! 2};

~ladans[1]=\filter -> {|in| in+FreeVerb.ar(in,1,7/8,7/8) };
