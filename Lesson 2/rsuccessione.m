function rf = rsuccessione(m,bt)
    rf = [];
	succ = @(x1,x2) x1 +(-1)^(rand()>.5)*bt*x2;
	rf(end+1:end+2)=1;
	for i=[3:m]
		rf(end+1)=succ(rf(end),rf(end-1));
    end
end