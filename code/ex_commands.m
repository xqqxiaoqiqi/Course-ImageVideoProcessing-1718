% Commands for exercises 1-6

%%%%% 1b
LENA_YUV = BUPT_format_converter(LENA_RGB);
LENA_Y = LENA_YUV(:,:,1);
LENA_RGB2 = BUPT_format_converter(LENA_YUV, 'inverse');
BABOON_YUV = BUPT_format_converter(BABOON_RGB);
BABOON_Y = BABOON_YUV(:,:,1);
BABOON_RGB2 = BUPT_format_converter(BABOON_YUV, 'inverse');
imwrite(uint8(LENA_Y), '../results/jpg/1b-LENA_Y.jpg');
imwrite(uint8(BABOON_Y), '../results/jpg/1b-BABOON_Y.jpg');
imwrite(uint8(LENA_RGB2), '../results/jpg/1b-LENA_recovered.jpg');
imwrite(uint8(BABOON_RGB2), '../results/jpg/1b-BABOON_recovered.jpg');
% pgmwrite(LENA_Y, l, 0, '1b-LENA_Y');
% pgmwrite(BABOON_Y, l, 0, '1b-BABOON_Y');
% ppmwrite(LENA_RGB2, l, 0, '1b-LENA_recovered');
% ppmwrite(BABOON_RGB2, l, 0, '1b-BABOON_recovered');


%%%%% 1c
LENA_grey_sub1 = BUPT_subsample(LENA_grey, 2, 1);
LENA_grey_sub2 = BUPT_subsample(LENA_grey, 1, 2);
LENA_grey_sub3 = BUPT_subsample(LENA_grey, 8, 2);
LENA_grey_sub4 = BUPT_subsample(LENA_grey, 4, 4);
imwrite(uint8(LENA_grey_sub1), '../results/jpg/1c-LENA_subsample2by1.jpg');
imwrite(uint8(LENA_grey_sub2), '../results/jpg/1c-LENA_subsample1by2.jpg');
imwrite(uint8(LENA_grey_sub3), '../results/jpg/1c-LENA_subsample8by2.jpg');
imwrite(uint8(LENA_grey_sub4), '../results/jpg/1c-LENA_subsample4by4.jpg');
% pgmwrite(LENA_grey_sub1, l, 0, '1c-LENA_subsample2by1');
% pgmwrite(LENA_grey_sub2, l, 0, '1c-LENA_subsample1by2');
% pgmwrite(LENA_grey_sub3, l, 0, '1c-LENA_subsample8by2');
% pgmwrite(LENA_grey_sub4, l, 0, '1c-LENA_subsample4by4');


%%%%% 2a
LENA_grey_quan2 = BUPT_quantise(LENA_grey,2);
BABOON_grey_quan8 = BUPT_quantise(BABOON_grey,8);
PEPPERS_grey_quan32 = BUPT_quantise(PEPPERS_grey,32);
PEPPERS_grey_quan128 = BUPT_quantise(PEPPERS_grey,128);
imwrite(uint8(LENA_grey_quan2), '../results/jpg/2a-LENA_grey_quan2.jpg');
imwrite(uint8(BABOON_grey_quan8), '../results/jpg/2a-BABOON_grey_quan8.jpg');
imwrite(uint8(PEPPERS_grey_quan32), '../results/jpg/2a-PEPPERS_grey_quan32.jpg');
imwrite(uint8(PEPPERS_grey_quan128), '../results/jpg/2a-PEPPERS_grey_quan128.jpg');
% pgmwrite(LENA_grey_quan2, l, 0, '2a-LENA_grey_quan2');
% pgmwrite(BABOON_grey_quan8, l, 0, '2a-BABOON_grey_quan8');
% pgmwrite(PEPPERS_grey_quan32, l, 0, '2a-PEPPERS_grey_quan32');
% pgmwrite(PEPPERS_grey_quan128, l, 0, '2a-PEPPERS_grey_quan128');


