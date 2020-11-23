% Cargando imagen
clear
img = imread('lena.jpg'); imwrite(mat2gray(img,[0 255]),'lena.png');

%%%%% Ejercicio1 %%%%%

%Sobremuestreo 2x2
sobre2 = upsample(img,2);
sobre2 = rot90(sobre2);
sobre2 = upsample(sobre2,2);
sobre2 = rot90(sobre2,-1); imwrite(mat2gray(sobre2),'1_sobre2.png');

%Sobremuestreo 4x4
sobre4 = upsample(img,4);
sobre4 = rot90(sobre4);
sobre4 = upsample(sobre4,4);
sobre4 = rot90(sobre4,-1); imwrite(mat2gray(sobre4),'1_sobre4.png');

%Magnitud del espectro de DFT 2x2
sobre2_dft = fft2(sobre2);
sobre2_dft = abs(sobre2_dft);
sobre2_dft = log(sobre2_dft + 1);
sobre2_dft = fftshift(sobre2_dft); imwrite(mat2gray(sobre2_dft),'1_sobre2dft.png');

%Magnitud del espectro de DFT 4x4
sobre4_dft = fft2(sobre4);
sobre4_dft = abs(sobre4_dft);
sobre4_dft = log(sobre4_dft + 1);
sobre4_dft = fftshift(sobre4_dft); imwrite(mat2gray(sobre4_dft),'1_sobre4dft.png');

%Magnitud del espectro DFT original con shift
img_dft = fft2(double(img));
img_dft = abs(img_dft);
img_dft = log(img_dft + 1);
img_dft_shift = fftshift(img_dft); imwrite(mat2gray(img_dft_shift),'1_dft_shift.png' );
