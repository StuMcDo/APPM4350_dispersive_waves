%%

t_aug = [ 2, 1.5, 1.5, 4 ]; %days afer previous station
f_aug = 52; % frequency of millicycles per second

d_aug = [ 2387, 2261, 1858, 4456]; %distance from last station in km

fHz_aug = f_aug/10^3;

v_aug = 10^3*d_aug./(t_aug.*24*3600);

lam_aug = v_aug./fHz_aug;

kappa_aug = 2*pi./lam_aug;

g = 9.81;
sigma = 0.0728/1000;

kap = 0:0.001:400;

c_p = sqrt((g.*kap + sigma*kap.^3)./(kap.^2));

g_v = @(k_v) 0.5*(g + 3*sigma.*k_v.^2)./sqrt(g.*k_v + sigma.*k_v.^3);
c_g = g_v(kap);

% v_g_aug = 0.5*(g + 3*sigma.*kappa_aug.^2)./sqrt(g.*kappa_aug + sigma.*kappa_aug.^3);
%%


t_jul = [ 4, 1.5, 1.5, 3 ]; %days afer previous station
f_jul = 47; % frequency of millicycles per second

d_jul = [ 5799, 2261, 1858, 4456]; %distance from last station in km

fHz_jul = f_jul/10^3;

v_jul = 10^3*d_jul./(t_jul.*24*3600);

lam_jul = v_jul./fHz_jul;

kappa_jul = 2*pi./lam_jul;

v_g = 0.5*(g + 3*sigma.*kappa_jul.^2)./sqrt(g.*kappa_jul + sigma.*kappa_jul.^3);

%%

f_t_jul = [41, 59];
f_p_jul = [43, 60];
f_h_jul = [42, 60];
f_y_jul = [41, 59];

t_jul_t = [3.5, 5];
t_jul_p = [1.5, 2];
t_jul_h = [1, 2];
t_jul_y = [2, 3.5];

wHz_t_jul = 2*pi.*f_t_jul./10^3;
wHz_p_jul = 2*pi.*f_p_jul./10^3;
wHz_h_jul = 2*pi.*f_h_jul./10^3;
wHz_y_jul = 2*pi.*f_y_jul./10^3;

k = @(w) 0.54945.*(7.6914.*(9.5394.*sqrt(91.*w.^4+174828915)+91.*w.^2).^(2/3)-19344)./(9.5394.*sqrt(91.*w.^4+174828915)+91.*w.^2).^(1/3);

k_t_jul = k(wHz_t_jul);
k_p_jul = k(wHz_p_jul);
k_h_jul = k(wHz_h_jul);
k_y_jul = k(wHz_y_jul);

g_t_jul = g_v(k_t_jul);
g_p_jul = g_v(k_p_jul);
g_h_jul = g_v(k_h_jul);
g_y_jul = g_v(k_y_jul);

v_t_jul = 10^3*d_jul(1)./(t_jul_t.*24*3600);
v_p_jul = 10^3*d_jul(2)./(t_jul_p.*24*3600);
v_h_jul = 10^3*d_jul(3)./(t_jul_h.*24*3600);
v_y_jul = 10^3*d_jul(4)./(t_jul_y.*24*3600);

%%

f_t_aug = [54, 67];
f_p_aug = [51, 66];
f_h_aug = [52, 67];
f_y_aug = [52, 67];

t_aug_t = [2, 2.5];
t_aug_p = [1.5, 2];
t_aug_h = [1.5, 2];
t_aug_y = [3.5, 4.5];

wHz_t_aug = 2*pi.*f_t_aug./10^3;
wHz_p_aug = 2*pi.*f_p_aug./10^3;
wHz_h_aug = 2*pi.*f_h_aug./10^3;
wHz_y_aug = 2*pi.*f_y_aug./10^3;

k = @(w) 0.54945.*(7.6914.*(9.5394.*sqrt(91.*w.^4+174828915)+91.*w.^2).^(2/3)-19344)./(9.5394.*sqrt(91.*w.^4+174828915)+91.*w.^2).^(1/3);

