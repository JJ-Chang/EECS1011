base_url = "dd.weather.gc.ca/hydrometric/csv/";
frequency = "daily";
file_type = "csv";
station_name = ["Etobikoke Creek below Queen Elizabeth Highway", "Little Rouge Creek near Locust Hill"...
    "Humber River at Elder Mills", "Don River at Tod Morden"];
stationID = ["02HC030", "02HC028", "02HC025", "02HC024"];

station1 = strcat('https://', base_url, 'ON', '/', frequency, '/', 'ON', '_', '02HC030', '_', frequency, '_hydrometric.', file_type);
station2 = strcat('https://', base_url, 'ON', '/', frequency, '/', 'ON', '_', '02HC028', '_', frequency, '_hydrometric.', file_type);
station3 = strcat('https://', base_url, 'ON', '/', frequency, '/', 'ON', '_', '02HC025', '_', frequency, '_hydrometric.', file_type);
station4 = strcat('https://', base_url, 'ON', '/', frequency, '/', 'ON', '_', '02HC024', '_', frequency, '_hydrometric.', file_type);
station = [station1, station2, station3, station4];

close all %close previously opened figures

for i = 1:4
    url = station(i);
    depth_data = webread(url).WaterLevel_NiveauD_eau_m_;
    depth_data(isnan(depth_data))=[];
    
    x = 1:1:length(depth_data);
    avgDepth = mean(depth_data) * ones(1, length(depth_data)); %calculate average of depth
    stdDepth = std(depth_data); %calculate stdev of depth
    depthSuper = depth_data + stdDepth; %1 stdev above data
    depthSub = depth_data - stdDepth; %1 stdev below data
    depthSub_reverse = zeros(size(depthSub)); %preallocate depthSub_reverse to be same size as depthSub
    
    %create stdev vector
    j=1;
    for a = length(depth_data):-1:1
        depthSub_reverse(j) = depthSub(a);
        j=j+1; % increment j positive
    end
    
    figure(i); %keep the previous figures open
    plot(x, depth_data, x, avgDepth, 'm');
    patch([1:1:length(depth_data) length(depth_data):-1:1],[depthSuper' depthSub_reverse'],'b','facealpha',0.05,'edgecolor','k','edgealpha',0.05);
    %patch error: Vectors must be the same length. When tested the lengths
    %of each vector are the same. But gave error until I transposed the
    %vectors
    
    legend('original data','average values','standard deviation');
    title({["Daily Water Level at " + station_name(i)]
        ['ID: ' + stationID(i)]});
    ylabel("Water Level [m]");
    xlabel("Historical Daily Water Level [Day]");
end