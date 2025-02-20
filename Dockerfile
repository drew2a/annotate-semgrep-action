FROM python:3.9-slim

RUN useradd --create-home appuser

WORKDIR /app
COPY parse_semgrep.py /app/parse_semgrep.py

USER appuser

ENTRYPOINT ["python", "/app/parse_semgrep.py"]