%%%%% 2b
LENA_Histo = BUPT_histogram(LENA_grey, l);
BABOON_Histo = BUPT_histogram(BABOON_grey, l);
PEPPERS_Histo = BUPT_histogram(PEPPERS_grey, l);


%%%%% 2c
LENA_equ = BUPT_equalise(LENA_grey, l);
BABOON_equ = BUPT_equalise(BABOON_grey, l);
PEPPERS_equ = BUPT_equalise(PEPPERS_grey, l);
imwrite(uint8(LENA_equ), '../results/jpg/2c-LENA_grey_equalised.jpg');
imwrite(uint8(BABOON_equ), '../results/jpg/2c-BABOON_grey_equalised.jpg');
imwrite(uint8(PEPPERS_equ), '../results/jpg/2c-PEPPERS_grey_equalised.jpg');
% pgmwrite(LENA_equ, l, 0, '2c-LENA_grey_equalised');
% pgmwrite(BABOON_equ, l, 0, '2c-BABOON_grey_equalised');
% pgmwrite(PEPPERS_equ, l, 0, '2c-PEPPERS_grey_equalised');


%%%%% 2d
[PEPPERS_grey_m1, PEPPERS_grey_m2] = BUPT_histo_model(LENA_grey, PEPPERS_grey);
imwrite(uint8(PEPPERS_grey_m1), '../results/jpg/2d-PEPPERS_grey_modelled.jpg');
imwrite(uint8(PEPPERS_grey_m2), '../results/jpg/2d-PEPPERS_grey_exponential modelled.jpg');
% pgmwrite(PEPPERS_grey_m1, l, 0, '2d-PEPPERS_grey_modelled');
% pgmwrite(PEPPERS_grey_m2, l, 0, '2d-PEPPERS_grey_exponential');


%%%%% 3a
LENA_grey_inverted = BUPT_invert(LENA_grey, l);
PEPPERS_grey_inverted = BUPT_invert(PEPPERS_grey, l);
BABOON_grey_inverted = BUPT_invert(BABOON_grey, l);
LENA_RGB_inverted = BUPT_invert(LENA_RGB, l);
PEPPERS_RGB_inverted = BUPT_invert(PEPPERS_RGB, l);
BABOON_RGB_inverted = BUPT_invert(BABOON_RGB, l);
imwrite(uint8(LENA_grey_inverted), '../results/jpg/3a-LENA_grey_inverted.jpg');
imwrite(uint8(PEPPERS_grey_inverted), '../results/jpg/3a-PEPPERS_grey_inverted.jpg');
imwrite(uint8(BABOON_grey_inverted), '../results/jpg/3a-BABOON_grey_inverted.jpg');
imwrite(uint8(LENA_RGB_inverted), '../results/jpg/3a-LENA_RGB_inverted.jpg');
imwrite(uint8(PEPPERS_RGB_inverted), '../results/jpg/3a-PEPPERS_RGB_inverted.jpg');
imwrite(uint8(BABOON_RGB_inverted), '../results/jpg/3a-BABOON_RGB_inverted.jpg');
% pgmwrite(LENA_grey_inverted, l, 0, '3a-LENA_grey_inverted');
% pgmwrite(PEPPERS_grey_inverted, l, 0, '3a-PEPPERS_grey_inverted');
% pgmwrite(BABOON_grey_inverted, l, 0, '3a-BABOON_grey_inverted');
% ppmwrite(LENA_RGB_inverted, l, 0, '3a-LENA_RGB_inverted');
% ppmwrite(PEPPERS_RGB_inverted, l, 0, '3a-PEPPERS_RGB_inverted');
% ppmwrite(BABOON_RGB_inverted, l, 0, '3a-BABOON_RGB_inverted');


%%%%% 3b

