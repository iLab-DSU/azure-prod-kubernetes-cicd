echo '-------Deploy a PostgreSQL database'

kubectl create namespace ilabafrica-postgresql
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install --namespace ilabafrica-postgresql postgres bitnami/postgresql --set primary.persistence.size=1Gi
kubectl -n ilabafrica-postgresql annotate pod/postgres-postgresql-0 backup.velero.io/backup-volumes=data