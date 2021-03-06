function [ candidates ] = findCandidates ( mask )
%{
Jonatan Poveda
Martí Cobos
Juan Francesc Serracant
Ferran Pérez
Master in Computer Vision
Computer Vision Center, Barcelona
---------------------------
Project M1/Week3
---------------------------
This function is used to find pixels candidate to be part of an object. It uses
a naïve approach: each pixel which is not 0 (or false) is a candidate.
values '1' or true in the mask
input:  - mask: nxmx1 binary mask
output: - list of pixels susceptible to be from an object.
---------------------------
%}
  [ xpos, ypos ] = find(mask);
  candidates = [ xpos, ypos ];
end
