function [y] = cm(u1)
                // u1 = [CLw, CLt]

    St = 2.7639;
    lt = 6.1082;
    Sw = 16.258;
    c_bar = 1.5911;

    xcg = 0.15;
    xac = 0.182;
//    stabMargin = (xcg - xac)/c_bar;
    Vh = lt*St/(c_bar*Sw);
//    eta = 0.95; // Qt / Q
    Cm0 = 0.1;//-0.35;
//    Cmf = 0.;

    CLw = u1(1);
    CLt = u1(2);

//    y = Cm0 + (xcg - xac)/c_bar*(CLw + eta*St/Sw*CLt) - eta*Vh*CLt + Cmf;
    y = Cm0 - (xac - xcg)*CLw - Vh*CLt;

endfunction
