% For this exercise, the two sinewaves need to have the same duration.
% As above, we need a sample rate, and a time sequence.
f = 20000;
T= 1/f;
tmax= 2;
t = T : T : tmax;
% We will make two signals at two different frequencies.
% Each signal can have its own amplitude - basically we can multiply
% by any value we want. Obviously, if we multiply by 0, we will get no
% signal, and 0.5, we'll get 1/2 amplitude. 1 will be the original amplitude.
% In the example here, we have 4 Hz difference in frequencies, and the second signal
% is 1/2 the amplitude of the first.
freq1 = 1000;
freq2 = 1004;
amp1 = 1;
amp2 = 0.5;
% Make the two sinewaves
wave1 = sin(t*2*pi*freq1) * amp1;
wave2 = sin(t*2*pi*freq2) * amp2;
% Now add them together and plot the result
addwav = wave1 + wave2;
plot(t, addwav);
