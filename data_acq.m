% Title: ACL reconstuction and ACL repair gait analysis
% Date: 06/02/2023
% Name: Liam Brosnan

%---------------------------changelog------------------------------------%
% added in the comparison for the left and right side of the legs
% including: ankle angle & euler angle, knee angle & euler angle, hip angle
% & euler angle, pelvic angle and rotation

% added plot for the moments of the ankle, knee, hip left and right side - 
% the left side doesn't seem to be giving any data, not sure on what the
% possible reasons for this are the GRF plates aren't being walked on
% duringt the experiment

%% data collection
acq = btkReadAcquisition('example_data_test.c3d');  % all recorded data is
% stored in acq variable but needs to be extracted using other commands
[markers, markerInfo.units] = btkGetMarkers(acq);   % markers is a 
% scructure containing the 3D trajectory of each markers.
[angles, anglesInfo] = btkGetAngles(acq);   % collect all angle data into 
% a single varaible structure and units used of the acquired data
[forces, forcesInfo] = btkGetForces(acq);   % collect all force data into a 
% single variable structure
[moments, momentsInfo] = btkGetMoments(acq);    % collect all moments data 
% into a single variable structure
[events, eventsInfo] = btkGetEvents(acq);  % extract events from the data 
% collection

%% plotting data
% ankle angle plot
figure("Name","Ankle Angles");  % create a figure window for plotting
subplot(1,2,1);    % plot on the left of the figure
plot(angles.LAnkleangles);  % plot left ankle angles
title ('3 Dimensional Angles of the Left Ankle');   % title the plot
xlabel('Sample number');     % title the x axis 
ylabel('Angle (°)');    % title the y axis
legend({'data 1','data 2','data 3'},'Location','southwest');    % label
% data points

subplot(1,2,2); % plot on the right side fo the figure
plot(angles.RAnkleangles);  % plot right ankle angles
title ('3 Dimensional Angles of the Right Ankle');  %title the plot
xlabel('Sample number');     % label the x axis
ylabel('Angle (°)');    % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest');    % label the 
% data points


% ankle euler angle plot
figure("Name","Ankle Euler Angles");  % create a figure window for plotting
subplot(1,2,1); % plot on the left side of the figure
plot(angles.LAnkleAnglesEuler); % plot left ankle euler angles
title ('3 Dimensional Euler Angles of the Left Ankle'); % title the plot
xlabel('Sample number');     % label the x axis
ylabel('Angle (°)');    % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest');    % label the
% data points


subplot(1,2,2); % plot on the right side of the figure
plot(angles.RAnkleAnglesEuler);  % plot right ankle euler angle
title ('3 Dimensional Euler Angles of the Right Ankle'); % title the plot
xlabel('Sample number'); % plot the x axis
ylabel('Angle (°)'); % plot the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points



