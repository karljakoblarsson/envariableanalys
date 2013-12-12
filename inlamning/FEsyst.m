function [t,U]=FEsyst(f,I,U0,N)
    % Vad ¨ar det f¨or typer och storlekar som inargumenten ska ha?
    if nargin<4
        N=100;
        if nargin <3
            error('Too few input arguments')
        end
    end

    dt=(I(2)-I(1))/N; % Tidssteg

    t=linspace(I(1),I(2),N+1); % Samtliga tider

    U=zeros(length(U0),length(t)); % Minnesallokering. L¨angden av U0 ¨ar antal
            % ekvationer dvs antal derivator om systemet
            % h¨arr¨or fr˚an en skal¨ar ekvation. U f˚ar
            % allts˚a s˚a m˚anga rader som det ¨ar
            % begynnelsev¨arden och s˚a m˚anga kolonner som
            % det ¨ar tidsnoder i partitionen av
            % intervallet som ges av I (dvs N+1). I en
            % kolonn U(:,i) kommer vi spara de
            % approximativa v¨ardena av funktionen vid
            % tiden t(i).

    U(:,1)=U0; % Vi stoppar in begynnelsev¨ardena i U:s f¨orsta kolonn.

    for i=1:N
        % Ett tidssteg med Eulers fram˚atmetod:
        U(:,i+1)=U(:,i)+dt*f(t(i),(U(:,i)));
    end

    % Egentligen on¨odigt men f¨or att resultatet ska bli analogt med ode45 etc:
    t=t';
    U=U';
end
