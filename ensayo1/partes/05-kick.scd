/* voidfunction */

i[\kick]=INSTRUMENT(\kickElectro);
i[\kick].seq("1  1 :0.5 1xx").speed(4);
i[\kick][0].seq("1 1  :0.25 1 1").speed(4).do(2);
i[\kick][1].seq("1 1 :0.25 :0.5 1 1").speed(8);
i[\kick][2].seq(" 1 :0.25 :0.5 :0.5").speed(4);


i[\kick].fx=i.synths.fx.complex.reverbLPF;

i[\kick].seq(\fxSet,[
	(cutoff:200,wet:0.1,rv1:0.25, q: 0.01),
	(cutoff:500, rv1: 2/3, q:0.1 ),
	(cutoff:1500, rv2: 2/3, q:0.1 ),
	(cutoff:8000,q:1,rv1:1,rv2:1,wet:1),
]).speed(1);

i.synths.fx.keys;
