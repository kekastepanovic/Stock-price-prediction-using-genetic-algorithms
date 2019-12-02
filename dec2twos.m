function [s] = dec2twos(x, nbits)
nbits=nbits+2;
error(nargchk(1, 2, nargin));
x = x(:);
maxx = max(abs(x));
nbits_min = nextpow2(maxx + (any(x == maxx))) + 1;

% Default number of bits.
if nargin == 1 || isempty(nbits)
    nbits = nbits_min;
elseif nbits < nbits_min
    warning('dec2twos:nbitsTooSmall', ['Minimum number of bits to ' ...
        'represent maximum input x is %i, which is greater than ' ...
        'input nbits = %i. Setting nbits = %i.'], ...
        nbits_min, nbits, nbits_min)
    nbits = nbits_min;
end

t = repmat('0', numel(x), nbits); % Initialize output:  Case for x = 0
if any(x > 0)
    t(x > 0, :) = dec2bin(x(x > 0), nbits);           % Case for x > 0
end
if any(x < 0)
    t(x < 0, :) = dec2bin(2^nbits + x(x < 0), nbits); % Case for x < 0
end
t=num2cell(t);
s=[];
for i=1:nbits
    s=[s str2double(t(i))];
end




    