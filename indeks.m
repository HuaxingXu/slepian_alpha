function x=indeks(y,in)
% x=INDEKS(y,in)
%
% Extracts indexed positions out of simple matrices
%
% INPUT:
%
% y         Some vector
% in        Some set of running linear indices [default: 1]
%
% EXAMPLES:
% 
% indeks([1 2],2) 
% indeks([1 2],':,2')
% indeks([1 2],'end')
%
% Works for logical and numeric indices.
%
% Last modified by fjsimons-at-alum.mit.edu, 11/15/2014

defval('in',1)

if ~isstr(in)
  x=y(in);
else
  eval([ 'x=y(' in ');'])
end
