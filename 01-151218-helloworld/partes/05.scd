// void function
// hello world
// 5 / 12


~mix = ~btk;

~btk.quant = 4;

~btk[0] = {|amp=0.8| CaosKick.robot(t:~tempo.kr/[2,3],tp:[0,3,4]/8,rel:[2,3]) / 3 * amp ! 2 };
