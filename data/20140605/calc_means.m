angles = 0:45:90;
dists = 0.5:0.5:3;

means = nan(length(dists), length(angles));
for i=1:length(dists)
    for j=1:length(angles)
        varname = sprintf('a_%02d_%02d', angles(j), dists(i)*10);
        if exist(sprintf(varname, 'var'))
            means(i,j) = eval(sprintf('mean(abs(%s))', varname));
        end
    end
end

plot(means, '.-');
legend({'$90^\circ$', '$135^\circ$', '$0^\circ$'}, 'interpreter', 'latex', 'fontsize', 16);
set(gca, 'XTick', dists*2);
set(gca, 'XTickLabel', dists);
xlabel('Distance from emitter (m)', 'fontsize', 16)
ylabel('Average loudness', 'fontsize', 16)
title('Loudness vs. emitter distance and angle', 'fontsize', 16)
