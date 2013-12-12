function dy=celest3(t,y)

    dy=zeros(size(y));%Minnesallokering

    G=1e+2; %Gravitationskonstanten

    m1 = 1e4;
    m2 = 10; %Massorna
    m3 = 1e-1;

    p1 = y(1:3);
    p2 = y(4:6);
    p3 = y(7:9);

    dy(1:3) = y(10:12); %Forst planetens hastighet
    dy(4:6) = y(13:15); %Andra planetens hastighet
    dy(7:9) = y(16:18); %Andra planetens hastighet

    r12 = norm(p1 - p2)^3;
    r13 = norm(p1 - p3)^3;
    r23 = norm(p2 - p3)^3;

    dy(10:12) = G * m2 * (p2 - p1)/r12 + G * m3 * (p3 - p1)/r13;
    dy(13:15) = G * m1 * (p1 - p2)/r12 + G * m3 * (p3 - p2)/r23;
    dy(16:18) = G * m1 * (p1 - p3)/r13 + G * m2 * (p2 - p3)/r23;

end

