clf
N=4;
N0over2 = 3; %power spectral density of white noise W/Hz
subplot(211)
plot([-400,400],N0over2*ones(1,2))
ak_add3dots
xlabel('f (Hz)'); ylabel('S_x(f)  (W/Hz)');
subplot(212)
Fs = 200; %sampling frequency (Hz)
power_x = N0over2 * Fs; %noise power in Watts
w=linspace(0,2*pi,N);
plot(w,power_x*ones(1,N))
myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; axis(myaxis);
xlabel('\Omega (rad)'); ylabel('S_x(e^{j \Omega})  (W/\Omega)');
writeEPS('awgn_continuous_discrete')

clf
subplot(211)
randn('state',0); % reset seed for randn generator
snip_frequency_noise_PSD
%hold on; h=plot(w,Sx_th,'r:','lineWidth',3); %plot the theoretical PSD
%myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; axis(myaxis);
axis tight
legend('Scaled periodogram','Theoretical')
makedatatip(h,10);
%xlabel('\Omega (rad)');
ylabel('S(e^{j \Omega})');
title('Estimated with N = 300 samples')
%increase N
subplot(212)
randn('state',0)
N = 3000; % number of samples
power_x = 600; %desired noise power in Watts
x=sqrt(power_x) * randn(1,N); %Gaussian white noise
actualPower = mean(x.^2) %the actual obtained power 
[Sk,w]=periodogram(x); %Periodogram (unilateral) calculation
plot(w,2*pi*Sk); %plot scaled periodogram
Sx_th=power_x*ones(1,length(w)); %theoretical PSD
hold on; h = plot(w,Sx_th,'r:','lineWidth',3);
%myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; axis(myaxis);
axis tight
%legend('Periodogram','theoretical')
xlabel('\Omega (rad)'); ylabel('S(e^{j \Omega})');
title('Estimated with N = 3000 samples')
makedatatip(h,30);
writeEPS('periodogram','font12Only')

clf
%a)
snip_frequency_pwelch  %estimates for PSD M=32 samples
subplot(211)
plot(w,2*pi*Sk) %scaled periodogram is discrete-time PSD
hold on, plot(w,power_x*ones(1,length(w)),'r') %PSD theoretical value
myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; myaxis(3)=0;
axis(myaxis);
ylabel('S(e^{j \Omega})');
title('Periodograms of M = 32 samples')
legend('PSD via periodogram averaging','Theoretical PSD value','Location','SouthWest')
%b)
Nfft = 256; %segment length M and also FFT dimension
Sx_th=power_x*ones(1,N); %PSD theoretical expression
[Sk,w]=pwelch(x,hamming(Nfft),Nfft/2,Nfft,Fs,'twosided');
subplot(212)
plot(w,2*pi*Sk); hold on %discrete-time PSD is periodogram scaled by 2*pi
plot(w,power_x*ones(1,length(w)),'r')
myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; myaxis(3)=0;
axis(myaxis);
xlabel('\Omega (rad)'); ylabel('S(e^{j \Omega})');
title('Periodograms of M = 256 samples')
writeEPS('welch_awgn_3000')

clf
snip_frequency_filtered_noise_PSD
myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; myaxis(3)=0;
axis(myaxis);
xlabel('\Omega (rad)'); ylabel('S_y(e^{j \Omega})');
legend('PSD via Welch','Theoretical')
writeEPS('periodogram_of_pulse')

clf
snip_frequency_PSD_using_xcorr
N = 3000; %total number of signal samples
L = 4; %number of non-zero samples of h[n]
power_x = 600; %noise power in Watts
x=sqrt(power_x) * randn(1,N); %Gaussian white noise
h=ones(1,L); %shaping pulse with square waveform
y=conv(h,x); %filter signal x with filter
H=fft(h,4*N); %DTFT (sampled) of the impulse response
Sy_th=power_x*abs(H).^2; %PSD theoretical expression
M=256; %maximum number of lags
[Ry,lags]=xcorr(y,M,'biased'); %estimating autocorrelation
Sy_corr=abs(fft(Ry)); %take magnitude of DTFT (sampled)
if 0 %no need for DFT estimation
    Nfft = 256; %segment length M and also FFT dimension
    Fs = 1; %sampling frequency = 1 because discrete-time PSD
    Sy_dft=pwelch(y,hamming(Nfft),Nfft/2,Nfft,Fs,'twosided');
end
%plot:
%w=linspace(0,2*pi,length(Sy_dft)); %create abscissa
w=linspace(0,2*pi,length(Sy_corr));
plot(w,Sy_corr); hold on
myaxis = axis; myaxis(1)=0; myaxis(2)=2*pi; myaxis(3)=0;
axis(myaxis);
xlabel('\Omega (rad)'); ylabel('S_x(e^{j \Omega}) (W/rad)');
w2=linspace(0,2*pi,length(H));
plot(w2,Sy_th,'r:')
legend('PSD via xcorr','theoretical')
writeEPS('psd_of_pulse_via_xcorr')
