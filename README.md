# terraform_aws
Deploy de terraform em AWS com GitHub Actions configurado.
Antes do uso garanta que você realizou a criação de 
```
    AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY
```
Pois sem elas não será possível a execução do terraform.

Variáveis aceitas
1. Criação de máquinas virtual simples (Tipo Bool 0 ou 1):
```
instance_enabled = 0
```
2. Criação de domain DNS (string. Ex: google.com):
```
domain_primary = 0
```
3. Entradas dentro do primary dns (Ex: dns.google.com):
```
dns_entry = {
  "dns"  = {
    dns_name = "dns.google.com"
    resolve = [ "8.8.8.8" ]
    type = "A"
    ttl = 300
  },
}
```

OBS: Após a criação do DNS, você deverá alterar o DNS do local que realizou a compra do DNS para os DNS que forem informados na amazon.