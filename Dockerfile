FROM alpine:3.20

RUN apk add --no-cache python3 py3-pip

WORKDIR /app

COPY ./requirements.txt .

RUN pip install --break-system-packages -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080"]
