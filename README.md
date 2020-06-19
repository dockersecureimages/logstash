# Logstash

Logstash, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~385MB)

Security scanning using Clair
```
clair-scanner secureimages/logstash:7.8.0-alpine-3.12.0
2020/06/19 18:41:10 [INFO] ▶ Start clair-scanner
2020/06/19 18:41:14 [INFO] ▶ Server listening on port 9279
2020/06/19 18:41:14 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 18:41:14 [INFO] ▶ Analyzing 95fb913ea59025a957c18bf38780c8261c9dde5e6f4c02f9b1b5e0cddcaa3b9e
2020/06/19 18:41:15 [INFO] ▶ Analyzing 9dedddca9362ba80ffa2bb961961437df8c602830006ed770bffb7701058310f
2020/06/19 18:41:15 [INFO] ▶ Analyzing e3eb673f914bda4b22684b834e1ea388849a75716bad804d762e67de0a2205b2
2020/06/19 18:41:15 [INFO] ▶ Image [secureimages/logstash:7.8.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/logstash:7.8.0-alpine-3.12.0
2020-06-19T15:41:22.048Z        INFO    Need to update DB
2020-06-19T15:41:22.048Z        INFO    Downloading DB...
2020-06-19T15:41:32.036Z        INFO    Detecting Alpine vulnerabilities...
2020-06-19T15:41:32.037Z        INFO    Detecting bundler vulnerabilities...

secureimages/logstash:7.8.0-alpine-3.12.0 (alpine 3.12.0)
=========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 30 (UNKNOWN: 4, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```

## Official Docker image (~789MB)

[https://www.docker.elastic.co/](https://www.docker.elastic.co/)
```
docker pull docker.elastic.co/logstash/logstash:7.8.0
```

Security scanning using Clair
```
clair-scanner docker.elastic.co/logstash/logstash:7.8.0
2020/06/19 18:41:36 [INFO] ▶ Start clair-scanner
2020/06/19 18:41:50 [INFO] ▶ Server listening on port 9279
2020/06/19 18:41:50 [INFO] ▶ Analyzing c53e4ebe5d0a558645655ec8b3e667ed7cae98e3252a08914c1ab5a08cef4da0
2020/06/19 18:41:50 [INFO] ▶ Analyzing 7dad39977b9c55310ef64ecef76f1671359522e65d201bf4b05a442fc20c8fb5
2020/06/19 18:41:50 [INFO] ▶ Analyzing d24b9c03dadaac5337d4e86c22c9c211fb8dc12d1f224342dfbcb62e217aeba0
2020/06/19 18:41:50 [INFO] ▶ Analyzing d5bc3dbec84d9e408c7218f5683ebcb342f351972c35ae85adc135b8fb5ee5ee
2020/06/19 18:41:50 [INFO] ▶ Analyzing 0675c7a1261644f223d13d1885a21fca04534f2b6f0cf2bb432c0376dc5846c5
2020/06/19 18:41:50 [INFO] ▶ Analyzing acd906b5a7b4815390454c0030d16c0b3a34c86aaea6690e6ca76a7272af6638
2020/06/19 18:41:50 [INFO] ▶ Analyzing 8304f12ea83e0bcfe65f60f9fdcab93f54baa149e781d009fa8614db5d765192
2020/06/19 18:41:50 [INFO] ▶ Analyzing 7db30ac1b48090760933ff2b7e4d5c19c5fb371e139b204904196a8c37827830
2020/06/19 18:41:50 [INFO] ▶ Analyzing 3c9f8df43620ff4be6aff1fba0029acaef5312b1355e418221514bcb4a3339d3
2020/06/19 18:41:50 [INFO] ▶ Analyzing ee63c087a53766cabcc09921268749bd35169e25169d48fc679fa43632d8e43d
2020/06/19 18:41:50 [INFO] ▶ Analyzing afad3117a5671912a71e75c8b95174774e1dcc9cb5a7aeae51907077ea3ac999
2020/06/19 18:41:50 [INFO] ▶ Analyzing 86b285c943974e041b526293123b4173a0b6b64ce50a071c3b3d7e3b8b1786ad
2020/06/19 18:41:50 [INFO] ▶ Image [docker.elastic.co/logstash/logstash:7.8.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress docker.elastic.co/logstash/logstash:7.8.0
2020-06-19T15:41:52.510Z        INFO    Need to update DB
2020-06-19T15:41:52.510Z        INFO    Downloading DB...
2020-06-19T15:42:12.029Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2020-06-19T15:42:12.041Z        INFO    Detecting bundler vulnerabilities...

docker.elastic.co/logstash/logstash:7.8.0 (centos 7.8.2003)
===========================================================
Total: 664 (UNKNOWN: 0, LOW: 383, MEDIUM: 276, HIGH: 5, CRITICAL: 0)

usr/share/logstash/Gemfile.lock
===============================
Total: 30 (UNKNOWN: 4, LOW: 0, MEDIUM: 20, HIGH: 4, CRITICAL: 2)
```
