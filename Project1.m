

% creating audio recording parameters
Fs = 44100; 
nBits = 16; 
nChannels = 2; 
ID = -1;       % default audio input device 

% % defining the different sound files
% recObj1 = audiorecorder(Fs,nBits,nChannels,ID);
% recObj2 = audiorecorder(Fs,nBits,nChannels,ID);
% recObj3 = audiorecorder(Fs,nBits,nChannels,ID);

% % going through and recording each of the sound files
% disp("Begin speaking phrase 1.")
% recDuration = 6; % record for 6 seconds
% recordblocking(recObj1,recDuration);
% disp("End of recording 1.") %play(recObj1);
% disp("Begin speaking phrase 2.")
% recDuration = 6; % record for 6 seconds
% recordblocking(recObj2,recDuration);
% disp("End of recording 2.") %play(recObj2);
% disp("Begin speaking phrase 3.")
% recDuration = 6; % record for 6 seconds
% recordblocking(recObj3,recDuration);
% disp("End of recording 3.") %play(recObj3);



% plotting the recorded pharases 1-3 for QUESTION 1
subplot(3,1,1) % audio phrase 1
y1 = getaudiodata(recObj1);
plot(y1); xlabel('Duration (1:Fs*recDuration)/Fs)'); ylabel('Frequency (Hz)'); title('Phrase 1');
%subplot(3,1,2) % audio phrase 2
%y2 = getaudiodata(recObj2);
%plot(y2); xlabel('Duration (1:Fs*recDuration)/Fs)'); ylabel('Frequency (Hz)'); title('Phrase 2');
%subplot(3,1,3) % audio phrase 3
%y3 = getaudiodata(recObj3);
%plot(y3); xlabel('Duration (1:Fs*recDuration)/Fs)'); ylabel('Frequency (Hz)'); title('Phrase 3');



% QUESTION 2 ANALYZE LAB FIGURE



% % plotting the recorded phrases QUESTION 3
window = hamming(512);
N_overlap = 256;
N_fft = 1024;
% audio phrase 1
[S, F, T, P] = spectrogram(y1(:,1), window, N_overlap, N_fft, Fs, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor', 'none');
axis tight;
view(0,90);
colormap(jet);
set(gca, 'clim', [-80,-20]);
ylim([0 8000]); xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title(' Spectogram Phrase 1');
% % audio phrase 2
% [S, F, T, P] = spectrogram(y2(:,1), window, N_overlap, N_fft, Fs, 'yaxis');
% figure;
% surf(T, F, 10*log10(P), 'edgecolor', 'none');
% axis tight;
% view(0,90);
% colormap(jet);
% set(gca, 'clim', [-80,-20]);
% ylim([0 8000]); xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title(' Spectogram Phrase 2');
% % audio phrase 3
% [S, F, T, P] = spectrogram(y3(:,1), window, N_overlap, N_fft, Fs, 'yaxis');
% figure;
% surf(T, F, 10*log10(P), 'edgecolor', 'none');
% axis tight;
% view(0,90);
% colormap(jet);
% set(gca, 'clim', [-80,-20]);
% ylim([0 8000]); xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title(' Spectogram Phrase 3');



% % plotting the .wav files for QUESTION 4
load handel.mat % parameters
window = hamming(512);
N_overlap = 256;
N_fft = 1024;
% audio phrase 1
%Fs1 = 44100; 
%filename1 = 'phrase1.wav';
% audiowrite(filename1,y1,Fs1);
% clear y1 Fs1
%[y1,Fs1] = audioread(filename1);
%[S, F, T, P] = spectrogram(y1(:,1), window, N_overlap, N_fft, Fs1, 'yaxis');
%figure;
%surf(T, F, 10*log10(P), 'edgecolor', 'none');
%axis tight;
%view(0,90);
%colormap(jet);
%set(gca, 'clim', [-80,-20]); ylim([0 8000]); 
%xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title('Spectogram .wav File Phrase 1');
% audio phrase 2
%filename2 = 'phrase2.wav';
%Fs2 = 44100;
% audiowrite(filename2,y2,Fs2);
% clear y2 Fs2
%[y2,Fs2] = audioread(filename2);
%[S, F, T, P] = spectrogram(y2(:,1), window, N_overlap, N_fft, Fs2, 'yaxis');
%figure;
%surf(T, F, 10*log10(P), 'edgecolor', 'none');
%axis tight;
%view(0,90);
%colormap(jet);
%set(gca, 'clim', [-80,-20]); ylim([0 8000]); 
%xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title('Spectogram .wav File Phrase 2');
% audio phrase 3
%filename3 = 'phrase3.wav';
%Fs3 = 44100;
% audiowrite(filename3,y3,Fs3);
% clear y3 Fs3
%[y3,Fs3] = audioread(filename3);
%[S, F, T, P] = spectrogram(y3(:,1), window, N_overlap, N_fft, Fs3, 'yaxis');
%figure;
%surf(T, F, 10*log10(P), 'edgecolor', 'none');
%axis tight;
%view(0,90);
%colormap(jet);
%set(gca, 'clim', [-80,-20]); ylim([0 8000]); 
%xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title('Spectogram .wav File Phrase 3');



% QUESTION 5
% [monoWav,Fs] = audioread('phrase1.wav');
% zeroWav = zeros(size(monoWav));
% conWav = [monoWav, zeroWav];
% 
% writing the stero data into a file
% filename4 = 'team[]-stereosoundfile.wav'; 
% audiowrite(filename4,conWav,Fs);
% 
% plotting the spectrogram
% Fs4 = 44100; 
% [S, F, T, P] = spectrogram(conWav(:,1), window, N_overlap, N_fft, Fs4, 'yaxis');
% figure;
% surf(T, F, 10*log10(P), 'edgecolor', 'none');
% axis tight;
% view(0,90);
% colormap(jet);
% set(gca, 'clim', [-80,-20]); %ylim([0 8000]); 
% xlabel('Time (seconds)'); ylabel('Frequency (Hz)'); title('Spectogram Stero .wav File Phrase 1');





