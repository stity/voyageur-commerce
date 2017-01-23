function [ Tf, iterf ] = decay_temperature( T, iter )
if iter==30
    Tf=T*0.99;
    iterf = 0;
else
    Tf = T;
    iterf = iter+1;
end

end

