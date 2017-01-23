function [ Tf, iterf ] = decay_temperature( T, iter, nbcities )
if iter==1.5*nbcities;
    Tf=T*0.985;
    iterf = 0;
else
    Tf = T;
    iterf = iter+1;
end

end

