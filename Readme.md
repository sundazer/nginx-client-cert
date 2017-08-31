# Test project for nginx with client cert authentication

Run script.sh to start server. Requires Docker. Test certificates included.

Test auth with curl:
```sh
$ curl -k --key certs/client.key --cert certs/client.crt https://localhost
```
Test invalid auth with curl:
```sh
$ curl -k https://localhost
```
