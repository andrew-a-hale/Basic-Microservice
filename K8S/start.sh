# API Gateway
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/cloud/deploy.yaml
kubectl apply -f ingress-srv.yaml

# RabbitMQ Message Bus
kubectl apply -f rabbitmq-depl.yaml

# Commands Service
kubectl apply -f commands-depl.yaml

# Platforms Service
kubectl apply -f platforms-depl.yaml
kubectl apply -f local-pvc.yaml
kubectl create secret generic mssql --from-literal=SA_PASSWORD=Pa55w0rd!
kubectl apply -f mssql-plat-depl.yaml
# kubectl apply -f platforms-np-srv-yaml

sleep 3