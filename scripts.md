Verify carbon intensity data is in place.

kubectl get cm -n kube-system mock-carbon-intensity -o jsonpath='{.data}' | jq
You can view the carbon intensity values with the following command.

kubectl get cm -n kube-system mock-carbon-intensity -o jsonpath='{.binaryData.data}' | base64 --decode | jq

check namespace:
kubectl get cm --all-namespaces

kubectl apply -f carbon-aware-keda-scaler.yaml

clean up:
kind delete cluster