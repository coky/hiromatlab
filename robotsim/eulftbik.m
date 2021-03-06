function baseyaw = eulftbik(pos)
% eurgtbik means the euristic ik of robot base for the left hand
%
% - input -
% ----
% - pos - the position of the object in world coordinate system, in degree
%
% author: Weiwei
% date: 20160222

    baseyaw = (atan2(pos(2), pos(1)) - asin(0.145/norm(pos(1:2))))*180/pi;

end