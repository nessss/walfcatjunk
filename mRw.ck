MidiRW mRw;
MidiMsg msg;
MidiMsg msg2;
mRw.open("foo.midi");
0xb0=>msg.data1;
0x40=>msg.data2;
for(int i;i<128;i++){
	0xb0=>msg.data1;
	0x40=>msg.data2;
	i=>msg.data3;
	mRw.write(msg,now);
	1::ms=>now;
}
	
for(int i;i<128;i++){
	mRw.read(msg2);
	<<<msg2.data1,msg2.data2,msg2.data3>>>;
}
mRw.close();