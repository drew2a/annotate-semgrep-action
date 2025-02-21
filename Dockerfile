FROM python:3.9-slim

WORKDIR /app
COPY parse_semgrep.py /app/parse_semgrep.py

# Create a non-root user and change ownership of /app
RUN adduser --disabled-password --gecos "" myuser && chown -R myuser:myuser /app
# Switch to non-root user
USER myuser

ENTRYPOINT ["python", "/app/parse_semgrep.py"]
