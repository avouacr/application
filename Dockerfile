FROM astral/uv:python3.12-bookworm-slim

# Install project dependencies
COPY requirements.txt .
RUN uv add -r requirements.txt

COPY src ./src
COPY main.py .

CMD ["python3", "main.py"]
