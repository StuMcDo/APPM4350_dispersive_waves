g = 9.8;
sigma =    0.0728/1000 %% millinewtons /meter0.05 %

omega = @(kappa) sqrt(g.*kappa+sigma.*kappa.^3)
pvelocity = @(kappa)  sqrt(g./kappa+sigma.*kappa)
gvelocity = @(kappa) 0.5*(g+3*sigma.*kappa.^2)./sqrt(g.*kappa + sigma.*kappa.^3)
kap = linspace(0,1400,1401)
q = linspace(600, 620,1000)
%h = @(kappa) sigma.*kappa.^2-cpV1M1W1^2.*kappa+g
%%theoretical group velocity

cg = gvelocity(kap)
cp = pvelocity(kap)
%G = h(q);
%plot(q,G)
% values from data
cpV1M1W2 = 0.253238;
%KappaV1M1W1 = 255%337
cpV1M1W1 = 0.2389124; %408
%KappaV1M1W2 = 337
KappaV1M3W1 = 209
cpV1M3W1 = 0.2511
cpV1M3W2 = 0.250952
cpV1M4W1 = 0.2763
cpV1M4W2 = 0.2464
cpV1M4W3 = 0.2599
lambdaM1 = 0.03274
WNM1 = 192
lambdaM3 = 0.030099 
WNM3 = 208
lambdaM4 = 0.03048
WNM4 = 206
% frequency
omega1 = omega(WNM1)
omega3 = omega(WNM3)
omega4 = omega(WNM4)
plot(kap,cg,kap,cp,192,cpV1M1W2,'o',209,cpV1M1W1,'o',209,cpV1M3W1,209,cpV1M3W2,'o',192,cpV1M4W1,'o',231,cpV1M4W2,'o',192,cpV1M4W3,'o', 368, 0.2311, 'o')
ylim([0.15 0.5])
 xlabel('$ \kappa \; wave number$','Interpreter','latex')
 ylabel('$c_g \; c_p$','Interpreter','latex')
 legend({'$ c_g(\kappa) $','$ c_p(\kappa)$','$ M1 \; W2 $','$ M1 \; W1 $','$ M3 \; W1 $','$ M3 \; W2 $','$ M4 \; W1 $','$ M4 \; W2 $','$ M4 \; W3 $','$ c_p \; min $'},'Location','northeast','Interpreter','latex')
 title('$ experimental \; data \; overlayed \; with \; c_g \; and  \; c_p $','Interpreter','latex')


%finding sigma
% kap = linspace(0,220,221)
% 
% sigma = 0.072
% omega = @(kappa) sqrt(g.*kappa+sigma.*kappa.^3)
% w1 =  omega(kap)
% 
% 
% 
% sigma = 0.0072
% omega = @(kappa) sqrt(g.*kappa+sigma.*kappa.^3)
% w2 =  omega(kap)
% 
% sigma = 0.00072
% omega = @(kappa) sqrt(g.*kappa+sigma.*kappa.^3)
% w3 =  omega(kap)
% 
% 
% sigma = sigma1(1,4)
% omega = @(kappa) sqrt(g.*kappa+sigma.*kappa.^3)
% w4 =  omega(kap)
% 
% 
% sigma = 0.000072
% omega = @(kappa) sqrt(g.*kappa+sigma.*kappa.^3)
% w5 =  omega(kap)
% 
% 
% plot(kap, w1,kap,w2,kap, w3, kap, w4, kap, w5 , WNM1,omega1,'o',WNM3,omega3,'o',WNM4,omega4,'o')
% ylim([0 100])
% xlabel('$ \kappa \; wave number$','Interpreter','latex')
% ylabel('$\omega$','Interpreter','latex')
% legend({'$ \sigma  =0.072$','$ \sigma  =0.0072$','$ \sigma  =0.00072$', '$ \sigma  =0.000072$', '$ \sigma  =0.0000072$'},'Location','northeast','Interpreter','latex')
% title('$ \sigma \; varied \; to \; fit \; data $','Interpreter','latex')