CZQ_RGBnamed = insertText(uint8(CZQ_RGB), [0,400], 'CHEN ZIQIAN', 'Font', 'Arial', 'FontSize', 72, 'TextColor', 'white', 'BoxOpacity', 0.0);
CZQ_YUVnamed = BUPT_format_converter(CZQ_RGBnamed);
CZQ_greynamed = CZQ_YUVnamed(:,:,1);
imshow(uint8(CZQ_RGBnamed)); title('I assume this is legit..');
figure, imshow(uint8(CZQ_greynamed)); title('I assume this is legit.. (greyscale vers)');
imwrite(uint8(CZQ_greynamed), '../results/jpg/3b-CZQ (my image).jpg');
% pgmwrite(CZQ_greynamed, l, 0, '3b-CZQ (my image)');

CZQ_tran_r30 = BUPT_transform(CZQ_greynamed, 30, 0);
CZQ_tran_r60 = BUPT_transform(CZQ_greynamed, 60, 0);
CZQ_tran_r120 = BUPT_transform(CZQ_greynamed, 120, 0);
CZQ_tran_rn50 = BUPT_transform(CZQ_greynamed, -50, 0);
imwrite(uint8(CZQ_tran_r30), '../results/jpg/3b-CZQ_rotated30.jpg');
imwrite(uint8(CZQ_tran_r60), '../results/jpg/3b-CZQ_rotated60.jpg');
imwrite(uint8(CZQ_tran_r120), '../results/jpg/3b-CZQ_rotated120.jpg');
imwrite(uint8(CZQ_tran_rn50), '../results/jpg/3b-CZQ_rotated-50.jpg');
% pgmwrite(CZQ_tran_r30, l, 0, '3b-CZQ_rotated30');
% pgmwrite(CZQ_tran_r60, l, 0, '3b-CZQ_rotated60');
% pgmwrite(CZQ_tran_r120, l, 0, '3b-CZQ_rotated120');
% pgmwrite(CZQ_tran_rn50, l, 0, '3b-CZQ_rotated-50');

CZQ_tran_s10 = BUPT_transform(CZQ_greynamed, 0, 10);
CZQ_tran_s40 = BUPT_transform(CZQ_greynamed, 0, 40);
CZQ_tran_s60 = BUPT_transform(CZQ_greynamed, 0, 60);
imwrite(uint8(CZQ_tran_s10), '../results/jpg/3b-CZQ_skewed10.jpg');
imwrite(uint8(CZQ_tran_s40), '../results/jpg/3b-CZQ_skewed40.jpg');
imwrite(uint8(CZQ_tran_s60), '../results/jpg/3b-CZQ_skewed60.jpg');
% pgmwrite(CZQ_tran_s10, l, 0, '3b-CZQ_skewed10');
% pgmwrite(CZQ_tran_s40, l, 0, '3b-CZQ_skewed40');
% pgmwrite(CZQ_tran_s60, l, 0, '3b-CZQ_skewed60');

CZQ_tran_r20_s50 = BUPT_transform(CZQ_greynamed, 20, 50);
CZQ_tran_s50_r20 = BUPT_transform(CZQ_greynamed, 20, 50, 's');
imwrite(uint8(CZQ_tran_r20_s50), '../results/jpg/3b-CZQ_rotated20 then skewed50.jpg');
imwrite(uint8(CZQ_tran_s50_r20), '../results/jpg/3b-CZQ_skewed50 then rotated20.jpg');
% pgmwrite(CZQ_tran_r20_s50, l, 0, '3b-CZQ_rotated20 then skewed50');
% pgmwrite(CZQ_tran_s50_r20, l, 0, '3b-CZQ_skewed50 then rotated20');


%%%%% 4a
BUPT_noise(uint8(LENA_grey), 'g', 0.05);
BUPT_noise(uint8(LENA_grey), 's');


%%%%% 4b
BUPT_up(LENA_RGB, 'n', 0.15);
BUPT_up(LENA_RGB, 'b', 0.15);
BUPT_up(LENA_RGB, 'both', 2);


%%%%% 5a
BUPT_lowpass(LENA_RGB, 50, 7);
BUPT_rect(LENA_RGB, [5,5]);

%%%%% 5b
BUPT_edge(LENA_RGB, 'p');

%%%%% 6
BUPT_log(LENA_RGB, 10, 3);


