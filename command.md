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

## Ollama

### 채팅 실행

```bash
# exaone 모델 실행
ollama run exaone3.5
```

### 설치위치

```bash
# 바이너리 위치
/usr/local/bin/ollama

# 모델 데이터 저장 위치
/usr/share/ollama/.ollama/models

# 서비스 설정 파일 위치 (설정파일에서 호스트 주소 변경 가능)
/etc/systemd/system/ollama.service
```

### 서비스 편집모드

- 호스트 OS에 Ollama를 설치할 경우 기본 주소가 127.0.0.1:11434로 설정 됨
- 기본주소로 설정돼 있을 경우 컨테이너 안에서 Ollama로 요청하지 못 함
- 호스트 주소를 0.0.0.0으로 변경해야 컨테이너 안에서 Ollama로 요청 가능

```bash
sudo systemctl edit ollama.service

# 기본 호스트 주소 127.0.0.1. 에서 0.0.0.0으로 변경하고 싶을 경우 아래 추가
#
# [Service]
# Environment="OLLAMA_HOST=0.0.0.0"
```
