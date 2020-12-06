
% folder='C:\Users\Manoj\Desktop\2018\recon\layer2';
% shuttleVideo = VideoReader('C:\Users\Manoj\Desktop\2018\mks_out.avi');
% imageNames = dir(fullfile(folder,'images','*.png'));
% imageNames = {imageNames.name}';
% outputVideo = VideoWriter(fullfile(folder,'shuttle_out.avi'));
% outputVideo.FrameRate = shuttleVideo.FrameRate;
% open(outputVideo)
% for ii = 1:length(imageNames)
%    img = imread(fullfile(folder,'images',imageNames{ii}));
%    writeVideo(outputVideo,img)
% end
% close(outputVideo)

% Create a video writer object
cd 'C:\Users\Manoj\Desktop\2018\videoWrite\out\out\'
writerObj = VideoWriter('Video.avi');

% Set frame rate
writerObj.FrameRate = 25;

% Open video writer object and write frames sequentially
open(writerObj)

%%
% text_str='Spatiotemporal Deep Networks for Detecting Abnormality in Videos \n Multimedia Tools and Applications';

Text = sprintf('Spatiotemporal Deep Networks for Detecting Abnormality in Videos \nMultimedia Tools and Applications \nIIT Kharagpur \nmanojsharma.net@gmail.com');
H = vision.TextInserter(Text);
H.Color = [1.0 1.0 0.5];
% H.Color = 'red';
H.FontSize = 10;
H.Location = [5 25];
% I = im2double((imread('football.jpg')));
% InsertedImage = step(H, I);
% imshow(InsertedImage);
%%
% for i = 1:50 
for i = 1:1962                   % Some number of frames

num= sprintf('Img%04d.png',i);

frame=num;

     input = imread(frame);
%      J = insertText(input, [5 5 ], 'Spatiotemporal Deep Networks for Detecting Abnormality in Videos\nMultimedia Tools and Applications');

box_color = {'yellow'};

% J = insertText(input,[5 25 ],text_str,'FontSize',8,'BoxOpacity',0.2,'TextColor','white');

InsertedImage = step(H, input);
writeVideo(writerObj, InsertedImage);

end

% Close the video writer object
close(writerObj);

% 'Video.avi' will be created in the folder that contains the code.