s.options.memSize=2048*1024;
s.options.maxNodes=128*1024;

s.boot;

i = INSTRUMENT().play;

i.kkrr=INSTRUMENT(i.synths.electro.kick);

i.kkrr.seq("0.3xx  0.3xx :0.5 0.3xx  0.3xx :0.25 0.3xx").speed(48).x(32);
i.kkrr.seq("0.3xx  0.4xx :0.5 0.3xx  0.4xx :0.25 0.3xx").speed(48).x(32);
i.kkrr.seq("0.3xx  1xx :0.5 0.3xx  0.4xx :0.25 0.3xx").speed(48).x(32);

i.kkrr.clock=1;
i.kkrr.clock=0.9;
i.kkrr.clock=0.8;
i.kkrr.clock=1/48;
i.kkrr.clock=1/12;
i.kkrr.clock=1/3;
i.kkrr.clock=1/2;
i.kkrr.clock=1;
i.kkrr.stop;
// i.kkrr.clock=
