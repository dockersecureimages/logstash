# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~394MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.6.2-alpine-3.11.6
2020/04/25 13:44:14 [INFO] ▶ Start clair-scanner
2020/04/25 13:44:19 [INFO] ▶ Server listening on port 9279
2020/04/25 13:44:19 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 13:44:19 [INFO] ▶ Analyzing e9a8890ad58587d6f38ea3a15409fcbde36bc424d94e79a104daa1b1cd1862c4
2020/04/25 13:44:19 [INFO] ▶ Analyzing 2d0cdb2cb31e8d1accd36c7797dad58caafc1a4d0b950c4a350cfebdd1ebf02e
2020/04/25 13:44:19 [INFO] ▶ Analyzing 2276dcf52b73bf9cdf5ced34a9e9a26a4178807d1063228921379fa4a935554d
2020/04/25 13:44:19 [INFO] ▶ Image [secureimages/logstash:7.6.2-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/logstash:7.6.2-alpine-3.11.6
2020-04-25T10:44:24.757Z        INFO    Need to update DB
2020-04-25T10:44:24.757Z        INFO    Downloading DB...
2020-04-25T10:44:36.513Z        INFO    Detecting Alpine vulnerabilities...
2020-04-25T10:44:36.514Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.6.2-alpine-3.11.6 (alpine 3.11.6)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 5, CRITICAL: 1)
```

## Official Docker image (~813MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.6.2
2020/04/25 13:45:01 [INFO] ▶ Start clair-scanner
2020/04/25 13:45:17 [INFO] ▶ Server listening on port 9279
2020/04/25 13:45:17 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/25 13:45:17 [INFO] ▶ Analyzing 7d06a39e8ea2bbcd8760d15976efe1825d59efb291bed9b2093e9e637481949f
2020/04/25 13:45:18 [INFO] ▶ Analyzing 295584e48ae40b1802cbb4ad5c53c8132720ff7421ad00d12956377bb8cf8e3a
2020/04/25 13:45:18 [INFO] ▶ Analyzing a1b51bbc59160a30f9587bdf7805e5e54bdb08be65aa261d1dd2c95c31f7967a
2020/04/25 13:45:18 [INFO] ▶ Analyzing d94116ddae2b21f5b04cdced3f63c6066f47fa9c5891b5637088fefa57b585d8
2020/04/25 13:45:18 [INFO] ▶ Analyzing 08c518c20e8d2ed411ca3cd94e43acd3e955b1891b2d68fbc3a21923c4e46609
2020/04/25 13:45:18 [INFO] ▶ Analyzing 860283b4d2a45f50a1870dabe1f0cfc91dc1dc6254ef5cfa599f778e86c374b2
2020/04/25 13:45:18 [INFO] ▶ Analyzing 29257a37f0f96e59a95e69a652fad4b8de505e4c531bfd10c9ae278477e29ace
2020/04/25 13:45:18 [INFO] ▶ Analyzing 1be45db1ef3a12cfe8e64d9eb0a91926f3552b6b9ff2501e69300f35124e54c4
2020/04/25 13:45:18 [INFO] ▶ Analyzing f85b9df5dbb4b652f305ef1bf39d5aea4a7380cfcb3afe63379a369876f7bcaa
2020/04/25 13:45:18 [INFO] ▶ Analyzing 2cb5487640562b8fa3dcbfdcb9197a283ca99923b2a308d51aba52e91042e98a
2020/04/25 13:45:18 [INFO] ▶ Analyzing 34fec3e6cf0807c18c0040cbddcc2f980e1e3e73f493f2cf5dabf7fd461eea7f
2020/04/25 13:45:18 [WARN] ▶ Image [docker.elastic.co/logstash/logstash:7.6.2] contains 16 total vulnerabilities
2020/04/25 13:45:18 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash:7.6.2] contains 16 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress docker.elastic.co/logstash/logstash:7.6.2
2020-04-25T10:45:21.280Z        INFO    Need to update DB
2020-04-25T10:45:21.280Z        INFO    Downloading DB...
2020-04-25T10:45:41.922Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-04-25T10:45:41.945Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.6.2 (centos 7.7.1908)
===========================================================
Total: 717 (UNKNOWN: 0, LOW: 65, MEDIUM: 523, HIGH: 123, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 5, CRITICAL: 1)
```
