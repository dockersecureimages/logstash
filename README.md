# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.6.1-alpine-3.11.3
2020/03/05 15:49:16 [INFO] ▶ Start clair-scanner
2020/03/05 15:49:20 [INFO] ▶ Server listening on port 9279
2020/03/05 15:49:20 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/05 15:49:20 [INFO] ▶ Analyzing eaaf7526e8d6e0fdd0fdf89dfb54a011d18931c58393ea71b229d59b8a586cb1
2020/03/05 15:49:21 [INFO] ▶ Analyzing 53495b229f444465e3512d98b5644d46ec495e6dcfb97d9d555b93bb6d514d89
2020/03/05 15:49:21 [INFO] ▶ Analyzing 9dbae11c271b8de14c93f0439ca756187173ddd0b3d78392f5b6e0597a4ea698
2020/03/05 15:49:21 [INFO] ▶ Image [secureimages/logstash:7.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/logstash:7.6.1-alpine-3.11.3
2020-03-05T13:49:24.137Z        INFO    Need to update DB
2020-03-05T13:49:24.137Z        INFO    Downloading DB...
2020-03-05T13:49:27.919Z        INFO    Reopening DB...
2020-03-05T13:49:33.136Z        INFO    Detecting Alpine vulnerabilities...
2020-03-05T13:49:33.137Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.6.1-alpine-3.11.3 (alpine 3.11.3)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 25 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.6.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.6.1
2020/03/05 15:49:40 [INFO] ▶ Start clair-scanner
2020/03/05 15:49:53 [INFO] ▶ Server listening on port 9279
2020/03/05 15:49:53 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/03/05 15:49:53 [INFO] ▶ Analyzing 41b234731b9aa385f144bece114056bbfaaec9a17f31a7d7bd50a83e7e48ced6
2020/03/05 15:49:54 [INFO] ▶ Analyzing d7e6a4b0567b6a6643be15e34ecae701c370964ed28ffe77af3ac3413d5211a0
2020/03/05 15:49:54 [INFO] ▶ Analyzing bd40ae8bc48047e7a2148227153651285723939282c4c1a8dacf73401caf6f1f
2020/03/05 15:49:55 [INFO] ▶ Analyzing dbc2e5841278adb71fc46c089e1313d85471dd062cbc83b08177f28e01d71362
2020/03/05 15:49:55 [INFO] ▶ Analyzing 4b49951b3884d452c76372773d7064cb04cd1e7097b850b70938d75ecc59a106
2020/03/05 15:49:55 [INFO] ▶ Analyzing 4111196da788213698e4976d28e1265f1aac7fbae2b1530293c36b76e76d4895
2020/03/05 15:49:55 [INFO] ▶ Analyzing 54a801080dfa844714f2e125a69c678ddcb44c6c9059e430a93926165a1a44ef
2020/03/05 15:49:55 [INFO] ▶ Analyzing 0efd94dc6e252b0a05ce66df4d09a15f9b398e5b2a3ff326936af03f37ade063
2020/03/05 15:49:55 [INFO] ▶ Analyzing 1a43f0ad1ab07fca74039d2af77b7b72bd46bc1679e438fc75584bbe18d6fc26
2020/03/05 15:49:55 [INFO] ▶ Analyzing 505b5d16b5b3f7b35d0b2eb97b3d3bb3835e5b93503a41813b72ae5e762b4a96
2020/03/05 15:49:55 [INFO] ▶ Analyzing b912298a3cc113933953a6545d10a1e44e5c8c772de7517c2087d4b4681c8731
2020/03/05 15:49:55 [INFO] ▶ Image [docker.elastic.co/logstash/logstash:7.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress docker.elastic.co/logstash/logstash:7.6.1
2020-03-05T13:49:59.073Z        INFO    Need to update DB
2020-03-05T13:49:59.073Z        INFO    Downloading DB...
2020-03-05T13:50:02.591Z        INFO    Reopening DB...
2020-03-05T13:50:18.197Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-03-05T13:50:18.206Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.6.1 (centos 7.7.1908)
===========================================================
Total: 672 (UNKNOWN: 0, LOW: 64, MEDIUM: 483, HIGH: 119, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 25 (UNKNOWN: 3, LOW: 0, MEDIUM: 17, HIGH: 4, CRITICAL: 1)
```
