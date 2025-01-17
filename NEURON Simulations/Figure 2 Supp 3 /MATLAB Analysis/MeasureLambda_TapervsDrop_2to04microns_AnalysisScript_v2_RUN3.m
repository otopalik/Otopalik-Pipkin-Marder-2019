% RUN 3 Lambda Measurements for Subset of Drop-off and Tapered Neurites
% 17 Dec 2018

cd '/Users/adrianeotopalik/Desktop/Lambda Measurements Taper vs Dropoff 2 to 0.4 No Shunt RUN 3'

% First, ran CALC_LAMBDA function for all folders in each geometry
% directory within this folder using syntax:

%   [lambda_d01_g000067, resp_peak_d01_g000067] = calc_lambda('drop 0.1 to 0.9/g000067', 2)
% 
% [lambda_d05_g0001, resp_peak_d05_g0001] = calc_lambda('drop 0.5/g0001', 2);
% [lambda_d05_g0002, resp_peak_d05_g0002] = calc_lambda('drop 0.5/g0002', 2);
% [lambda_d05_g00005, resp_peak_d05_g00005] = calc_lambda('drop 0.5/g00005', 2);
% [lambda_d05_g000067, resp_peak_d05_g000067] = calc_lambda('drop 0.5/g000067', 2);
% 

%% PLOT LAMBDA VS Ra


% Does it matter where the drop is for a given gpas value?

