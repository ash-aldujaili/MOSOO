 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script computes the theoretical loss and indicator bound of MOSOO
% as a function of the number of iterations, you need symbolic math package.
% when h_max was set to two
% Author: Abdullah Al-Dujaili, 2016
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Max depth of the tree during was obtained numerically, run obtain numerically from the settings
% stored as H.
% as h_max(t) is defined here as minimum depth + 2 
H{1,1} = [2;2;3;4;5;6;7;8;9;10];
H{1,2} = [2;2;3;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8];
H{1,3} = [2;2;3;3;3;3;4;4;4;4;4;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;9;9;9];
H{1,4} = [2;2;3;3;3;3;3;3;3;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9];


H{2,1} = [2;2;3;3;3;3;4;4;4;4;4;4;4;4;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;9;9;9;9;9;9;9;9;9;9];

H{2,2} = [2;2;3;3;3;3;4;4;4;4;4;4;4;4;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8];
H{2,3} = [2;2;3;3;3;3;4;4;4;4;4;4;4;4;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9];
H{2,4} = [2;2;3;3;3;3;3;3;3;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;4;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;5;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;7;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;8;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9];

% over the dimensions 1,2
ns = [1,2];
m = 2;
% To obtain different settings, Psi:
opt1_vals = [0 0.21 0.47 0.57];
opt2_vals = [1 0.81 0.61 0.57];
% DONT CHANGE THE VALUES BELOW / ANY CHANGE MUST BE IN ACCORDANCE WITH
alpha_1 = 1.2;
alpha_2 = 0.9;
% num iterations
n_ts= [length(H{1,1}),length(H{1,2}),length(H{1,3}),length(H{1,4});...
       length(H{2,1}),length(H{2,2}),length(H{2,3}),length(H{2,4})];
%n_ts = 20 * ones(2,4);
% num delta_h balls
I = 2; % since we know x^* does not fall on the boundary
% h_max is set such that 
h_max = 3;
% define the deltas
for nIdx = 1: numel(ns)
    n = ns(nIdx);
    delta_1 = @(h)  3^(-floor(h/n)*alpha_1); % define delta(h)
    delta_2 = @(h)  3^(-floor(h/n)*alpha_2);
    for iterIdx = 1 : size(n_ts,2)
        n_t = n_ts(n,iterIdx);
        % this value is the maximum loss according the motheoryFunction i.e
        % delta(0)
        % since interval [0,1] maximum loss is 0.5^alpha
        L1 = (0.5)^alpha_1;
        L2 = (0.5)^alpha_2;
        loss_1 =  L1 * ones(n_t,1);
        loss_2 =  L2 * ones(n_t,1);
        indicatorOffset = (1 + 2 * I) * max([L1, L2])* ones(n_t,1);
        
        % start computing the bound
        % solve for h(n) at each n_t
        syms t;
        h=-1;
        l_idx= 1;
        while true
            h= h+1;
            dom_t = solve(h_max * I *(h+1) >= t,t);
            %u_idx = ceil(max(dom_n))*3;
            l_idx = double (max(1,ceil(max(dom_t))));
            fprintf('%f Percent done \n', l_idx / n_t * 100);
            if (l_idx>n_t)
                break;
            else
                HMAXDEPTH = H{n,iterIdx}(l_idx);
                loss_1(l_idx:end)= delta_1(min(h,HMAXDEPTH)) * L1;
                loss_2(l_idx:end)= delta_2(min(h,HMAXDEPTH)) * L2;
                indicatorOffset(l_idx:end) = (1 + 2 * I) *  max([L1*delta_1(min(h,HMAXDEPTH)), L2*delta_2(min(h,HMAXDEPTH))] );
            end
        end
        % save
        dlmwrite(sprintf('theoretical_data/bounds-n%d-mosoo-i%d.txt',n,iterIdx), [loss_1, loss_2, indicatorOffset], 'delimiter', '\t')
    end
end


% generate HMAX_DATA
for n = 1 : 2
    for i = 1 : 4
       dlmwrite(sprintf('hmax_data/hmax-n%d-mosoo-i%d.txt',n,i), [[1:numel(H{n,i})]' H{n,i}], 'delimiter', '\t') 
    end
end