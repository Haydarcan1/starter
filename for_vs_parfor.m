% for-loop vs par-for-loop example
%
%
%% for loop

tic
for k = 1:10^8
    X(k) = cos(k*2*pi/10^8);
end
toc

%% parfor loop


delete(gcp('nocreate'))

parpool(4) 
tic
parfor k = 1:10^8
    X(k) = cos(k*2*pi/10^8);
end
toc