% Set up the axes.
axesm('mercator','MapLatLimit',[-90 90],'MapLonLimit',[-180 180])

% Calculate the great circle track.
[lattrkgc,lontrkgc] = track2(40,-35,40,35);

% Calculate the rhumb line track.
[lattrkrh,lontrkrh] = track2('rh',40,-35,40,35);

% Plot both tracks.
plotm(lattrkgc,lontrkgc,'g','MarkerSize',20)
plotm(lattrkrh,lontrkrh,'r','MarkerSize',20)