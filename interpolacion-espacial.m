%%%%% Ejercicio2 %%%%%
%Interpolacion de orden cero 2x2
filtro02 = ones(2,2);
inter_cero2 = imfilter(sobre2,filtro02); imwrite(mat2gray(inter_cero2),'2_inter_cero2.png ');

%Interpolacion de orden cero 4x4
filtro04 = ones(4,4);
inter_cero4 = imfilter(sobre4,filtro04); imwrite(mat2gray(inter_cero4),'2_inter_cero4.png ');

%Interpolacion lineal 2x2
filtro12 = [(1/4),(1/2),(1/4); (1/2),1,(1/2);
(1/4),(1/2),(1/4)];
inter_lin2 = imfilter(sobre2,filtro12); imwrite(mat2gray(inter_lin2),'2_inter_lin2.png');

%Interpolacion lineal 4x4
filtro14 = [(1/16),(1/8),(1/4),(1/8),(1/16); (1/8),(1/4),(1/2),(1/4),(1/8);
(1/4),(1/2),1,(1/2),(1/4); (1/8),(1/4),(1/2),(1/4),(1/8); (1/16),(1/8),(1/4),(1/8),(1/16)];
inter_lin4 = imfilter(sobre4,filtro14); imwrite(mat2gray(inter_lin4),'2_inter_lin4.png');

%Interpolacion cubica 2x2
filtro32 = fcubic(2);
inter_cub2 = imfilter(sobre2,filtro32); imwrite(mat2gray(inter_cub2),'2_inter_cub2.png') ;

%Interpolacion cubica 4x4
filtro34 = fcubic(4);
inter_cub4 = imfilter(sobre4,filtro34); imwrite(mat2gray(inter_cub4),'2_inter_cub4.png') ;

%Magnitud de los espectros de DFT 2x2
cero2_dft = fft2(inter_cero2);
cero2_dft = abs(cero2_dft);
cero2_dft = log(cero2_dft + 1);
cero2_dft = fftshift(cero2_dft); imwrite(mat2gray(cero2_dft),’2_cero2dft.png');
lin2_dft = fft2(inter_lin2);
lin2_dft = abs(lin2_dft);
lin2_dft = log(lin2_dft + 1);
lin2_dft = fftshift(lin2_dft); imwrite(mat2gray(lin2_dft),’2_lin2dft.png');
cub2_dft = fft2(inter_cub2);
cub2_dft = abs(cub2_dft);
cub2_dft = log(cub2_dft + 1);
cub2_dft = fftshift(cub2_dft); imwrite(mat2gray(cub2_dft),'2_cub2dft.png');

%Magnitud de los espectros de DFT 4x4
cero4_dft = fft2(inter_cero4);
cero4_dft = abs(cero4_dft);
cero4_dft = log(cero4_dft + 1);
cero4_dft = fftshift(cero4_dft); imwrite(mat2gray(cero4_dft),’2_cero4dft.png');
lin4_dft = fft2(inter_lin4);
lin4_dft = abs(lin4_dft);
lin4_dft = log(lin4_dft + 1);
lin4_dft = fftshift(lin4_dft); imwrite(mat2gray(lin4_dft),’2_lin4dft.png');
cub4_dft = fft2(inter_cub4);
cub4_dft = abs(cub4_dft);
cub4_dft = log(cub4_dft + 1);
cub4_dft = fftshift(cub4_dft); imwrite(mat2gray(cub4_dft),'2_cub4dft.png');
