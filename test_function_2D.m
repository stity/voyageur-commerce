function [ y, xmin, xmax, ymin, ymax ] = test_function_2D( type )
switch type
    case 'ackley'
        %ackley function 
        a = 20;
        b = 0.2;
        c = 2*pi;
        y = @(x) -a*exp(-b*sqrt(1/2*(x(1)*x(1)+x(2)*x(2))))-exp(1/2*sum(cos(c*x)))+a+exp(1);
        xmin = -32.768;
        xmax = 32.768;
        ymin = -32.768;
        ymax = 32.768;
    case 'bukin'
        %bukin6 function
        y = @(x) 100*sqrt(abs(x(2)-0.01*x(1)*x(1)))+0.01*abs(x(1)+10);
        xmin = -15;
        xmax = -5;
        ymin = -3;
        ymax = 3;
    case 'bukin-alt'
        %bukin6 function
        y = @(x) 100*abs(x(2)-0.01*x(1)*x(1))+0.01*abs(x(1)+10);
        xmin = -15;
        xmax = -5;
        ymin = -3;
        ymax = 3;
    case 'cross-in-tray'
        %cross-in tray function
        y = @(x) -0.0001*(abs(sin(x(1))*sin(x(2))*exp(abs(100-sqrt(x(1)*x(1)+x(2)*x(2))/pi)))+1)^0.1;
        xmin = -10;
        xmax = 10;
        ymin = -10;
        ymax = 10;
    case 'drop wave'
        %drop wave function
        y = @(x) -(1+cos(12*sqrt(x(1)*x(1)+x(2)*x(2))))/(0.5*(x(1)*x(1)+x(2)*x(2))+2);
        xmin = -5.12;
        xmax = 5.12;
        ymin = -5.12;
        ymax = 5.12;
    case 'egg holder'
        %egg holder function
        y = @(x) -(x(2)+47)*sin(sqrt(abs(x(2)+x(1)/2+47)))-x(1)*sin(sqrt(abs(x(1)-(x(2)+47))));
        xmin = -512;
        xmax = 512;
        ymin = -512;
        ymax = 512;
    case 'griewank'
        %griewank function
        y = @(x) (x(1)*x(1)+x(2)*x(2))/4000-cos(x(1))*cos(x(2)/sqrt(2))+1;
        xmin = -600;
        xmax = 600;
        ymin = -600;
        ymax = 600;
    case 'holder table'
        %holder table function
        y = @(x) -abs(sin(x(1))*cos(x(2))*exp(abs(1-sqrt(x(1)*x(1)+x(2)*x(2))/pi)));
        xmin = -10;
        xmax = 10;
        ymin = -10;
        ymax = 10;
end
end

