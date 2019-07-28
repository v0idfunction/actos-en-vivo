i.autoMIDI();

	i.drums = (
		kick: INSTRUMENT(i.synths.electro.kick),
		hihat: INSTRUMENT(i.synths.electro.hihat),
		clap: INSTRUMENT(i.synths.electro.clap),
		snare: INSTRUMENT(i.synths.electro.snare),
		cymbal: INSTRUMENT(i.synths.drums.cymbal),
	);

	i.drums.kick.seq("1 :0.5 1xx");
	i.drums.hihat.seq(" 1").speed(2);
	i.drums.clap.seq(" 1 :2 1 :0.25 1xxx ");
	i.drums.snare.seq(" 1  1 :0.5 1xxx ").speed(1/1.5);
	i.drums.cymbal.seq("1 :0.5 1xx 1 :0.25 1xxx ").speed(1/12);

	i.drums.clock=3;

	i.every(2,{
		i.drums.chooseInstrument(1.0.rand+0.001);
	});

	i.when(12,{
		i.stop;
	});
