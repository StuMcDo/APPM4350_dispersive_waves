cgmin = 6.98818898;

cgtime = linspace(0,0.5,100);
cgdisplacement = @(t) cgmin.*t;
CGMIN = cgdisplacement(cgtime);
Yv1m1w1 = V1M1W1(:,3) - min(V1M1W1(:,3))
Tv1m1w1 =  V1M1W1(:,1) - min(V1M1W1(:,1))


Yv1m1w2 = V1M1W2(:,3) - min(V1M1W2(:,3))
Tv1m1w2 =  V1M1W2(:,1) - min(V1M1W2(:,1))

Yv1m3w1 = V1M3W1(:,3) - min(V1M3W1(:,3))
Tv1m3w1 =  V1M3W1(:,1) - min(V1M3W1(:,1))

Yv1m3w2 = V1M3W2(:,3) - min(V1M3W2(:,3))
Tv1m3w2 =  V1M3W2(:,1) - min(V1M3W2(:,1))

Yv1m4w1 = V1M4W1(:,3) - min(V1M4W1(:,3))
Tv1m4w1 =  V1M4W1(:,1) - min(V1M4W1(:,1))

Yv1m4w2 = V1M4W2(:,3) - min(V1M4W2(:,3))
Tv1m4w2 =  V1M4W2(:,1) - min(V1M4W2(:,1))

plot(cgtime,CGMIN,Tv1m1w1,Yv1m1w1,Tv1m1w2,Yv1m1w2,Tv1m3w1,Yv1m3w1,Tv1m3w2,Yv1m3w2,Tv1m4w1,Yv1m4w1,Tv1m4w2,Yv1m4w2)
 ylim([0 2.5])
 xlabel('$t$','Interpreter','latex')
 ylabel('$displacement \; inches $','Interpreter','latex')
 legend({'$c_g \; min $', '$w1 \; M1$','$w2 \; M1$','$w1 \; M3$','$w2 \; M3$','$w1 \; M4$','$w2 \; M4$'},'Location','northeast','Interpreter','latex')
 title('$time \; series \; displacement \; with \; c_g $','Interpreter','latex')