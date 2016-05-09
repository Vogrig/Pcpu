
(
SynthDef(\test,{|freq=440|
	var sig,in,env;
	in = In.ar(0)+0.001;
	env = EnvGen.ar(Env.perc(),doneAction:2);
	sig = LFNoise2.ar(freq);
	Out.ar(0,Pan2.ar(sig*env)*0.5);
}).add;
)

Pbind(\instrument,\test, \freq, Pcpu(s,inf)*10, \dur, 0.01).play;