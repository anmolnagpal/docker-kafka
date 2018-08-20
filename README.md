<p align="center"><img src="https://user-images.githubusercontent.com/4303310/44351062-f87e6600-a4b1-11e8-9dbf-cdd5d5e7783c.png" /></p>

> Alpine Linux based [Kafka](http://kafka.apache.org/downloads.html) Docker Image
<p align="center">
    <a href="LICENSE.md">
      <img src="https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square" alt="Software License">
    </a>
    <a href="https://www.paypal.me/anmolnagpal">
      <img src="https://img.shields.io/badge/paypal-donate-179BD7.svg?style=flat-squares" alt="Donate">
    </a>
  </p>
</p>

## Getting Started

> **NOTE:** I am assuming use of Docker for Mac with these examples. (`KAFKA_ADVERTISED_HOST_NAME=localhost`)

```
docker run -d \
           --name kafka \
           -p 9092:9092 \
           -e KAFKA_ADVERTISED_HOST_NAME=localhost \
           -e KAFKA_CREATE_TOPICS="test-topic:1:1" \
           anmolnagpal/kafka:2.0.0
```

## Documentation
- https://kafka.apache.org/documentation/

## 👬 Contribution
- Open pull request with improvements
- Discuss ideas in issues

- Reach out with any feedback [![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/anmol_nagpal.svg?style=social&label=Follow%20%40anmol_nagpal)](https://twitter.com/anmol_nagpal)
