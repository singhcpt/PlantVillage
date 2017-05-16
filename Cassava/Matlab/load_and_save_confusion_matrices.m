test_perc = [.2,.4,.5,.6,.8];
test_folder = [10,30,40,50,70];
leaf_type = 'leaflet';
model_name='Inception';
for i=1:length(test_perc)
predictions = csvread(['resources/' leaf_type '/labels_predictions/' num2str(test_folder(i)), '/predictions.csv']);
predictions=predictions+1;
labels = csvread(['resources/' leaf_type '/labels_predictions/' num2str(test_folder(i)) '/labels.csv']);
labels=labels+1;
save_confusion_matrix(predictions, labels, test_perc(i), leaf_type, model_name)
end