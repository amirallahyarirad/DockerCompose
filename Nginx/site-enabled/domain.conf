server {
    listen 80;
    server_name 1st.domain.com;
    return 301 https://$host$request_uri;

}

server {
    listen 443 ssl;
    server_name server.domain.com;

    ssl_certificate     /etc/nginx/ssl/domain.crt;
    ssl_certificate_key /etc/nginx/ssl/domain.key;

    ssl_session_cache  builtin:1000  shared:SSL:10m;
    ssl_protocols  TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers HIGH:!aNULL:!eNULL:!EXPORT:!CAMELLIA:!DES:!MD5:!PSK:!RC4;
    ssl_prefer_server_ciphers on;

#    access_log            /var/log/nginx/nginx.access.log;

    location / {

        proxy_pass           http://1.1.1.1:80;
        proxy_set_header Host $http_host;

        }
}
