# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~384MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.7.0-alpine-3.11.6
2020/05/14 12:44:43 [INFO] ▶ Start clair-scanner
2020/05/14 12:44:48 [INFO] ▶ Server listening on port 9279
2020/05/14 12:44:48 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/14 12:44:48 [INFO] ▶ Analyzing 1bab32bc5bfbfb7300bfbe6de499f76bc771cc2d0322a3649f1203574ccedd25
2020/05/14 12:44:48 [INFO] ▶ Analyzing 50a1eab54ead36ad738766a2483a78e50c7621f88039b33cf33ebac476fa9d82
2020/05/14 12:44:48 [INFO] ▶ Analyzing 719d410ac67dc8e4557d6604bba1c875851b93cdf6da5d16ce3dfb99b9e946f7
2020/05/14 12:44:48 [INFO] ▶ Image [secureimages/logstash:7.7.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/logstash:7.7.0-alpine-3.11.6
2020-05-14T09:44:51.449Z        INFO    Need to update DB
2020-05-14T09:44:51.449Z        INFO    Downloading DB...
2020-05-14T09:45:00.429Z        INFO    Detecting Alpine vulnerabilities...
2020-05-14T09:45:00.430Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.7.0-alpine-3.11.6 (alpine 3.11.6)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 18, HIGH: 3, CRITICAL: 2)
```

## Official Docker image (~740MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.7.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.7.0
2020/05/14 12:45:09 [INFO] ▶ Start clair-scanner
2020/05/14 12:45:20 [INFO] ▶ Server listening on port 9279
2020/05/14 12:45:20 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/05/14 12:45:20 [INFO] ▶ Analyzing 97db17c16f0a204ae83fcde309b808cb0f1585e7166120ab4a66bce9ea8edc25
2020/05/14 12:45:22 [INFO] ▶ Analyzing 128dd2a52296fe620aee1de6eaac270a4cf15965a615d9da21bcd35a5313ab0e
2020/05/14 12:45:22 [INFO] ▶ Analyzing 794d72636ea38aacc242c6cecddecfe7a5875ce6bc72c65fc3d4b8fc990c7c97
2020/05/14 12:45:22 [INFO] ▶ Analyzing 9ab63615c1658d61cf51e863bc0cf812c923b1d3afd0a0234105f4f54a1a0f1d
2020/05/14 12:45:22 [INFO] ▶ Analyzing af333cc5046afa43b685aaf3ade10140df0c2cca8a0f180e348e334ab695c5fb
2020/05/14 12:45:22 [INFO] ▶ Analyzing 20e4b11b9524a5fb141b7764d8935012523b431350e551961ed4e727b783f8cf
2020/05/14 12:45:22 [INFO] ▶ Analyzing ba823656dbf41de50c11058bc5bcb0dd320ba4640ec56836552f4d19284c2c7d
2020/05/14 12:45:22 [INFO] ▶ Analyzing 7e3544a7e7d0bc9469665d8ec04e6a62f1acf4bd03ef21c145c92476665554b2
2020/05/14 12:45:22 [INFO] ▶ Analyzing 65d0fa404c9806abdd9fb545280e31b7560bd647596278b568289b997e99337d
2020/05/14 12:45:22 [INFO] ▶ Analyzing 2f71d46b2db807dac0f7cfec52e53aac254f856fda819d5ea44f0ac7b4921a6d
2020/05/14 12:45:22 [INFO] ▶ Analyzing 328d18d0a3cf67cd1b4374ddb75c5df72e4a72e975f37ddbb83d2581927e4016
2020/05/14 12:45:22 [INFO] ▶ Image [docker.elastic.co/logstash/logstash:7.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress docker.elastic.co/logstash/logstash:7.7.0
2020-05-14T09:45:25.063Z        INFO    Need to update DB
2020-05-14T09:45:25.063Z        INFO    Downloading DB...
2020-05-14T09:45:41.378Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-05-14T09:45:41.387Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.7.0 (centos 7.8.2003)
===========================================================
Total: 649 (UNKNOWN: 0, LOW: 384, MEDIUM: 260, HIGH: 5, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 26 (UNKNOWN: 3, LOW: 0, MEDIUM: 18, HIGH: 3, CRITICAL: 2)
```
