clear;

exec('readCSV.sci',-1);
[T,CL,CD,CM,CLT,data] = readCSV();
exec('cm.sci',-1);
exec('C2FM.sci',-1);
exec('rho.sci',-1);
exec('p.sci',-1);
exec('wrapToPi.sci',-1);
xcos('cm.zcos');
