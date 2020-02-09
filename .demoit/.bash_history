### knative 
kubectl delete -f hello-service.yaml
kubectl get pods
kubectl apply -f hello-service.yaml
kubectl get all
curl -H'Host: helloworld-go.default.example.com' http://localhost
kubectl get all --watch
hey -z 30s -c 500 -host helloworld-go.default.example.com http://localhost/



### repeat
    kind create cluster
    kubectl config set-cluster kind-kind
go run main.go 
docker build . -t jvanhent/hello:v1
docker run --rm -it jvanhent/hello:v1
docker push jvanhent/hello:v1
kubectl apply -f pod.yaml 
kubectl delete -f pod.yaml 
kubectl logs -f hello