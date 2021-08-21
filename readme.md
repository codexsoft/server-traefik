Pull, `make install`, configurate, run `docker-compose run -d`.

Passwords must be encrypted:

```shell
htpasswd -Bbn admin mIpgTjMLYVV5PK1c7Snb99f
admin:$2y$05$JGIBB/MTqySsNG6EOp8fIuHuCBTWQabxVOfQe.3la68PAeO/b9tse

echo $(htpasswd -nb access CBgktr96wX0kjesN)
access:$apr1$FTcxwWWV$WDs8/lvOXSAesVnpSwoHb.

# to escape dollar signs (for docker-compose):

echo $(htpasswd -nb access CBgktr96wX0kjesN) | sed -e s/\\$/\\$\\$/g
access:$$apr1$$ZIrhluBu$$u203svXhtx4hc5kqvmOC51
```
