// chuck this with other shreds to record to file
// example> chuck foo.ck bar.ck rec (see also rec2.ck)

// pull samples from the dac
dac => Gain g => WvOut w => blackhole;
// this is the output file name
if(me.args())me.arg(0)=>w.wavFilename;
else"foo.wav"=>w.wavFilename;
<<<"writing to file: ",w.wavFilename()>>>;
// any gain you want for the output
.5 => g.gain;

// infinite time loop...
// ctrl-c will stop it, or modify to desired duration
5::second => now;