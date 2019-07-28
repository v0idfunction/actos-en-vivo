(

	var midi;
	var inMidiDevicesNames;
	var outMidiDevicesNames;
	var specs = IdentityDictionary.new;


	// x = ();

	// x.modeMatrix = ModeMatrix.new();


	(thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/midimix/midimix.map.scd").load;

	specs[ b[\name].asSymbol ] = b;

	// (thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/launchpad_mini/launchpad_mini.map.scd").load;
	// specs[ o[\name].asSymbol ] = o;

	Tdef(\MIDI, { 1.do {

		MIDIClient.init(verbose:false);

		4.wait;

		"----".postln;
		"MIDIClient: initializing...".postln;
		"----".postln;

		i.startMidi();

		midi = i.controllerManager.midi;

		3.wait;

		inMidiDevicesNames = (thisProcess.nowExecutingPath.dirname ++ "/../../../midi/devices-in.scd").load;

		outMidiDevicesNames = (thisProcess.nowExecutingPath.dirname ++ "/../../../midi/devices-out.scd").load;

		midi.addDevices( inMidiDevicesNames, specs );

		"MIDI: added devices.".postln;

		1.wait;

		m=();

		if( i.midi.mpk_mini_mk_ii.notNil ) {
			(thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/mpk_mk2/mpk_mk2.namespace.scd").load;
		};

		if( i.midi.midi_mix.notNil ) {
			(thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/midimix/midimix.namespace.scd").load;
		};


		// (thisProcess.nowExecutingPath.dirname ++ "/../../../midi/controllers/launchpad_mini/launchpad_mini.namespace.scd").load;

		1.wait;



		CmdPeriod.add({MIDIClient.disposeClient;});

		// i.map(
		// 	i.midi.launchpad_mini.groups.buttons.controllers.buttons,
		// 	x.modeMatrix,
		// 	\note
		// );
		//
		//
		// x.modeMatrix.midiTarget = i.midi.launchpad_mini;
		//
		//
		// i.data.modeMatrix = x.modeMatrix;
		//



		// 72.do{|j|
		// 	i.midi.launchpad_mini.send(j,90+24.rand+(j%32));
		// };
		// Array.series(8,8,9).collect{|num|
		// 	i.midi.launchpad_mini.send(num,3);
		// 	// 0.25.wait;
		// };

		"".postln;
		"".postln;
		"-------------------------".warn;
		"".postln;
		"".postln;

		if( e.isKindOf(Environment), {
			e['readyMessage'].postln;
		}, {
			"R E A D Y".postln;
		});

		"".postln;
		"".postln;
		"-------------------------".warn;
		"".postln;
		"".postln;






	}});


	Tdef(\MIDI).play;

	"Initializing MIDI...".postln;

)
