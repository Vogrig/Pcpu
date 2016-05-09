Pcpu : Pattern {
	var <server,<>length;
	*new { arg server,length=inf;
		server = server ? Server.default;
		^super.newCopyArgs(server,length)
	}
	storeArgs { ^[server,length] }
	embedInStream { arg inval;
		length.value(inval).do({
			inval = server.avgCPU.yield;
		});
		^inval;
	}
}
