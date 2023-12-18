// [T,CL,CD,CM,CLT,data]=readCSV()
function [T, CL, CD, CM, CLT, data] = readCSV()

    M = csvRead('pc-9m.csv',',','double',[],[],[],[],1);

//    V = struct('time',zeros(11,1),'values',zeros(11,1))
    T.time = M(1:11,5);
    T.values = M(1:11,6);

    CL.alpha = M(1:13,1);
    CL.values = M(1:13,2);

    CD.alpha = M(1:13,1);
    CD.values = M(1:13,3);

    CM.alpha = M(1:13,1);
    CM.values = M(1:13,4);

    CLT.alpha = M(1:13,1);
    CLT.values = M(1:13,7);

    data.St = 2.7639;
    data.lt = 6.1082;
    data.Sw = 16.258;
    data.c_bar = 1.5911;

endfunction
