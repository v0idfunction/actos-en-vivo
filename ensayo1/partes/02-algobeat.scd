(
i[\kick]=INSTRUMENT(i.synths.kicks.choose);
i[\kick].seq("1 :0.5 1xx  :1 1 :2 1").speed(4);

i.every(16,{
	i[\kick].seq(
		\synthdef,
		[
			i.synths.kicks.choose,
			i.synths.kicks.choose,
			i.synths.kicks.choose,
		]
	)
});

)


i[\kick].fx=i.synths.fx.keys.choose;
// i[\kick].fxSet(\delay,1.5)


(

	i[\hihat]=INSTRUMENT(i.synths.electro.hihat);
	i[\hihat][0].seq("1 :0.5 1xx  :1 1 :2 1").speed(8);
	i[\hihat][1].seq("1 :0.5 1xx  :1 1 :2 1").speed(16).maybe(3/4).do(1);
	i[\hihat][1].seq("1 :0.5 1xx  :1 1 :2 1").speed(1/2).maybe(3/4).do(1);

	i.every(16,{
		i[\hihat].seq(
			\synthdef,
			[
				i.synths.hihats.keys.choose,
				i.synths.hihats.keys.choose,
				i.synths.hihats.keys.choose,
			]
		)
	});

)
(
i[\hh]=INSTRUMENT(i.synths.hihats.choose);
i[\hh2]=INSTRUMENT(i.synths.hihats.choose);
i[\hh2].clock=1.5;

i.every(8, {
	i[\hh].seq("1xxxxxxxx").speed(8).maybe;
	i[\hh2].seq("1xxxxxxxx").speed(8).maybe;
});
)
