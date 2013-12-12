function dy=celest2(t,y)

    dy=zeros(size(y));%Minnesallokering

    G=1; %Gravitationskonstanten

    m1 = 100; %Massorna
    m2 = 1;

    x1 = y(1:2); %Forsta planetens position
    x2 = y(3:4); %Andra planetens position
    v1 = y(5:6); %Forst planetens hastighet
    v2 = y(7:8); %Andra planetens hastighet

    r3 = norm(x1-x2)^3; %Avstandet mellan planeterna i kubik.

    dy(1:2) = v1; %Hastigheterna ...
    dy(3:4) = v2;

    FK = G*(x2-x1)/r3; %Den del av 'kraften' som ar gemensam ...

    dy(5:6) = m2*FK; %Accelerationen av forsta planeten
    dy(7:8) = -m1*FK; %Accelerationen av andra planeten

