(
	s.options.memSize=2048*1024;
	s.options.maxNodes=128*1024;
	s.boot;
)


m=MandelHub.start("furenku")
m.clear


(thisProcess.nowExecutingPath.dirname ++ "/tools/setup/setup.scd").load;

CountDown.new(20,10,"Total Time").play;
