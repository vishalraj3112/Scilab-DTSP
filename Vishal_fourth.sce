clc
clear all;
x=input('Enter sequence:')
N=input('Enter the length of Dft:')
p=length(x)

if N>p then
    x=[x,zeros(1,N-p)]
else
    x=x;
end

stage=log2(N)

for levn=1:stage;
    L=2^(levn)
    for k=0:L:N-L
        for n=0:(L/2)-1;
            w=exp(-imult(2*%pi*n/L))
            A=x(n+k+1)
            B=x(n+k+(L/2)+1)*w
            x(n+k+1)=A+B
            x(n+k+(L/2)+1)=A-B
    end
end
end
disp(x,'This is the sequence')

