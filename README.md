# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~379MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.8.1-alpine-3.12.0
2020/07/31 16:29:59 [INFO] ▶ Start clair-scanner
2020/07/31 16:30:03 [INFO] ▶ Server listening on port 9279
2020/07/31 16:30:03 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/31 16:30:03 [INFO] ▶ Analyzing dd75291884b85d4f482d3479759314dbf5263ef73f85db85160cb47624032d03
2020/07/31 16:30:04 [INFO] ▶ Analyzing 535b63cdce34b31dd699d5ddf1e7ed2f7ec2f5e6ceb1cd130e9da36ceb3607e5
2020/07/31 16:30:04 [INFO] ▶ Analyzing 2ef121929e1609d1fefeb237f35a66300273e7b854858da7ec0e07d5695b3cc1
2020/07/31 16:30:04 [INFO] ▶ Image [secureimages/logstash:7.8.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/logstash:7.8.1-alpine-3.12.0
2020-07-31T13:30:06.817Z        INFO    Need to update DB
2020-07-31T13:30:06.817Z        INFO    Downloading DB...
2020-07-31T13:30:16.875Z        INFO    Detecting Alpine vulnerabilities...
2020-07-31T13:30:16.876Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.8.1-alpine-3.12.0 (alpine 3.12.0)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~785MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.8.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.8.1
2020/07/31 16:30:21 [INFO] ▶ Start clair-scanner
2020/07/31 16:30:34 [INFO] ▶ Server listening on port 9279
2020/07/31 16:30:34 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/07/31 16:30:34 [INFO] ▶ Analyzing d8de4c608954baa7f5a8eaf55fa7cafc5a17521e8fcef1757db9ab340cc215b4
2020/07/31 16:30:34 [INFO] ▶ Analyzing aaa2acf98db232c9eb4ebeb1c7a9954be4cc410440f380ab3aeb93c14ceb72c1
2020/07/31 16:30:34 [INFO] ▶ Analyzing fd691cdb23d48477ee6425905a1cbb42c69f11495d5df1df5997be10975e4cee
2020/07/31 16:30:35 [INFO] ▶ Analyzing 91b65a9642ba8cb7f79cd77ed6238f8e58fd6802b1a3ae2ab118c61032ffdcea
2020/07/31 16:30:35 [INFO] ▶ Analyzing b5b0038a65793c4e8122d1f28068123e225dfb006a99c8c5395be71c61f4fadc
2020/07/31 16:30:35 [INFO] ▶ Analyzing 61a48881f9d75e93f13a78e700de3aa74d371e6c3d12ce0d127434f495e07443
2020/07/31 16:30:35 [INFO] ▶ Analyzing c2722b391a5a126ff6fa59387b7b85bb3525a06f6396a1efbea60888b9b711a4
2020/07/31 16:30:35 [INFO] ▶ Analyzing a4e9420e12b79beff4a8448b6fe4c061842ea76a5b599e7d3400e074726e111a
2020/07/31 16:30:35 [INFO] ▶ Analyzing d1e4071b656ebb5b27a71948112996506d04bb2e092430abe66015882c9c4074
2020/07/31 16:30:35 [INFO] ▶ Analyzing faa51eaf236e8aece6993c7e679e7dbb715b06317c96cd14f30bf79f113f1c7d
2020/07/31 16:30:35 [INFO] ▶ Analyzing fcc01ee1cd5ec222bd28ac223753bd053063c71c44a925feef64c5a9bac78e21
2020/07/31 16:30:35 [WARN] ▶ Image [docker.elastic.co/logstash/logstash:7.8.1] contains 3 total vulnerabilities
2020/07/31 16:30:35 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash:7.8.1] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress docker.elastic.co/logstash/logstash:7.8.1
2020-07-31T13:31:02.063Z        INFO    Need to update DB
2020-07-31T13:31:02.063Z        INFO    Downloading DB...
2020-07-31T13:31:20.988Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-07-31T13:31:21.002Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.8.1 (centos 7.8.2003)
===========================================================
Total: 689 (UNKNOWN: 0, LOW: 387, MEDIUM: 291, HIGH: 11, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 0, CRITICAL: 0)
```
