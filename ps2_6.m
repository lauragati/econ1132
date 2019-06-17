% Problem Set 2, Question 6
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

series = 'CPALTT01USQ661S';
metadata = fetch(c,series);
time  = metadata.Data(:,1);
CPI = metadata.Data(:,2);

% Plot CPI
figure
set(gcf,'color','w'); % sets white background color
set(gcf, 'Position', get(0, 'Screensize')); % sets the figure fullscreen
plot(time,CPI, 'b', 'linewidth',2)
ax = gca; % current axes
ax.FontSize = fs;
grid on
grid minor
legend('CPI', 'location', 'southeast')
datetick('x','yyyy-mm')
title('CPI, level, quarterly, base-year 2015')

%% Redo for IT prices

% Load in data
series = 'CUUR0000SEEE';
metadata2 = fetch(c,series);
time_IT  = metadata2.Data(:,1);
p_IT = metadata2.Data(:,2);

% Plot IT price index
figure
set(gcf,'color','w'); % sets white background color
set(gcf, 'Position', get(0, 'Screensize')); % sets the figure fullscreen
plot(time_IT,p_IT, 'b', 'linewidth',2)
ax = gca; % current axes
ax.FontSize = fs;
grid on
grid minor
legend('IT prices', 'location', 'northeast')
datetick('x','yyyy-mm')
title('IT price index, level, monthly, base-year 1988')

% Now save the plots as a pdf and print them.

% Finally, redefine the variable your_name, and print the Command window
% output by right-clicking on the Command Window and selecting Print.
your_name = 'Laura Gati' % don't put a semicolon - that suppresses output
pwd
datestr(today,'dd-mm-yyyy')

close(c)
