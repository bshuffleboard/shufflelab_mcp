FROM python:3.12-slim

WORKDIR /app

# fastmcp brings in the MCP SDK + an ASGI/HTTP server (uvicorn/starlette)
RUN pip install --no-cache-dir "fastmcp>=3.4,<4"

COPY server.py /app/server.py

EXPOSE 8000

CMD ["python", "server.py"]
