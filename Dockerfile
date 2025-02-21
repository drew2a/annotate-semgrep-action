FROM python:3.9-slim

WORKDIR /app

RUN adduser --disabled-password --gecos "" myuser

USER myuser

COPY parse_semgrep.py /app/parse_semgrep.py

ENTRYPOINT ["python", "/app/parse_semgrep.py"]
