(

	i.bass=INSTRUMENT(i.synths.bassTrance2);

	i.bass[0].note("0 2   3 ").pyramid.mirror;



	i.bass[0].note("0 2   :0.5   12 14").x(3);
	i.bass[1].note("0 2 3   :0.5   12 14").x(1);
	i.bass.seq(\rel,"0.25       3.5").speed(1/6);
	i.bass.seq(\att,"0.001     0.95 0.25 ").speed(1/3);




i.bass.go(0);
i.clap.go(0);

i.bass[0].duration


i.bass[0].note("0 2  3 6").x(2);
i.bass[1].note("7 9   10").x(4).speed(2);
i.bass[2].note("15  19 21").x(6).speed(3);
i.bass.clock=1.5;
i.bass[2].set(\rel,1/2)
i.bass[2].set(\att,1/3)


i.modebeat=(
	kick:INSTRUMENT(i.synths.sos.kick),
	hihat:INSTRUMENT(i.synths.sos.hihat),
	snare:INSTRUMENT(i.synths.sos.snare)
)

i.modebeat.kick[0].seq("0.75 :1/4 0.95xx  ").speed(2);
i.modebeat.kick[1].seq("0.75 :1/4  0.95xx ").speed(2);
i.modebeat.kick[2].seq("0.75 :1/4   0.95xx").speed(2);
i.modebeat.hihat.seq(":1/3 1xx  1xx  :1/2  1xx ");
i.modebeat.snare.seq(":1/3 1xx").speed(1/4);

i.kick.clock=1


i.modebeat.go(0);
i.bass.go(0);

}
