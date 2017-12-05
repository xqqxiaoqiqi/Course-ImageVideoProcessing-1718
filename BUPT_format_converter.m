function [ out ] = BUPT_format_converter( in )
%Transforms images from colour to grey-scale using the YUV conversion
%   Input Parameters:
%           in: 3-dimensional RGB data matrix
%   Output Parameters:
%           out: 3-dimensional YUV data matrix

R = in(:,:,1);
G = in(:,:,2);
B = in(:,:,3);

Y = floor( 0.257*R + 0.504*G + 0.098*B + 16 );
U = floor( -0.148*R - 0.291*G + 0.439*B + 128 );
V = floor( 0.439*R - 0.368*G - 0.071*B + 128 );

out = cat(3,Y,U,V);

end

