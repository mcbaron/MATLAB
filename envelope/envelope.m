% This is a demo of envelope detection. It is distributed on mcbaron.org,
% and uses a 11 second sample from the song "Maneater" by Hall & Oats,
% which should be distributed with this matlab script.
%
% This demo is based off of the one present at
% http://www.mathworks.com/help/dsp/examples/envelope-detection.html

hsin = dsp.AudioFileReader('audio.wav');


Fs = hsin.SampleRate; 
numSamples = 11000;
DownsampleFactor = 15;
frameSize = 10*DownsampleFactor;

%hsin = dsp.SineWave( [0.4 1], [10 200], 'SamplesPerFrame', frameSize, 'SampleRate', Fs);


hlowpass1 = dsp.FIRFilter('Numerator', firpm(20, [0 0.03 0.1 1], [1 1 0 0]));

N = 60; %Filter order
hhilbert = dsp.FIRFilter('Numerator', firpm(N, [0.01 .95],[1 1],'hilbert'));
hdelay = dsp.Delay('Length',N/2);
hlowpass2 = dsp.FIRFilter('Numerator', firpm(20, [0 0.03 0.1 1], [1 1 0 0]));
hts1 = dsp.TimeScope(...
    'NumInputPorts', 2, ...
    'Name', 'Envelope detection using Amplitude Modulation', ...
    'SampleRate', [Fs Fs/DownsampleFactor], ...
    'TimeDisplayOffset', [(N/2+frameSize)/Fs 0], ...
    'TimeSpanSource', 'Property', ...
    'TimeSpan', 0.45, ...
    'YLimits', [-2.5 2.5]);

pos = hts1.Position;

hts2 = dsp.TimeScope(...
    'NumInputPorts', 2, ...
    'Name', 'Envelope detection using Hilbert Transform', ...
    'Position', [pos(1)+pos(3) pos(2:4)], ...
    'SampleRate', [Fs Fs/DownsampleFactor], ...
    'TimeDisplayOffset', [(N/2+frameSize)/Fs 0], ...
    'TimeSpanSource', 'Property', ...
    'TimeSpan', 0.45, ...
    'YLimits', [-2.5 2.5]);


for i=1:numSamples/frameSize
    sig = step(hsin);
    sig = (1+sig(:,1)).*sig(:, 2);     % Amplitude modulation
    
    % Envelope detector by squaring the signal and lowpass filtering
    sigsq = 2*sig.*sig;
    sigenv1 = sqrt(step(hlowpass1, downsample(sigsq, DownsampleFactor)));
    
    % Envelope detector using the Hilbert transform in the time domain
    sige = abs(complex(0, step(hhilbert, sig)) +  step(hdelay, sig));
    sigenv2 = step(hlowpass2, downsample(sige, DownsampleFactor));
    
    % Plot the signals and envelopes
    step(hts1, sig, sigenv1);
    step(hts2, sig, sigenv2);
end