%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii,2) == 1
        disp(num2str(ii))
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

x = 0;
while x < 10
    disp(num2str(2*x+1));
    x = x + 1;
end
% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)
a = 0:9;
disp(num2str(2*a+1))

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 


%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

ii = 1:100;
z = ii.^2

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

ii = 1:100;
z = sum(ii)

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

z = sqrt(sum(xx.*xx,2));


% d. what is the formula in c computing?
% The distance of each point in matrix xx from the origin. Points in matrix
% xx are random points 
%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.
x = 0:0.1:4*pi
s = sin(x)

figure;
plot(x, sin(x), 'r.', 'MarkerSize', 24);
hold on;
plot(x, cos(x), 'b-', 'Linewidth', 3);
xlabel('x', 'FontSize', 24);
ylabel('y', 'FontSize', 24);
legend({'sin(x)', 'cos(x)'}, 'FontSize', 24);
set(gca, 'FontSize', 16);

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

x = 0:0.1:4*pi
s = sin(x)

figure;
subplot(2,1,1);
x = linspace(0, 4*pi, 100);
y1 = sin(x);
plot(x, y1, 'r.', 'MarkerSize', 24);
xlabel('x', 'FontSize', 24);
ylabel('y', 'FontSize', 24);
title('Subplot 1: sin(x)');
set(gca, 'FontSize', 16);
subplot(2,1,2);
y2 = cos(x);
plot(x, y2, 'b-', 'Linewidth', 3);
xlabel('x', 'FontSize', 24);
ylabel('y', 'FontSize', 24);
title('Subplot 2: cos(x)');
set(gca, 'FontSize', 16);


%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
figure;
plot(xy_dat(:,1), xy_dat(:,2), '.', 'MarkerSize', 20);
xlabel('x', 'FontSize', 24);
ylabel('y', 'FontSize', 24);
set(gca, 'FontSize', 16);

%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,2);

% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command
hold on;
dist = sqrt(sum(fluor.*fluor,2));
scatter(fluor(:,1), fluor(:,2), 24, dist, 'filled')
legend({'xy_dat', 'fluor'}, 'FontSize', 24)