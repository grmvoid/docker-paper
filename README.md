## Quick reference
- **Image based on**:   
  [alpine](https://hub.docker.com/_/alpine)

- **Supported architectures**:    
  `linux/amd64`, `linux/arm64`

- **Maintained by**:  
  [grmvoid](https://github.com/grmvoid)

- **Where to file issues**:    
  [https://github.com/grmvoid/docker-paper/issues](https://github.com/grmvoid/docker-paper/issues?q=)

## Supported tags and respective `Dockerfile` links

- [`1.21.4-12`, `1.21.4`, `1.21`](https://github.com/grmvoid/docker-paper/blob/10b8d8d7edb0a2894c56c88065cb2c200f9bc7f2/1.21/Dockerfile)

## How to use this image

```yaml
services:
    paper:
        image: grmvoid/paper:1.21.3-83
        restart: always
        ports:
            - "25565:25565/udp"
            - "25565:25565/tcp"
```

## License

View [license](https://github.com/PaperMC/Paper/blob/main/LICENSE.md) information for the software contained in this image.