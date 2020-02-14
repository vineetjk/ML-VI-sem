org =imread("ka.jpg");
subplot(3,3,1);
imshow(org);
bw1= im2bw(org);
subplot(3,3,2);
imshow(bw1);
bw2 = im2bw(org,0.3);
subplot(3,3,3);

imshow(bw2);
