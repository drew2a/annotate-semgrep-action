FROM python:3.9-slim

# Create a non-root user
RUN adduser --disabled-password --gecos "" myuser

WORKDIR /app
COPY parse_semgrep.py /app/parse_semgrep.py

# Switch to non-root user
USER myuser

ENTRYPOINT ["python", "/app/parse_semgrep.py"]
