dir "/data"
{{- if eq .UseTLS "false"}}
port 6379
{{- else}}
port 0
tls-port 6379
tls-cert-file /app/config/redis/tls/tls.crt
tls-ca-cert-file /app/config/redis/tls/tls.crt
tls-key-file /app/config/redis/tls/tls.key
tls-replication yes
tls-auth-clients no
{{- end}}
bind 0.0.0.0
maxmemory 0
maxmemory-policy volatile-lru
min-replicas-max-lag 5
min-replicas-to-write 1
rdbchecksum yes
rdbcompression yes
repl-diskless-sync yes
save ""
protected-mode no
requirepass replace-default-auth
masterauth replace-default-auth


