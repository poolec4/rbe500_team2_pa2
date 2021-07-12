close all
clear all
clc

file_path = 'catkin_ws/pd_control_plot.txt';
data = readmatrix(file_path);

t = linspace(0,data(1,4)*length(data),length(data));
pos_des = data(:,2);
pos_cur = data(:,1);
f = data(:,3);

figure
hold on
grid on
title('Link 3 PD Controller')
xlabel('$t (sec)$','Interpreter','LaTex')
ylabel('$d_3$','Interpreter','LaTex')
plot(t,pos_des, 'r')
plot(t,pos_cur, 'b')
legend('Reference Position', 'Current Position', 'Location', 'northeast')