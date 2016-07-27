system('rm calibmat.txt');

% ブロックの中心座標（実測）
Pm = [0.3  -0.2  -0.02;
      0.5  -0.15  -0.02;
       0.5  0.1  -0.02;
       0.3  0.2  -0.02]';

% （Kinectでの計測から）
kPm = [0.1436 0.07616 1.243
       0.2899 0.02319 1.104
       0.2784 -0.2343 1.097
      0.1322 -0.3294 1.238]';

[t,R] = callSVD(Pm,kPm);
% 
% Pm = [0.3 -0.2 0.745;
%       0.3 0.15 0.745;
%       0.5 -0.1 0.745;
%       0.5 0.1 0.745]';
% 
% kPm = [0.2651 -0.2430 0.7389;
%       0.2349 0.1034 0.7501;
%       0.4596 -0.1217 0.7451;
%       0.4393 0.0760 0.7474]';
% 
% [t,R] = callSVD(Pm,kPm);
% 
% Pm = [0 0 0;
%       1 0 0;
%       0 1 0;
%       0 0 1]';
% 
% kPm = [0 0 0;
%       1 0 0;
%       0 1 0;
%       0 0 1]';
% 
% [t,R] = callSVD(Pm,kPm);

