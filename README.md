# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.6.0-alpine-3.11.3
2020/02/11 20:55:34 [INFO] ▶ Start clair-scanner
2020/02/11 20:55:39 [INFO] ▶ Server listening on port 9279
2020/02/11 20:55:39 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 20:55:39 [INFO] ▶ Analyzing 60f658ed66f3a947fc1440fb99452ee12945ba40950b17369c220d4f4e0c0932
2020/02/11 20:55:40 [INFO] ▶ Analyzing 717c4921ddef803bd0198fe6e10cecbca0661f0513a2e7ab579d52ffaba6dbb9
2020/02/11 20:55:40 [INFO] ▶ Analyzing 2b71604cd0ed289c988125fda7fb866d7643145aeba3897f01c87a5f5ef07442
2020/02/11 20:55:40 [INFO] ▶ Image [secureimages/logstash:7.6.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/logstash:7.6.0-alpine-3.11.3
2020-02-11T18:55:46.243Z        INFO    Need to update DB
2020-02-11T18:55:46.243Z        INFO    Downloading DB...
2020-02-11T18:55:49.762Z        INFO    Reopening DB...
2020-02-11T18:55:58.173Z        INFO    Detecting Alpine vulnerabilities...
2020-02-11T18:55:58.174Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.6.0-alpine-3.11.3 (alpine 3.11.3)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.6.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.6.0
2020/02/11 20:56:04 [INFO] ▶ Start clair-scanner
2020/02/11 20:56:22 [INFO] ▶ Server listening on port 9279
2020/02/11 20:56:22 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/02/11 20:56:22 [INFO] ▶ Analyzing bbe4b3dd37707e8c78ecbdd3af4ad653a2efa05df128a18d59da2d7d17389005
2020/02/11 20:56:23 [INFO] ▶ Analyzing 3f55798afac73987a21d5bccea6c9a7896085a6bf82fafd66c5ae43890a78a69
2020/02/11 20:56:23 [INFO] ▶ Analyzing 5210d9ac6b27cbe2c5ba032a5fff7c18c19d4bc64c25d8b2c87a007754c99a3d
2020/02/11 20:56:23 [INFO] ▶ Analyzing ea79e9f549d5fb656f7b21ccb102433db277f030fbff761928fdc10f21b85017
2020/02/11 20:56:23 [INFO] ▶ Analyzing d4730798d70efd151ec379882620c441f3ec26876729b5cb3496c7741411be02
2020/02/11 20:56:23 [INFO] ▶ Analyzing f07ff5ddb5b8dda587dc6dde550cbd0c715841f6a58f26766568f912c53a8c55
2020/02/11 20:56:23 [INFO] ▶ Analyzing baf0001948053ecd36187148c5016af562db0ee234a0bc1ace0d0c048485387c
2020/02/11 20:56:23 [INFO] ▶ Analyzing a83bf75a2e7841f7e676edc519a2bfe5053a7c0b171df394edcdfdb7173a5f44
2020/02/11 20:56:23 [INFO] ▶ Analyzing bbda75f08ab4c0201da6091f6469dcec4e99aa209bba5066d38b81d47cc83d52
2020/02/11 20:56:23 [INFO] ▶ Analyzing 694ab228be925ea4b474c45b0066b32bd272f74398e7d32923f891298853a838
2020/02/11 20:56:23 [INFO] ▶ Analyzing fbf2cf7144f3761a5e531b3c054c096196eee9577a783b9e084e75ea0051ed02
2020/02/11 20:56:23 [INFO] ▶ Image [docker.elastic.co/logstash/logstash:7.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/logstash/logstash:7.6.0
2020-02-11T18:56:26.312Z        INFO    Need to update DB
2020-02-11T18:56:26.312Z        INFO    Downloading DB...
2020-02-11T18:56:29.846Z        INFO    Reopening DB...
2020-02-11T18:56:47.057Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-02-11T18:56:47.088Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.6.0 (centos 7.7.1908)
===========================================================
Total: 664 (UNKNOWN: 0, LOW: 62, MEDIUM: 476, HIGH: 120, CRITICAL: 6)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```
