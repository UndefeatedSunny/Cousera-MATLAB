function [output]= echo_gen(input,fs,delay,amp)
[r,c] = size(input);
extraEchoTime = round(delay*fs);
echoSignal = zeros(r+extraEchoTime,1);
addEchoSignal = echoSignal ;
for i=1:r
    echoSignal(extraEchoTime+i,1) =input(i,1)*amp ;
    addEchoSignal(i) = input(i);
end
addEchoSignal = addEchoSignal + echoSignal ;
range = abs(addEchoSignal) ;
maxrange = max(range);
if maxrange>1
    addEchoSignal = addEchoSignal/maxrange;
end
output = addEchoSignal ;
end
