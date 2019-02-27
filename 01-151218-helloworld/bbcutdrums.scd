// s.boot;
(
/*
var clock= ExternalClock(TempoClock(2));
var buffer= Buffer.alloc(s,44100,1);
var group= Group.head(Node.basicNew(s,1));
var bus= Bus.audio(s,1); //mono rendering bus

// b.end;

clock.play;

//runs on first available input channel
b = BBCut2(CutGroup(CutStream1(nil,buffer),group,bus),BBCutProc11.new).play(clock);
b.amp=0.5;
*/
)
// amen

d=BBCutBuffer("/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav");



(
b=BBCut2(CutGroup([CutBuf1(d, 0.3), CutRev1(0.0, 0.0)]), BBCutProc11()).play(166/60);
b.amp=0.45;

)


// sqpush

(   //fast cuts, half speed sample
var sf;

Routine.run({
// sf= BBCutBuffer("/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav",16);

s.sync;

//3.33bps= 200 bpm
c=BBCut2(CutBuf1(d),SQPusher1.new).play(166/60);
c.amp=0.5;

});
)


b.end;

(
var sf;

Routine.run({
// sf= BBCutBuffer("/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav");

s.sync;

//3.33bps= 200 bpm
b=BBCut2(CutBuf3(d),SQPusher1.new).play(166/60);
b.amp=0.5;
});
)

c.end;


// (   //two at once- sounds great on my machine at least!
// var sf, clock;
//
// clock= ExternalClock(166/60).play;
//
// Routine.run({
// sf=BBCutBuffer.array(["/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav","/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav"],[8,8]);
//
// s.sync;
// c=Dictionary.new;
// c[0]=BBCut2(CutBuf1(sf[0],0.3),SQPusher1(0.4)).play(clock);
// c[1]=BBCut2(CutBuf1(sf[1],0.45),SQPusher1(0.3)).play(clock);
//
// });

// c.collect({|bb|bb.amp=0.25;});
)


b.end;




//two run off same routine
(
    var sf, clock;
    // b.collect({|bb|bb.end;});

    clock= ExternalClock(166/60).play;

    Routine.run({
     sf=BBCutBuffer.array(["/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav","/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav"],[8,8]);

    s.sync;
    b=BBCut2([CutBuf1(sf[0],0.3),CutBuf1(sf[1],0.45)],SQPusher1(0.4)).play(clock);
    b.amp=0.5;

    });

)

c.collect({|bb|bb.end; });


(   //alternate normal and fill bars, always scramble fills, sometimes silent
var sf;

Routine.run({
// sf= BBCutBuffer("/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav");

s.sync;

c= BBCut2([CutBuf2(d, 0.3, dutycycle: 0.7), CutMixer(0,1.0,{if(0.2.coin,{0},{1})},{1.0.rand2})],SQPusher1(0.3,2, 1.0)).play(166/60);
c.amp=0.5;
});
)

b.end;


(

//SQPusher fx at original pitch of sample using BBCSKnownOffsets
var sf;

Routine.run({
sf= BBCutBuffer("/home/mukkekunst/Desktop/lc/nr/samples/classic_amen.wav",4);

s.sync;

b=BBCut2([CutBuf3(sf,0.3,pbsfunc:SQPushFXPitch2.new(0.96,pbchance:0.8)),CutMixer(0,1.0,SQPushFXAmp2.new(0.15),0.0)],SQPusher1(0.4, 3, 0.4)).play(166/60);
b.amp=0.5;

});


)

c.end;

b.end;