figure
subplot(4,1,1)
plot(Ra_short_vect(1:5), lambda_t_g0002, '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
plot(Ra_short_vect(1:5), lambda_d01_g0002, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d02_g0002, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d03_g0002, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d04_g0002, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d045_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d05_g0002, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
box off; ylim([0 3000]); xlim([50 300]); ylabel('Lambda (microns)', 'Fontsize', 12); xlabel('R_a (Ohms*cm^2)','Fontsize', 12);
title ('R_m = 5,000 ohm*cm', 'Fontsize', 12); set(gca,'FontSize',12)
%legend('Tapered', 'Drop @ 0.1', 'Drop @ 0.2', 'Drop @ 0.3', 'Drop @ 0.4', 'Drop @ 0.5', 'Fontsize', 14)

subplot(4,1,2)
plot(Ra_short_vect(1:5), lambda_t_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
plot(Ra_short_vect(1:5), lambda_d01_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d02_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d03_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d04_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d045_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d05_g0001, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
box off; ylim([0 3000]); xlim([50 300]); ylabel('Lambda (microns)', 'Fontsize', 12); xlabel('R_a (Ohms*cm^2)','Fontsize', 12);
title ('R_m = 10,000 ohm*cm', 'Fontsize', 14); set(gca,'FontSize',12)
%legend('Tapered', 'Drop @ 0.1', 'Drop @ 0.2', 'Drop @ 0.3', 'Drop @ 0.4', 'Drop @ 0.5', 'Fontsize', 14)

subplot(4,1,3)
plot(Ra_short_vect(1:5), lambda_t_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
plot(Ra_short_vect(1:5), lambda_d01_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d02_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d03_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d04_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d045_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d05_g000067, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
box off; ylim([0 3000]); xlim([50 300]); ylabel('Lambda (microns)', 'Fontsize', 12); xlabel('R_a (Ohms*cm^2)','Fontsize', 12);
title ('R_m = 15,000 ohm*cm', 'Fontsize', 14); set(gca,'FontSize',12)
%legend('Tapered', 'Drop @ 0.1', 'Drop @ 0.2', 'Drop @ 0.3', 'Drop @ 0.4', 'Drop @ 0.5', 'Fontsize', 12)


subplot(4,1,4)
plot(Ra_short_vect(1:5), lambda_t_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
plot(Ra_short_vect(1:5), lambda_d01_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d02_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d03_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d04_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d045_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot(Ra_short_vect(1:5), lambda_d05_g00005, '.-', 'MarkerSize', 10, 'LineWidth', 2);
plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
box off; ylim([0 3000]); xlim([50 300]); ylabel('Lambda (microns)', 'Fontsize', 12); xlabel('R_a (Ohms*cm^2)','Fontsize', 12);
title ('R_m = 20,000 ohm*cm', 'Fontsize', 14); set(gca,'FontSize',12)
legend('Tapered', 'Drop @ 0.1', 'Drop @ 0.2', 'Drop @ 0.3', 'Drop @ 0.4','Drop @ 0.45', 'Drop @ 0.5', 'Fontsize', 12)


%% Plot Response Amplitude v Distance

figure
% Rm = 5000 ohm*cm
for i = 1:length(Ra_short_vect)
    subplot(4,5,i)
    plot(dist_vect, resp_peak_t_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
    plot(dist_vect, resp_peak_d01_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d02_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d03_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d04_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d045_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d05_g0002(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
    box off; ylim([0 15]); xlim([0 1000]); ylabel('Response (mV)', 'Fontsize', 12); xlabel('Distance (microns)','Fontsize', 12);set(gca,'FontSize',12)
    title (['R_a = ' num2str([Ra_short_vect(i)]) ' (ohms*cm^2), R_m = 5000 ohm*cm'], 'Fontsize', 10)
end

% Rm = 10000 ohm*cm
for i = 1:length(Ra_short_vect)
    subplot(4,5,i+5)
    plot(dist_vect, resp_peak_t_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
    plot(dist_vect, resp_peak_d01_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d02_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d03_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d04_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d045_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d05_g0001(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
    box off; ylim([0 15]); xlim([0 1000]); ylabel('Response (mV)', 'Fontsize', 12); xlabel('Distance (microns)','Fontsize', 12); set(gca,'FontSize',12)
    title (['R_a = ' num2str([Ra_short_vect(i)]) ' (ohms*cm^2), R_m = 10,000 ohm*cm'], 'Fontsize', 10)
end



% Rm = 15000 ohm*cm
for i = 1:length(Ra_short_vect)
    subplot(4,5,i+10)
    plot(dist_vect, resp_peak_t_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
    plot(dist_vect, resp_peak_d01_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d02_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d03_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); %% FLAGGED
    plot(dist_vect, resp_peak_d04_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d045_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d05_g000067(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); %% FLAGGED
    plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
    box off; ylim([0 15]); xlim([0 1000]); ylabel('Response (mV)', 'Fontsize', 12); xlabel('Distance (microns)','Fontsize', 12);set(gca,'FontSize',12)
    title (['R_a = ' num2str([Ra_short_vect(i)]) ' (ohms*cm^2), R_m = 15,000 ohm*cm'], 'Fontsize', 10)
end


% Rm = 20000 ohm*cm
for i = 1:length(Ra_short_vect)
    subplot(4,5,i+15)
    plot(dist_vect, resp_peak_t_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); hold on
    plot(dist_vect, resp_peak_d01_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d02_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d03_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); %% FLAGGED
    plot(dist_vect, resp_peak_d04_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d045_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2);
    plot(dist_vect, resp_peak_d05_g00005(:,i), '.-', 'MarkerSize', 10, 'LineWidth', 2); %% FLAGGED
    plot([0 300], [1000 1000], 'k-', 'LineWidth', 1)
    box off; ylim([0 15]); xlim([0 1000]); ylabel('Response (mV)', 'Fontsize', 12); xlabel('Distance (microns)','Fontsize', 12);set(gca,'FontSize',12)
    title (['R_a = ' num2str([Ra_short_vect(i)]) ' (ohms*cm^2), R_m = 20,000 ohm*cm'], 'Fontsize', 10)
end

legend('Tapered', 'Drop @ 0.1', 'Drop @ 0.2', 'Drop @ 0.3', 'Drop @ 0.4','Drop @ 0.45', 'Drop @ 0.5', 'Fontsize', 12)

%% Plot Neurite Morphologies:

% diamters are stored by column in the diams matrix in the order:
% tapered, drop@0.1, drop@0.2, drop@0.3, drop@0.4, drop@0.5)
% the distance (x) is stored in the seg vector, which is in millimeters:

% AS BASIC LINE PLOTS:
figure
for i = 1:7
    plot(seg.*1000, diams(:,i)/2, '-', 'LineWidth', 2); hold on 
    set(gca,'FontSize',12)
end
box off; ylabel('Cable Radius (microns)','Fontsize', 12); xlabel('Distance (microns)','Fontsize', 12)
ylim([0 5])
legend('Tapered', 'Drop @ 0.1', 'Drop @ 0.2', 'Drop @ 0.3', 'Drop @ 0.4','Drop @ 0.45', 'Drop @ 0.5', 'Fontsize', 12)

% AS AREA PLOTS:
figure
for i = 1:7
    subplot(7,1,i)
    area(seg.*1000, diams(:,i)/2); hold on
    area(seg.*1000, -diams(:,i)/2); 
    plot(seg.*1000, diams(:,i)/2, 'k-', 'LineWidth', 2);  
    plot(seg.*1000, -diams(:,i)/2, 'k-', 'LineWidth', 2);
    box off; ylabel('Microns','Fontsize', 12); xlabel('Microns','Fontsize', 12)
    ylim([-5 5])
end
