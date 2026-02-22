# 리눅스 명령어 모음

## Doker 자동실행

- Debian/Ubuntu에서는 부팅시 자동으로 실행됨.
- 다른 리눅스에는 서비스에 등록필요.

```bash
    sudo system enable docker.service
    sudo system enable containerd.service
```

- 서비스 등록 해제

```bash
    sudo system disable docker.service
    sudo system disable containerd.servic
```

## RSA Private Key 만들기

### 1. RSA key fair 만들기

```bash
ssh-keygen -m PEM -t rsa -b 4096 -C "JeongMin" -f jwtRS256.key
```

### 2. Private key에서 공개키 추출하기 (PEM 형식)

```bash
openssl rsa -in jwtRS256.key -pubout -outform PEM > jwtRS256.pub
```

또는

```bash
ssh-keygen -f id_rsa -e -m PEM > jwtRS256.pub
```

## NVM 노드 최신 LTS 버전 설치

```bash
nvm install --lts
nvm alias default 'lts/*'
```