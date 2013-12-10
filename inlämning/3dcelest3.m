function dy=celest3(t,y)

    dy=zeros(size(y));%Minnesallokering

    G=100; %Gravitationskonstanten

    m1 = 1e4;
    m2 = 10; %Massorna
    m3 = 1e-1;

    x(1,:) = y(1:3); %Forsta planetens position
    x(2,:) = y(4:6); %Andra planetens position
    x(3,:) = y(7:9); %Andra planetens position

    v1 = y(10:12); %Forst planetens hastighet
    v2 = y(13:15); %Andra planetens hastighet
    v3 = y(16:18); %Andra planetens hastighet

    r3 = zeros(3,3);
    for i = 1:3
        for j= 1:3
            r3(i,j) = norm(x(i) - x(j))^3;
        end
    end

    dy(1:3) = v1;
    dy(4:6) = v2; %Hastigheterna ...
    dy(7:9) = v3; %Hastigheterna ...

    dy(10) = G * m2 * (y(3) - y(1))/r3(1,2) + G * m3 * (y(5) - y(1))/r3(1,3);
    dy(11) = G * m2 * (y(2) - y(2))/r3(1,2) + G * m3 * (y(6) - y(2))/r3(1,3);
    dy(12) = 0 %G * m2 * (y(2) - y(2))/r3(1,2) + G * m3 * (y(6) - y(2))/r3(1,3);

    dy(13) = G * m1 * (y(1) - y(3))/r3(2,1) + G * m3 * (y(5) - y(3))/r3(2,3);
    dy(14) = G * m1 * (y(2) - y(4))/r3(2,1) + G * m3 * (y(6) - y(4))/r3(2,3);
    dy(15) = 0 %G * m1 * (y(2) - y(4))/r3(2,1) + G * m3 * (y(6) - y(4))/r3(2,3);

    dy(16) = G * m1 * (y(1) - y(5))/r3(3,1) + G * m2 * (y(3) - y(5))/r3(3,2);
    dy(17) = G * m1 * (y(2) - y(6))/r3(3,1) + G * m2 * (y(4) - y(6))/r3(3,2);
    dy(18) = 0 %G * m1 * (y(2) - y(6))/r3(3,1) + G * m2 * (y(4) - y(6))/r3(3,2);

end

