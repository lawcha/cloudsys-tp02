kubectl delete deployment.apps/angular-deployment
kubectl delete service/angular-svc
kubectl delete deployment.apps/postgres-admin-deployment
kubectl delete service/postgres-admin-svc
kubectl delete deployment.apps/postgres-deployment
kubectl delete service/postgres-svc
kubectl delete deployment.apps/spring-boot-deployment
kubectl delete service/spring-boot-svc

kubectl apply -f angular-deployment.yaml
kubectl apply -f angular-service.yaml 
kubectl apply -f spring-boot-service.yaml 
kubectl apply -f spring-boot-deployment.yaml 
kubectl apply -f postgres-admin-claim0-persistentvolumeclaim.yaml  
kubectl apply -f postgres-admin-deployment.yaml                    
kubectl apply -f postgres-admin-persistentvolumeclaim.yaml         
kubectl apply -f postgres-admin-service.yaml  
kubectl apply -f postgres-claim1-persistentvolumeclaim.yaml        
kubectl apply -f postgres-claim2-persistentvolumeclaim.yaml        
kubectl apply -f postgres-claim3-persistentvolumeclaim.yaml        
kubectl apply -f postgres-claim4-persistentvolumeclaim.yaml        
kubectl apply -f postgres-claim5-persistentvolumeclaim.yaml        
kubectl apply -f postgres-claim6-persistentvolumeclaim.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-persistentvolumeclaim.yaml
kubectl apply -f postgres-service.yaml


kubectl create configmap data.sql --from-file=db-scripts/data.sql
kubectl create configmap npa-city.sql --from-file=db-scripts/npa_city.sql
kubectl create configmap procedures.sql --from-file=db-scripts/procedures.sql
kubectl create configmap schema.sql --from-file=db-scripts/schema.sql
kubectl create configmap spring-role.sql --from-file=db-scripts/spring_role.sql
kubectl create configmap triggers.sql --from-file=db-scripts/triggers.sql

