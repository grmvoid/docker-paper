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

- `1.21.3-82`, `1.21.3`, `1.21`

## How to use this image

```yaml
services:
    paper:
        image: grmvoid/paper:1.21.3-82
        restart: always
        ports:
            - "25565:25565/udp"
            - "25565:25565/tcp"
```

## License

View [license](https://github.com/PaperMC/Paper/blob/main/LICENSE.md) information for the software contained in this image.