FROM astral/uv:python3.12-bookworm-slim

# Install project dependencies
COPY pyproject.toml .
COPY requirements.txt .
RUN uv add -r requirements.txt

COPY src ./src
COPY train.py .
COPY app ./app

CMD ["bash", "-c", "./app/run.sh"]
