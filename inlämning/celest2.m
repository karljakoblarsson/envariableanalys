function dy=celest2(t,y)

    dy=zeros(size(y));%Minnesallokering

    G=1; %Gravitationskonstanten

    m1 = 100;
    m2 = 1; %Massorna

    x1 = y(1:2); %Forsta planetens position
    x2 = y(3:4); %Andra planetens position
    v1 = y(5:6); %Forst planetens hastighet
    v2 = y(7:8); %Andra planetens hastighet

    r3 = norm(x1-x2)^3; %Avstandet mellan planeterna i kubik.

    dy(1:2) = v1;
    dy(3:4) = v2; %Hastigheterna ...

    FK = G*(x2-x1)/r3; %Den del av 'kraften' som ar gemensam ...

    dy(5:6) = m2*FK; %Accelerationen av forsta planeten
    dy(7:8) = -m1*FK; %Accelerationen av andra planeten

