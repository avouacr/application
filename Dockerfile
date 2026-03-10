FROM astral/uv:python3.12-bookworm-slim

# Install project dependencies
COPY pyproject.toml .
RUN uv sync

COPY main.py .
COPY src ./src
CMD ["uv", "run", "main.py"]
