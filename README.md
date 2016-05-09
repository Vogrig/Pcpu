# Pcpu
SC pattern - Get peak and average CPU usage

# examples

    (
    var a;
    a = Pcpu(s, inf);
    a.asStream.nextN(1000).plot;
    )


    // sound example

    (
    SynthDef(\test,{|freq=440|
      var sig,in,env;
      env = EnvGen.ar(Env.perc(),doneAction:2);
      sig = LFNoise2.ar(freq);
      Out.ar(0,Pan2.ar(sig*env)*0.5);
    }).add;
    )

    Pbind(\instrument,\test, \freq, Pcpu(s,inf)*10, \dur, 0.01).play;

