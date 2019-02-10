
(   //SQPusher FX
var sf, clock, counter;
var buffer= Buffer.alloc(s,44100,1);

counter=159;

Routine.run({

s.sync;
b=BBCut2([CutStream1(s.options.numOutputBusChannels,buffer),CutFXSwap1(6,0.6,0.4), CutMixer(0,1.0,SQPushFXAmp2.new(1),0.0)],SQPusher2({arg data; counter=counter+1; data.wrapAt(counter**2-64)},{arg bar; bar.clump(3)},scramble:0.25,quant:0.25)).play(195/120);

});
)

b.end
