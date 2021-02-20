# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~740MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.11.1-alpine-3.13.2
2021/02/20 12:11:31 [INFO] ▶ Start clair-scanner
2021/02/20 12:11:40 [INFO] ▶ Server listening on port 9279
2021/02/20 12:11:40 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 12:11:40 [INFO] ▶ Analyzing 4c78e56164ca8dec8a6296b9b6003ac6de4bf871d813f0f271c07d09e52a2cb2
2021/02/20 12:11:41 [INFO] ▶ Analyzing 5f0a3d8dfcdf89b569439e339f38499daf1a21333cb76201612b9264460bda79
2021/02/20 12:11:41 [INFO] ▶ Analyzing e7d7d10863e0d24cf49e2ce25c664004ecdbc65ca677cd047193c424261e695c
2021/02/20 12:11:41 [WARN] ▶ Image [secureimages/logstash:7.11.1-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 12:11:41 [ERRO] ▶ Image [secureimages/logstash:7.11.1-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/logstash:7.11.1-alpine-3.13.2
2021-02-20T12:11:43.129Z        INFO    Need to update DB
2021-02-20T12:11:43.130Z        INFO    Downloading DB...
2021-02-20T12:11:54.363Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T12:11:54.366Z        INFO    Detecting  vulnerabilities...

secureimages/logstash:7.11.1-alpine-3.13.2 (alpine 3.13.2)
==========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 3 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 1)
```

## Official Docker image (~963MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.11.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.11.1
2021/02/20 12:11:58 [INFO] ▶ Start clair-scanner
2021/02/20 12:12:13 [INFO] ▶ Server listening on port 9279
2021/02/20 12:12:13 [INFO] ▶ Analyzing 291eb894538de0baee3beecbbb57ef8668b00974b05062ff0d78c0dc110820ac
2021/02/20 12:12:13 [INFO] ▶ Analyzing f6e470614171b9d8c33ecec979c50ee5b10b327959bd19ab91df3e9271d6add8
2021/02/20 12:12:13 [INFO] ▶ Analyzing 618f451253e7c319bf341bfa8a264cfe7c78c0cd5493497ec282f6e904ec7a2a
2021/02/20 12:12:13 [INFO] ▶ Analyzing 8931752793f844c9be24eafc4a249d517100b25de7db1c1115e3bb5b83a420e2
2021/02/20 12:12:13 [INFO] ▶ Analyzing 514d6d62b473cc71882f48d2f60aab16146272d4aab7097cf2795448435297ce
2021/02/20 12:12:14 [INFO] ▶ Analyzing f55b9823b9df7f2e6ed6059ecb77429a2894bde77677963921e463880da83912
2021/02/20 12:12:14 [INFO] ▶ Analyzing 2f7cc9cd165ee9fca376c0fd1c184f7cd7dee8f2f0f43c0fd3db18d86f51cb3a
2021/02/20 12:12:14 [INFO] ▶ Analyzing 4bc4e37e92fe99207413b07ba0a2b81e6968d032572d38c803f79768946e3fb5
2021/02/20 12:12:14 [INFO] ▶ Analyzing 5a7994a11fc8002b96a33377b33d7c197a953b5cde5e768a7b91bb13eacd60f2
2021/02/20 12:12:14 [INFO] ▶ Analyzing 7e1d10fe42537505197b8cfa4b69158bf39a79181d233c14f2c17cbc6017b153
2021/02/20 12:12:14 [INFO] ▶ Analyzing a80bb4553e968211b6fe2296c5a20f0258b206584a795bb63db475adab91de84
2021/02/20 12:12:14 [INFO] ▶ Analyzing 29fc0c2c9051dac71e1a7d6c1720e998123f3d79c347eaf046b8af571a32c1b4
2021/02/20 12:12:14 [INFO] ▶ Image [docker.elastic.co/logstash/logstash:7.11.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress docker.elastic.co/logstash/logstash:7.11.1
2021-02-20T12:12:16.690Z        INFO    Need to update DB
2021-02-20T12:12:16.690Z        INFO    Downloading DB...
2021-02-20T12:12:34.469Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T12:12:34.515Z        INFO    Detecting  vulnerabilities...

docker.elastic.co/logstash/logstash:7.11.1 (centos 7.9.2009)
============================================================
Total: 596 (UNKNOWN: 0, LOW: 357, MEDIUM: 235, HIGH: 4, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 3 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 1)
```
