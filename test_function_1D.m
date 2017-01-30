function [ y, xmin, xmax ] = test_function_1D( type )
switch type
    case 'trig'
        %trig function
        y=@(x) abs(x/2)*sin(x)+cos(x*3);
        xmin = -10;
        xmax = 10;
    case 'ackley'
        %ackley function 
        a = 20;
        b = 0.2;
        c = 2*pi;
        y =@(x) -a*exp(-b*x*x)-exp(cos(c*x))+a+exp(1);
        xmin = -32;
        xmax = 32;
end
end

