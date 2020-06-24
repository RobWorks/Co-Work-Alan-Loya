function J = jacobiano(T)
    
    Jw = zeros(3,numel(T));
    Jv = zeros(3,numel(T));
    
    Z0 = [0;0;1];
    Jw(:,1) = Z0;
    Jv(:,1) = cross(Z0,T{1,7}(1:3,4)-[0;0;0]);
    
    for i=1:numel(T)-1
        Jw(:,i+1) = T{1,i}(1:3,3);
        Jv(:,i+1) = cross(T{1,i}(1:3,3),(T{1,7}(1:3,4) - T{1,i}(1:3,4)));
    end
    
    J = [Jw;Jv];
end