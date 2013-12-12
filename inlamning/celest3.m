function dy=celest3(t,y)

    dy=zeros(size(y));%Minnesallokering

    G=100; %Gravitationskonstanten

    m1 = 1e4;
    m2 = 10; %Massorna
    m3 = 1e-1;

    p1 = y(1:2); %Forsta planetens position
    p2 = y(3:4); %Andra planetens position
    p3 = y(5:6); %Andra planetens position

    v1 = y(7:8); %Forst planetens hastighet
    v2 = y(9:10); %Andra planetens hastighet
    v3 = y(11:12); %Andra planetens hastighet
    
    r12 = norm(p1 - p2)^3;
    r13 = norm(p1 - p3)^3;
    r23 = norm(p2 - p3)^3;
    
    dy(1:2) = v1;
    dy(3:4) = v2; %Hastigheterna ...
    dy(5:6) = v3; %Hastigheterna ...

    dy(7:8)   = G * m2 * (p2 - p1)/r12 + G * m3 * (p3 - p1)/r13;
    dy(9:10)  = G * m1 * (p1 - p2)/r12 + G * m3 * (p3 - p2)/r23;
    dy(11:12) = G * m1 * (p1 - p3)/r13 + G * m2 * (p2 - p3)/r23;

end
