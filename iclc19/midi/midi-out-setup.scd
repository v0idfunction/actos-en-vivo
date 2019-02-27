var midiOut=MIDIOut(0);

Tdef(\MidiClock).set(\bpm, TempoClock.default.tempo*120);

Tdef(\MidiClock, { |e|
	var period, tick;
	("MIDI Clock start:"++(TempoClock.default.tempo*120)).postln;
	midiOut.start;
	inf.do{
		period = (60/e.bpm);
		tick = period/24;
		midiOut.midiClock;
		tick.wait;
	}
});

// Tdef(\MidiClock).stop
Tdef(\MidiClock).play;
