% test_track1
% Set up the axes.
axesm('mercator')
gridm on; plabel on; mlabel on;

% Plot the great circle track in green.
[lattrkgc,lontrkgc] = track1(0,0,45,[-55 55]);
plotm(lattrkgc,lontrkgc,'g')

% Plot the rhumb line track in red.
[lattrkrh,lontrkrh] = track1('rh',0,0,45,[-55 55]);
plotm(lattrkrh,lontrkrh,'r')