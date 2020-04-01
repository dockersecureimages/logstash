# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.6.2-alpine-3.11.5
2020/04/01 16:24:40 [INFO] ▶ Start clair-scanner
2020/04/01 16:24:44 [INFO] ▶ Server listening on port 9279
2020/04/01 16:24:44 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/01 16:24:44 [INFO] ▶ Analyzing 0f97dace628e48a9e2c893e0cf15522e5fa8b598225b381a47b470c9b2cd478d
2020/04/01 16:24:45 [INFO] ▶ Analyzing dc705094d4eee97a54906fb7b69cf2dae8a300b4392b21cc3b8bdb70395edace
2020/04/01 16:24:45 [INFO] ▶ Analyzing 9e85104ec1d2b00c4b82cf16ac68db78f5503570a3cd6430dd111fb812473ee7
2020/04/01 16:24:45 [INFO] ▶ Image [secureimages/logstash:7.6.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/logstash:7.6.2-alpine-3.11.5
2020-04-01T13:24:49.287Z        INFO    Need to update DB
2020-04-01T13:24:49.288Z        INFO    Downloading DB...
2020-04-01T13:25:11.009Z        INFO    Reopening DB...
2020-04-01T13:25:19.331Z        INFO    Detecting Alpine vulnerabilities...
2020-04-01T13:25:19.332Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.6.2-alpine-3.11.5 (alpine 3.11.5)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 4, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.6.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.6.2
2020/04/01 16:26:16 [INFO] ▶ Start clair-scanner
2020/04/01 16:26:29 [INFO] ▶ Server listening on port 9279
2020/04/01 16:26:29 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/04/01 16:26:29 [INFO] ▶ Analyzing 7d06a39e8ea2bbcd8760d15976efe1825d59efb291bed9b2093e9e637481949f
2020/04/01 16:26:30 [INFO] ▶ Analyzing 295584e48ae40b1802cbb4ad5c53c8132720ff7421ad00d12956377bb8cf8e3a
2020/04/01 16:26:30 [INFO] ▶ Analyzing a1b51bbc59160a30f9587bdf7805e5e54bdb08be65aa261d1dd2c95c31f7967a
2020/04/01 16:26:31 [INFO] ▶ Analyzing d94116ddae2b21f5b04cdced3f63c6066f47fa9c5891b5637088fefa57b585d8
2020/04/01 16:26:31 [INFO] ▶ Analyzing 08c518c20e8d2ed411ca3cd94e43acd3e955b1891b2d68fbc3a21923c4e46609
2020/04/01 16:26:31 [INFO] ▶ Analyzing 860283b4d2a45f50a1870dabe1f0cfc91dc1dc6254ef5cfa599f778e86c374b2
2020/04/01 16:26:31 [INFO] ▶ Analyzing 29257a37f0f96e59a95e69a652fad4b8de505e4c531bfd10c9ae278477e29ace
2020/04/01 16:26:31 [INFO] ▶ Analyzing 1be45db1ef3a12cfe8e64d9eb0a91926f3552b6b9ff2501e69300f35124e54c4
2020/04/01 16:26:31 [INFO] ▶ Analyzing f85b9df5dbb4b652f305ef1bf39d5aea4a7380cfcb3afe63379a369876f7bcaa
2020/04/01 16:26:31 [INFO] ▶ Analyzing 2cb5487640562b8fa3dcbfdcb9197a283ca99923b2a308d51aba52e91042e98a
2020/04/01 16:26:31 [INFO] ▶ Analyzing 34fec3e6cf0807c18c0040cbddcc2f980e1e3e73f493f2cf5dabf7fd461eea7f
2020/04/01 16:26:31 [WARN] ▶ Image [docker.elastic.co/logstash/logstash:7.6.2] contains 13 total vulnerabilities
2020/04/01 16:26:31 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash:7.6.2] contains 13 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress docker.elastic.co/logstash/logstash:7.6.2
2020-04-01T13:26:34.106Z        INFO    Need to update DB
2020-04-01T13:26:34.106Z        INFO    Downloading DB...
2020-04-01T13:26:40.288Z        INFO    Reopening DB...
2020-04-01T13:27:00.292Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-04-01T13:27:00.301Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.6.2 (centos 7.7.1908)
===========================================================
Total: 678 (UNKNOWN: 0, LOW: 67, MEDIUM: 482, HIGH: 123, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 4, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```
