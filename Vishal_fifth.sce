clc
clear all
x=input('Enter Sequence:')
N=input('Enter the length of DFT:')
P=length(x)
if N>P then
    x=[x,zeros(1,N-P)]
else
    x=x
end
disp(abs(fft(x,-1)),'direct')
stage=log2(N)

for levn=(stage-1):1
    L=2^levn
    for k=0:L:N-L
        for n=0:(L/2)-1
            w=exp(-imult(2*%pi*(n/L))
            
            A=x(n+k+1)
            B=x(n+k+(L/2)+1)
            x(n+k+1)=A+B
            x(n+k+(L/2)+1)=(A-B)*W
        end
    end
end
disp(x,'The final Sequence is:')