% knee angle plot
figure("Name","Knee Angles"); % create a figure window for plotting
subplot(1,2,2); % plot on the right side of the figure
plot (angles.RKneeangles);   % plot right knee angles
title ('3 Dimensional Angles of the Right Knee'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points

subplot(1,2,1); % plot on th eleft side of the figure
plot(angles.LKneeangles);    % plot left knee angles
title ('3 Dimensional Angles of the Left Knee'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the 
% data points


% knee euler angle plot
figure("Name","Knee Euler Angles"); % create a figure window for 
% plotting
subplot(1,2,2); % plot on the right side of the figure
plot (angles.RKneeAnglesEuler);  % plot right knee euler angles
title ('3 Dimensional Euler Angles of the Right Knee'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the 
% data points

subplot(1,2,1); % plot on the left side of the figure
plot(angles.LKneeAnglesEuler);   % plot left knee euler angles
title ('3 Dimensional Euler Angles of the Left Knee'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the 
% data points


% hip angles
figure("Name","Hip Angles"); % create a figure window for plotting
subplot(1,2,2); % plot on the right side of the window
plot (angles.RHipangles);    % plot right hip angles
title ('3 Dimensional Angles of the Right Hip'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points

subplot(1,2,1); % plot on the left side of the window
plot(angles.LHipangles) % plot left hip angles
title ('3 Dimensional Angles of the Left Hip'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points


% hip euler angles 
figure("Name","Hip Euler Angles "); % create a figure window for plotting
subplot(1,2,2);
plot (angles.RHipAnglesEuler)   % plot right hip euler angles
title ('3 Dimensional Euler Angles of the Right Hip'); % title the plot
xlabel('Sample number'); % label the axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points

subplot(1,2,1) % plot on the right side of the window
plot(angles.LHipAnglesEuler)    % plot left hip euler angles
title ('3 Dimensional Euler Angles of the Left Hip'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the 
% data points


% pelvic angles
figure ("Name","Pelvic Angles") % create a figure window 
plot (angles.Pelvicangles)  % plot pelvic angles
title ('3 Dimensional Pelvic Angles'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the 
% data points



% pelvic rotation
figure ("Name","Pelvic Rotation") % create a figure window for plotting
plot (angles.Pelvicrotation)    % plot pelvic rotation
title ('3 Dimensional Pelvic Rotation'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Angle (°)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points


% Ankle force plot
figure("Name", "Ankle Force"); % create a figure window for plotting
subplot(1,2,1); % plot on the left side of the window
plot(markers.RAnkleForce);  % plot right ankle force
title ('3 Dimensional Forces of the Right Ankle'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Force (N)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the 
% data points

subplot(1,2,2); % plot on the right side of the figure window
plot(forces.LAnkleForce)    % plot left ankle force
title ('3 Dimensional Forces of the Left Ankle'); % title the plot
xlabel('Sample number'); % label the x axis
ylabel('Force (N)'); % label the y axis
legend({'data 1','data 2','data 3'},'Location','southwest'); % label the
% data points

%% plotting moments
% ankle moments plot
figure('name','Ankle moments'); % create a figure window for plotting
subplot (1,2,1); % plot on the left side of the window
plot(moments.LAnkleMoment); % plot left ankle moments
title ('3 Dimensional Moments of the Left Ankle') % title the plot
xlabel ('Sample number'); % label the x axis
ylabel('Moments (Nmm)') % label the y axis
legend ({'data 1','data 2','data 3'}, 'Location','southwest'); % label the
% data points

subplot (1,2,2); % plot on the right side of the window
plot(moments.RAnkleMoment); % plot right ankle moments
title ('3 Dimensional Moments of the Right Ankle') % title the plot
xlabel ('Sample number'); % label the x axis
ylabel('Moments (Nmm)') % label the y axis
legend ({'data 1','data 2','data 3'}, 'Location','southwest'); % label the
% data points

% knee moments plot
figure('name','Knee moments'); % create a figure window for plotting
subplot (1,2,1); % plot on the left side of the window
plot(moments.LKneeMoment,'LineWidth',2.0); % plot left knee moments
title ('3 Dimensional Moments of the Left Knee') % title the plot
xlabel ('Sample number'); % label the x axis
ylabel('Moments (Nmm)') % label the y axis
legend ({'data 1','data 2','data 3'}, 'Location','southwest'); % label the
% data points

subplot (1,2,2); % plot on the right side of the window
plot(moments.RKneeMoment); % plot right knee moments
title ('3 Dimensional Moments of the Right Knee') % title the plot
xlabel ('Sample number'); % label the x axis
ylabel('Moments (Nmm)') % label the y axis
legend ({'data 1','data 2','data 3'}, 'Location','southwest'); % label the
% data points

% hip moments plot
figure('name','Hip moments'); % create a figure window for plotting
subplot (1,2,1); % plot on the left side of the window
plot(moments.LHipMoment); % plot left ankle moments
title ('3 Dimensional Moments of the Left Hip') % title the plot
xlabel ('Sample number'); % label the x axis
ylabel('Moments (Nmm)') % label the y axis
legend ({'data 1','data 2','data 3'}, 'Location','southwest'); % label the
% data points

subplot (1,2,2); % plot on the right side of the window
plot(moments.RHipMoment); % plot right ankle moments
title ('3 Dimensional Moments of the Right Hip') % title the plot
xlabel ('Sample number'); % label the x axis
ylabel('Moments (Nmm)') % label the y axis
legend ({'data 1','data 2','data 3'}, 'Location','southwest'); % label the
% data points

figure('Name','testing');
subplot(2,2,1);
plot(markers.WAIST1);
title('WAIST 1 plot');
xlabel('Sample Number');
ylabel('?');
legend({'data 1','data 2', 'data 3'},'Location','southwest')
subplot(2,2,2);
plot(markers.WAIST2);
title('WAIST 2 plot');
xlabel('Sample Number');
ylabel('?');
legend({'data 1','data 2', 'data 3'},'Location','southwest')
subplot(2,2,3);
plot(markers.WAIST3);
title('WAIST 3 plot');
xlabel('Sample Number');
ylabel('?');
legend({'data 1','data 2', 'data 3'},'Location','southwest')
subplot(2,2,4);
plot(markers.WAIST4);
title('WAIST 4 plot');
xlabel('Sample Number');
ylabel('?');
legend({'data 1','data 2', 'data 3'},'Location','southwest')
