model_name={'SVM','KNN'};
nModels=length(model_name);
models = model_name(1:nModels);
nSplits = 5;
marker_size = 60;

%%%% Load and plot results
leaf_type = 'original';
accuracy = load_results_cassava (leaf_type, models, nSplits);
accuracies = accuracy(:,1:nModels);
color_shape = {'ko','yo','bo','go','ro'};
lgd = legend('80-20','60-40','50-50','40-60','20-80');
lgd_title = 'Training-Test Data Split';
figure, plot_results (models,leaf_type,nSplits,accuracies,marker_size,color_shape,lgd,lgd_title);


leaf_type = 'leaflet';
accuracy = load_results_cassava (leaf_type, models, nSplits);
accuracies = accuracy(:,1:nModels);
color_shape = {'k^','y^','b^','g^','r^'};
lgd = legend('80-20','60-40','50-50','40-60','20-80','location','NE');
lgd_title = 'Training-Test Data Split';
plot_results (models,leaf_type,nSplits,accuracies,marker_size,color_shape,lgd,lgd_title);
%hold off