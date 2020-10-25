kubectl delete deployment.apps/angular-deployment
kubectl delete service/angular-svc
kubectl delete deployment.apps/postgres-admin-deployment
kubectl delete service/postgres-admin-svc
kubectl delete deployment.apps/postgres-deployment
kubectl delete service/postgres-svc
kubectl delete deployment.apps/spring-boot-deployment
kubectl delete service/spring-boot-svc

kubectl delete configmap/scripts

kubectl create configmap scripts --from-file=db-scripts/1_schema.sql --from-file=db-scripts/2_triggers.sql --from-file=db-scripts/3_procedures.sql --from-file=db-scripts/4_npa_city.sql --from-file=db-scripts/5_data.sql --from-file=db-scripts/6_spring_role.sql

kubectl apply -f angular-deployment.yaml
kubectl apply -f angular-service.yaml 
kubectl apply -f spring-boot-service.yaml 
kubectl apply -f spring-boot-deployment.yaml 
kubectl apply -f postgres-admin-deployment.yaml                    
kubectl apply -f postgres-admin-service.yaml  
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-service.yaml
