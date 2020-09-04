# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~379MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.9.1-alpine-3.12.0
2020/09/04 15:45:13 [INFO] ▶ Start clair-scanner
2020/09/04 15:45:17 [INFO] ▶ Server listening on port 9279
2020/09/04 15:45:17 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 15:45:18 [INFO] ▶ Analyzing 93af25af8cae99edfd753c7ed88766fd9c0d8c59e8a4f4ae3fe123463683160e
2020/09/04 15:45:18 [INFO] ▶ Analyzing 0de2586a458016cf5c3358e1088dd2de3f0f29d1ee2cb4dcfa72af03d5e390f5
2020/09/04 15:45:18 [INFO] ▶ Analyzing 7b036703a0e5daf2024055851c6469ed16b0d9a5bf4c7c549daf74adc60594c3
2020/09/04 15:45:18 [INFO] ▶ Image [secureimages/logstash:7.9.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/logstash:7.9.1-alpine-3.12.0
2020-09-04T15:45:21.028Z        INFO    Need to update DB
2020-09-04T15:45:21.028Z        INFO    Downloading DB...
2020-09-04T15:45:31.167Z        INFO    Detecting Alpine vulnerabilities...
2020-09-04T15:45:31.171Z        INFO    Detecting ruby vulnerabilities...

secureimages/logstash:7.9.1-alpine-3.12.0 (alpine 3.12.0)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 1, CRITICAL: 0)
```

## Official Docker image (~734MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.9.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.9.1
2020/09/04 15:45:35 [INFO] ▶ Start clair-scanner
2020/09/04 15:45:47 [INFO] ▶ Server listening on port 9279
2020/09/04 15:45:47 [INFO] ▶ Analyzing 33b5e87a65b65985a0445827bd27436b3467bb578d1b1cc2aa0b6000685fb4bf
2020/09/04 15:45:47 [INFO] ▶ Analyzing de3dfe44919bf26b740167eac62e7aa35502db8f59a3ad01fc8fdef830037b5b
2020/09/04 15:45:47 [INFO] ▶ Analyzing 326dacc5f399340525fa2ae2b76ce4c535e3a3facb7e41819ba5c24171a142df
2020/09/04 15:45:47 [INFO] ▶ Analyzing 12ebc0e54bf4dd15dd434f5bc798b143bbe44739f2b490287c2ab1c205abd380
2020/09/04 15:45:48 [INFO] ▶ Analyzing 6430cd015bcfa9a98f4e8a4f762e25984580516891442c5ccfc2585fdd265d92
2020/09/04 15:45:48 [INFO] ▶ Analyzing 16aa63af2483765a4f1cb806c47d40b34c3afe8e75b97a620b2ecde429a4fceb
2020/09/04 15:45:48 [INFO] ▶ Analyzing 01fc750474efe1d77093f589af6aa468eebeadfb5868b23379264aa6b2c3e4c5
2020/09/04 15:45:48 [INFO] ▶ Analyzing d07a2f53251ea497a7d543c80ebf93a670fa661914659f2e5ead0899b189bc69
2020/09/04 15:45:48 [INFO] ▶ Analyzing 1f2f6576302d7f26bc85180e2c3e13d53c5cfed00d0af94668d23bc2c2d9079d
2020/09/04 15:45:48 [INFO] ▶ Analyzing 100e9da571b7f6f961677f81d8c8fac15c52cacb0a6f153ec286ebb9d04e8621
2020/09/04 15:45:48 [INFO] ▶ Analyzing 1f996b2bc0acf75d926ec244aab06a4010485fd4e0d82c9691de9b81c4ad8cda
2020/09/04 15:45:48 [INFO] ▶ Analyzing 0088bc0427eee7489a5b291b1f363d210396d017bb0df2bc1ee7aebc742edf50
2020/09/04 15:45:48 [INFO] ▶ Image [docker.elastic.co/logstash/logstash:7.9.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress docker.elastic.co/logstash/logstash:7.9.1
2020-09-04T15:46:01.777Z        INFO    Need to update DB
2020-09-04T15:46:01.777Z        INFO    Downloading DB...
2020-09-04T15:46:19.762Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-09-04T15:46:19.778Z        INFO    Detecting ruby vulnerabilities...

docker.elastic.co/logstash/logstash:7.9.1 (centos 7.8.2003)
===========================================================
Total: 690 (UNKNOWN: 0, LOW: 388, MEDIUM: 295, HIGH: 7, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 1, CRITICAL: 0)
```
