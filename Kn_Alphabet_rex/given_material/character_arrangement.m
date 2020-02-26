clc
clear
close all

num_of_alphabets = dir('Raw Images/Alphabet_*');

for i=1:size(num_of_alphabets,1)
% looping over the folders inside the Raw Images

    num_of_im = dir(strcat('Raw Images/',num_of_alphabets(i).name,'/Im*'));

    for j=1:size(num_of_im,1)
    % looping over the images inside a single alphabet folder

        im = rgb2gray(imread(strcat(num_of_im(1).folder,'/',num_of_im(j).name)));
        [len, wid] = size(im);
        im_count=0;
        for k2 = 1:5
            for k1 = 1:10

                im_count = im_count+1;

                % crop the image
                temp = im((int16(len/5)*(k2-1))+1:int16(len/5)*k2, (int16(wid/10)*(k1-1))+1:int16(wid/10)*k1);

                % Resize to 28x28
                temp = imresize(temp, [28,28]);

                %store it in a 3D matrix
                mat_3D(:,:, im_count)= temp;
            end
        end
    end
end