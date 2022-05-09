```bash
certbot certonly --manual --preferred-challenges=dns --email certbot.letsencrypt@psilva1000.email --server https://acme-v02.api.letsencrypt.org/directory -d psilva.org -d *.psilva.org
```