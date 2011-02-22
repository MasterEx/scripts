#!/usr/bin/env csh

#use example
# ./bin2dec 1 0 1
# Result: 5

set count=1;
set pow=0;
set tmp=1;
set res=0;
set one=1;
set two=2;
while($count <= $#argv)
	if ($argv[$count] == 0) then
		@ count++;
		 continue;
	endif
	@ pow = $#argv - $count;
	while($pow > 0)
		@ tmp = $tmp * $two;
		@ pow--;
	end
	@ res = $res + $tmp;
	@ tmp = 1;
	@ pow = 0;
	@ count++;
end
echo "Result: $res";
