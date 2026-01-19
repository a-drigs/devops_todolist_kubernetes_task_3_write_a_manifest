Run namespace.yml: .infrastructure/kubectl apply -f namespace.yml

Run busybox.yml: .infrastructure/kubectl apply -f busybox.yml -n todoapp

Run todoapp-pod.yml: .infrastructure/kubectl apply -f todoapp-pod.yml -n todoapp

Test port-forward: kubectl port-forward pod/todoapp 8081:8080 -n todoapp

Get todoapp ip: kubectl get pods -o wide

Test busybox curl: kubectl -n todoapp exec -it busybox -- sh
curl <todoapp-pods-ip>:8080