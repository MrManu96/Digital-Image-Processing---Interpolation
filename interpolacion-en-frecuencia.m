%%%%% Ejercicio3 %%%%%
%Magnitud del espectro DFT sin shift
imwrite(mat2gray(img_dft), '3_dft.png'); img_dft_shift = fftshift(fft2(img));

%Sobremuestreo de 2x2
img_dft_pad2 = padarray(img_dft_shift,[256 256],0,'post'); imwrite(mat2gray(log(abs(img_dft_pad2) + 1)), '3_dft_pad2.png');

%Sobremuestreo de 4x4
img_dft_pad4 = padarray(img_dft_shift,[768 768],0,'post'); imwrite(mat2gray(log(abs(img_dft_pad4) + 1)), '3_dft_pad4.png');

%Transformada inversa 2x2
inversa2 = ifft2(img_dft_pad2);
inversa2 = abs(inversa2); imwrite(mat2gray(inversa2), '3_inversa2.png');

%Transformada inversa 4x4
inversa4 = ifft2(img_dft_pad4);
inversa4 = abs(inversa4); imwrite(mat2gray(inversa4), ‘3_inversa4.png');
