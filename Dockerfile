FROM node:16-alpine
#어떤 이미지를 사용할 건지

WORKDIR /app
#다운 받았을 때 어디에 위치할건지

COPY  package.json package-lock.json ./
#이거는 파일들 복사 해 오는건데, 자주 변경되는 파일일 수록 마지막에 적어주는 것이 좋음

RUN npm ci
# RUN npm install 명령어는 latest버전을 사용하지만
# ci는 ci/cd의 ci로써 package-lock.json의 내용에 맞는 정확한 버전을 설치할 수 있기 때문

COPY index.js .
# 변경이 많은 파일은 이와 같이 나중에 COPY 해 주는 것

ENTRYPOINT [ "node","index.js" ]

