# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.5.2-alpine-3.11.3
2020/01/27 15:57:38 [INFO] ▶ Start clair-scanner
2020/01/27 15:57:43 [INFO] ▶ Server listening on port 9279
2020/01/27 15:57:43 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/27 15:57:43 [INFO] ▶ Analyzing 51b504d8ba651282ce3af8ae48a6ed3daaa1a78499c9c4413efbfa8b24347345
2020/01/27 15:57:44 [INFO] ▶ Analyzing 0be443fd3d943b87e9c591f895fa37077002b28b3bef15f0b4157e3ea81a2ac3
2020/01/27 15:57:44 [INFO] ▶ Analyzing e39416aff85c765c07fa5accb78b78a85b63178a50a6b48c336e4f8bcb918f62
2020/01/27 15:57:44 [INFO] ▶ Image [secureimages/logstash:7.5.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/logstash:7.5.2-alpine-3.11.3
2020-01-27T13:57:46.390Z        INFO    Need to update DB
2020-01-27T13:57:46.392Z        INFO    Downloading DB...
2020-01-27T13:57:50.052Z        INFO    Reopening DB...
2020-01-27T13:57:55.739Z        INFO    Detecting Alpine vulnerabilities...
2020-01-27T13:57:55.741Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.5.2-alpine-3.11.3 (alpine 3.11.3)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```

## Official Docker image

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.5.2
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.5.2
2020/01/27 15:58:02 [INFO] ▶ Start clair-scanner
2020/01/27 15:58:14 [INFO] ▶ Server listening on port 9279
2020/01/27 15:58:14 [INFO] ▶ Analyzing efabb8e7a64ff0670af40775b5aa02a8e19f73baa9f9e24aef8ce37a563f632d
2020/01/27 15:58:14 [INFO] ▶ Analyzing 0e0503531f338a9a63688cd3379f32a38a06713aa78e6d633fcf7cfffab45c72
2020/01/27 15:58:15 [INFO] ▶ Analyzing fc88fc37cc033acbe6f2c11dd44d77916c3dea37e80939d3a7f8482481b39b12
2020/01/27 15:58:15 [INFO] ▶ Analyzing 61ae261b950bebc1bc546ff757fe72c3125dec3f42441445cb2718ab93b8fa29
2020/01/27 15:58:16 [INFO] ▶ Analyzing b57ef5a82a42755fff7623c3a7dc50a16bd6ee7608cd3412fb992a938d19886a
2020/01/27 15:58:16 [INFO] ▶ Analyzing 099790f3d2630ea0b2c555f7b6f07fc84c7259c99fbb1177733a7a9dc82316b3
2020/01/27 15:58:16 [INFO] ▶ Analyzing 2e3ca157ca62eb03a07b6d341e099e77da563ba4a7a2528feacdff273059a716
2020/01/27 15:58:16 [INFO] ▶ Analyzing 3d8b139abceea4afec1510c0f0d93ed6fc068d181b64a7555aa9f4fa9dd6e6f9
2020/01/27 15:58:16 [INFO] ▶ Analyzing 27903a6f4cec9c9719f2ed256ddf4b1cd3ba83923e4db58993eefb1ab69d8def
2020/01/27 15:58:16 [INFO] ▶ Analyzing d5105c3a4955f30afd3f766874a6597d2204c1e42fa3a9b903df476a30c72e17
2020/01/27 15:58:16 [INFO] ▶ Analyzing 04ee5eca965c7b7deeb521b98eaa7e31999ae59e3be1bd68752924c1b58eb329
2020/01/27 15:58:16 [INFO] ▶ Analyzing dddbb69ca2fdb9f630e8861456b234de99badacb9e5b894483ec5ce40c82e6a3
2020/01/27 15:58:16 [WARN] ▶ Image [docker.elastic.co/logstash/logstash:7.5.2] contains 3 total vulnerabilities
2020/01/27 15:58:16 [ERRO] ▶ Image [docker.elastic.co/logstash/logstash:7.5.2] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress docker.elastic.co/logstash/logstash:7.5.2
2020-01-27T13:58:18.505Z        INFO    Need to update DB
2020-01-27T13:58:18.505Z        INFO    Downloading DB...
2020-01-27T13:58:22.900Z        INFO    Reopening DB...
2020-01-27T13:58:36.083Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-01-27T13:58:36.090Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.5.2 (centos 7.7.1908)
===========================================================
Total: 698 (UNKNOWN: 0, LOW: 64, MEDIUM: 506, HIGH: 120, CRITICAL: 8)

usr/share/logstash/Gemfile.lock
===============================
Total: 23 (UNKNOWN: 3, LOW: 0, MEDIUM: 15, HIGH: 4, CRITICAL: 1)
```
