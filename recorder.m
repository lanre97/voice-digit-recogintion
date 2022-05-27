baseNumber=0;
Fs=8000;
t=1;
nbits=16;
nChannel=1;

i=9;

for j=baseNumber:baseNumber+100
    disp('Presiona una tecla para grabar...');
    w = waitforbuttonpress;
    sig = audiorecorder(Fs, nbits, nChannel);
    disp("Grabando..."+i);
    recordblocking(sig,t);
    voz_usuario = getaudiodata(sig);
    audiowrite("dataset/"+i+"/"+j+".wav",voz_usuario,Fs)
    disp('Grabado!');
end