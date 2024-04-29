export WT_USERNAME=gsf_zhifanli
export WT_PASSWORD=zhifanli-carbonaware-01.
export REGION=westus
helm del carbon-intensity-exporter
helm install carbon-intensity-exporter \
   --set carbonDataExporter.region=$REGION \
   --set wattTime.username=$WT_USERNAME \
   --set wattTime.password=$WT_PASSWORD \
   ./charts/carbon-intensity-exporter