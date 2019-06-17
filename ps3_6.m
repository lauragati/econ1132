% Problem Set 3, Question 6
% Laura Gati 
% 11 June 2019

% Evaluate the code: Editor > Run.
% ----
clearvars
clc
fs=20; % fontsize


% Load in data
url = 'https://fred.stlouisfed.org/';
c = fred(url);

series = 'A939RX0Q048SBEA';
metadata = fetch(c,series);
time  = metadata.Data(:,1);
GDP = metadata.Data(:,2);

% Plot GDP
figure
set(gcf,'color','w'); % sets white background color
set(gcf, 'Position', get(0, 'Screensize')); % sets the figure fullscreen
plot(time,GDP, 'b', 'linewidth',2)
ax = gca; % current axes
ax.FontSize = fs;
grid on
grid minor
legend('US GDP', 'location', 'southeast')
datetick('x','yyyy-mm')
title('USA: Real GDP per capita, in chained 2012 dollars')

%% Redo for Greek GDP

% Load in data
series = 'CLVMNACSCAB1GQEL';
metadata2 = fetch(c,series);
time_gr  = metadata2.Data(:,1);
p_gr = metadata2.Data(:,2);

% Plot Greek GDP
figure
set(gcf,'color','w'); % sets white background color
set(gcf, 'Position', get(0, 'Screensize')); % sets the figure fullscreen
plot(time_gr,p_gr, 'b', 'linewidth',2)
ax = gca; % current axes
ax.FontSize = fs;
grid on
grid minor
legend('Greek GDP', 'location', 'northeast')
datetick('x','yyyy-mm')
title('Greece: Real GDP, quarterly, chained 2010 euros (millions)')

% Now save the plots as a pdf and print them.

% Finally, redefine the variable your_name, and print the Command window
% output by right-clicking on the Command Window and selecting Print.
your_name = 'Laura Gati' % don't put a semicolon - that suppresses output
pwd
datestr(today,'dd-mm-yyyy')

close(c)
