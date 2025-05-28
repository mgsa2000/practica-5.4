FROM ubuntu:24.04

LABEL AUTHOR="miguel"
LABEL DESCRIPTION="2048"

RUN apt update && \
    apt install nginx -y && \
    apt install git -y && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/josejuansanchez/2048.git /app && \
    mv /app/* /var/www/html
    
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]