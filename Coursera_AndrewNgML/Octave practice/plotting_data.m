% plotting sin function
t = [0:0.01:0.98]; % start: steps: end (inclusive)
y1 = sin(2*pi*4*t); % sin as a function of t
plot(t,y1) % line plot

y2 = cos(2*pi*4*t);
plot(t,y2); % will replace the previous sin plot

%to plot two plots together
plot(t,y1,linestyle=':');
hold on; %to keep the sin plot
plot(t,y2,'r'); %cos plot with red color
xlabel('time');
ylabel('values');
legend('sin', 'cos');
title('sin cos plots together');

%saving directly
cd 'W:\FOCUS\Github\DataScience_PRIVATE\CourseEra_AndrewNgML\Octave practice';
print -dpng 'sin_cos_plot.png'

close %close the figure


% the other way to plots two different plots
% using figure number
figure(1); plot(t,y1);
figure(2); plot(t,y2);
close

% similar to figure, we can use subplots
subplot(1,2,1); %divides plot into 1X2 grid, and access first (1) grid
plot(t,y1);
subplot(1,2,2);
plot(t,y2);
axis([0.5 1 -1 1]) %0.5 to 1 for x-axis; -1 to 1 for y-axis
% clf -- clears image

A = magic(5)
figure(1); image(A); %colorplot

%comma chaining of commands; executing multiple commands in a single line
figure(2); imagesc(A), colorbar, colormap gray; %colorplot with grayscale