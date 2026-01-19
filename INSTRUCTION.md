Run namespace.yml: kubectl apply -f namespace.yml

Run busybox.yml: kubectl apply -f busybox.yml -n todoapp

Run todoapp-pod.yml: kubectl apply -f todoapp-pod.yml -n todoapp

Test port-forward: kubectl port-forward pod/todoapp 8081:8080 -n todoapp

Test busybox curl: kubectl -n todoapp exec -it busybox -- sh
curl todoapp:8081