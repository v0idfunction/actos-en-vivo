

i[\bass]=INSTRUMENT(\bassSmooth);
i[\bass].octave=2;
i[\bass].mode=\mono;
i.map(m.mpk_mk2.piano,i[\bass],\note);

i[\dist]=INSTRUMENT(\distNote1)
i[\dist].octave=2
i.map(m.mpk_mk2.pads,i[\dist],\note);
