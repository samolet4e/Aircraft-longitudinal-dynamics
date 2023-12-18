function [y] = C2FM(u1)

    CL = u1(1);
    CD = u1(2);
    CM = u1(3);
    Q  = u1(4);

    Sw = 16.258;
    c_bar = 1.5911;

    L = CL*Q*Sw;
    D = CD*Q*Sw;
    M = CM*Q*Sw*c_bar;

    y = [L, D, M];

endfunction
