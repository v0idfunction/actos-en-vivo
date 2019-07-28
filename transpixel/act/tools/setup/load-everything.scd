
// Setup: INSTRUMENT

i=INSTRUMENT();

i.tempo = e['tempo'];




ProxySpace.clearAll;
p = ProxySpace.push(s);
p.makeTempoClock(TempoClock.default.tempo,'instrument',TempoClock.default);


p.quant = 4;

~out.quant=4;


~z.fadeTime = 5;

~z = {|amp=0.5| Silent.ar() ! 2  };

~amp = {1/3};
~mix = ~z;

~out = {
	Pan2.ar(Limiter.ar(CompanderD.ar(Mix.new(HPF.ar(
		~mix.ar
	,30)), 0.9, 1, 0.9, 0.045,0.3 )*~amp.kr),0);
};
~mix.fadeTime=8;


~out.play;

"ProxySpace ready".postln;




i.data.loopers=Array.fill(8,{|index|
	var chan = 0;

	(
			instrument: Looper(chan);
	)
});


// i.data.synths.parameter_ranges=();
// i.data.synths.parameter_ranges.amp=[0,1];
// i.data.synths.parameter_ranges.wet=[0,1];
// i.data.synths.parameter_ranges.gain=[1,100];
// i.data.synths.parameter_ranges.cutoff=[50,12000];


i.data.lastChanThatUsedFX=IdentityDictionary.new;

// CmdPeriod.add({MIDIClient.disposeClient;});



// Setup: Loopers

i.loadSynths(Platform.userExtensionDir++'/INSTRUMENT/INSTRUMENT/Looper/looper/*');


// Setup: Synths

i.synths = i.loadSynths(Platform.userExtensionDir++'/INSTRUMENT/Sounds/SynthDefs/*');

"Synths: Loaded".postln;



// Setup: MIDI

if( e['useMidi'] == true ) {

	(thisProcess.nowExecutingPath.dirname ++ "/midi/midi-setup.scd").load;
	(thisProcess.nowExecutingPath.dirname ++ "/midi/midi-out-setup.scd").load;

};

// Start:

i.play;
