# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~385MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.7.1-alpine-3.12.0
2020/06/11 12:44:14 [INFO] ▶ Start clair-scanner
2020/06/11 12:44:18 [INFO] ▶ Server listening on port 9279
2020/06/11 12:44:18 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:44:18 [INFO] ▶ Analyzing 4ea1c2801b8a57529736edf302cbe15fbd0f52eb9c44806e38d0038338ddd70b
2020/06/11 12:44:19 [INFO] ▶ Analyzing ae53122fbedf3e73b1037fc2949c3724995ea96daf9e472331afa6abd0c866ab
2020/06/11 12:44:19 [INFO] ▶ Analyzing 2b87c2da94564972030f5faa88a457a528e2f755056f6821c90758ac787ede49
2020/06/11 12:44:19 [INFO] ▶ Image [secureimages/logstash:7.7.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/logstash:7.7.1-alpine-3.12.0
2020-06-11T09:44:23.167Z        INFO    Need to update DB
2020-06-11T09:44:23.167Z        INFO    Downloading DB...
2020-06-11T09:44:33.533Z        INFO    Detecting Alpine vulnerabilities...
2020-06-11T09:44:33.534Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.7.1-alpine-3.12.0 (alpine 3.12.0)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 29 (UNKNOWN: 3, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```

## Official Docker image (~788MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.7.1
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.7.1
2020/06/11 12:44:38 [INFO] ▶ Start clair-scanner
2020/06/11 12:44:51 [INFO] ▶ Server listening on port 9279
2020/06/11 12:44:51 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/11 12:44:51 [INFO] ▶ Analyzing 733a05fb17c67caab1c60c4a58c3db8bd1ee27399ad0ad02ad5df31848b2851e
2020/06/11 12:44:51 [INFO] ▶ Analyzing 07f4213e595cb56a41ab5ebe2943c4b3ae94fd602351c072f111ad54dc1a8931
2020/06/11 12:44:51 [INFO] ▶ Analyzing 22f29c0b3761066117fa1203921c9cb9568be4f62d22690bcf85f777591f9e6a
2020/06/11 12:44:51 [INFO] ▶ Analyzing f160e754d94e2ff265b4583caa1c5f5f3eb4e86f4cb8cc4f8e2d1a87a2b6b766
2020/06/11 12:44:51 [INFO] ▶ Analyzing 17629d4affc4c7a1255d0db4a473468ed6417e56b0c941e584828622b6d6f47e
2020/06/11 12:44:51 [INFO] ▶ Analyzing 6c3674e5223445862d5de23d553fb8c816444dfa74dfef26423badbc8d5c3d00
2020/06/11 12:44:51 [INFO] ▶ Analyzing 0f935651951923cc081e3f58974e009defd87ec7b2ff24ba848d102108db71e2
2020/06/11 12:44:51 [INFO] ▶ Analyzing f553354834e93ebfeafd74d9840896b8ce4fab9bae58630e21a8bfec6f3b0410
2020/06/11 12:44:51 [INFO] ▶ Analyzing 045ad240232a2dcd54b65ee5bd91696fec842c3a525cb530e2daa35e9549e548
2020/06/11 12:44:51 [INFO] ▶ Analyzing c30bd7b63c62dc5b9bc3fdd43b928829146e69286a34bd397dfc86d304e941b9
2020/06/11 12:44:51 [INFO] ▶ Analyzing b960734603dd0ff048047c76584ee4e08c6b1f393aeceda04c3fa8b8c13f2ce1
2020/06/11 12:44:51 [WARN] ▶ Image [docker.elastic.co/logstash/logstash:7.7.1] contains 1 total vulnerabilities
2020/06/11 12:44:51 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash:7.7.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/logstash/logstash:7.7.1
2020-06-11T09:44:53.822Z        INFO    Need to update DB
2020-06-11T09:44:53.822Z        INFO    Downloading DB...
2020-06-11T09:45:13.162Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-06-11T09:45:13.175Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.7.1 (centos 7.8.2003)
===========================================================
Total: 659 (UNKNOWN: 0, LOW: 385, MEDIUM: 267, HIGH: 7, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 29 (UNKNOWN: 3, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```
