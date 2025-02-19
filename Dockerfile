FROM python:3.9-slim

WORKDIR /app

COPY parse_semgrep.py /app/parse_semgrep.py

ENTRYPOINT ["python", "/app/parse_semgrep.py"]
