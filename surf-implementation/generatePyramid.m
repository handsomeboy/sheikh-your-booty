function pyramid = generatePyramid(filter_sizes, I)

    pyramid = zeros(size(I,1),size(I,2), length(filter_sizes));
  %  for i = 1:length(filter_sizes)
  i=1;
        temp = hessian(filter_sizes(i), I);
        temp(temp<mean2(temp)) = 0;
        imshow(temp);
        pyramid(:,:,i) = temp;%pyramid(:,:,i)/max(max(pyramid(:,:,i)));
   % end
end