k_t_aug = k(wHz_t_aug);
k_p_aug = k(wHz_p_aug);
k_h_aug = k(wHz_h_aug);
k_y_aug = k(wHz_y_aug);

g_t_aug = g_v(k_t_aug);
g_p_aug = g_v(k_p_aug);
g_h_aug = g_v(k_h_aug);
g_y_aug = g_v(k_y_aug);

v_t_aug = 10^3*d_aug(1)./(t_aug_t.*24*3600);
v_p_aug = 10^3*d_aug(2)./(t_aug_p.*24*3600);
v_h_aug = 10^3*d_aug(3)./(t_aug_h.*24*3600);
v_y_aug = 10^3*d_aug(4)./(t_aug_y.*24*3600);

%%
figure;
plot(kap, c_p, 'k')
hold on
plot(kap, c_g, 'b')
ylim([0 30])
xlim([0 0.5])
plot(kappa_aug(1), v_aug(1), 'ko', kappa_aug(2), v_aug(2), 'go', kappa_aug(3), v_aug(3), 'ro',  kappa_aug(4), v_aug(4), 'bo')


xlabel('Wave Number')
ylabel('Wave Velocity (m/s)')
title('Wave Characteristics from Snograss et al. (1966) August 1 storm')

legend('Phase Velocity', 'Group Velocity', 'Tutuila Station', 'Palmyra Station', 'Honolulu Station', 'Yakutat Station')

%%
figure;
plot(kap, c_p, 'k')
hold on
plot(kap, c_g, 'b')
ylim([0 30])
xlim([0 0.5])
plot(kappa_jul(1), v_jul(1), 'ko', kappa_jul(2), v_jul(2), 'go', kappa_jul(3), v_jul(3), 'ro',  kappa_jul(4), v_jul(4), 'bo')


xlabel('Wave Number')
ylabel('Wave Velocity (m/s)')
title('Wave Characteristics from Snograss et al. (1966) July 23 storm')

legend('Phase Velocity', 'Group Velocity', 'Tutuila Station', 'Palmyra Station', 'Honolulu Station', 'Yakutat Station')

%%
figure;
plot(kap, c_p, 'k')
hold on
plot(kap, c_g, 'b')
ylim([0 30])
xlim([0 0.5])
plot(k_t_jul, g_t_jul, 'k*', k_p_jul, g_p_jul, 'g*', k_h_jul, g_h_jul, 'r*',  k_y_jul, g_y_jul, 'b*')

plot(k_t_jul, v_t_jul, 'ko', k_p_jul, v_p_jul, 'go', k_h_jul, v_h_jul, 'ro',  k_y_jul, v_y_jul, 'bo')

xlabel('Wave Number')
ylabel('Wave Velocity (m/s)')
title('Group Velocity from Snograss et al. (1966) July 23 storm')

legend('Phase Velocity', 'Group Velocity', 'Tutuila Station', 'Palmyra Station', 'Honolulu Station', 'Yakutat Station')

%%
figure;
plot(kap, c_p, 'k')
hold on
plot(kap, c_g, 'b')
ylim([0 30])
xlim([0 0.5])
plot(k_t_aug, g_t_aug, 'k*', k_p_aug, g_p_aug, 'g*', k_h_aug, g_h_aug, 'r*',  k_y_aug, g_y_aug, 'b*')

plot(k_t_aug, v_t_aug, 'ko', k_p_aug, v_p_aug, 'go', k_h_aug, v_h_aug, 'ro',  k_y_aug, v_y_aug, 'bo')

xlabel('Wave Number')
ylabel('Wave Velocity (m/s)')
title('Group Velocity from Snograss et al. (1966) August 1 storm')

legend('Phase Velocity', 'Group Velocity', 'Tutuila Station', 'Palmyra Station', 'Honolulu Station', 'Yakutat Station')
