# 1. Nginx 기반 이미지 사용
FROM nginx:latest

# 2. 작업 디렉터리 설정
WORKDIR /usr/share/nginx/html

# 3. 로컬 폴더의 모든 파일을 컨테이너의 Nginx 웹 디렉토리로 복사
COPY . .

# 4. 포트 노출 (80번 기본 Nginx 포트)
EXPOSE 80

# 5. Nginx 시작
CMD ["nginx", "-g", "daemon off;"]

