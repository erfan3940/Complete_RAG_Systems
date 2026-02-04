FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY dockerrequirements.txt .
RUN pip install --no-cache-dir -r dockerrequirements.txt

# Copy app code
COPY app/ .

# Copy credentials
COPY credentials/langchain-gemini-local-1111-90a28dca7303.json /credentials/langchain-gemini-local-1111-90a28dca7303.json

# Environment variables
ENV GOOGLE_APPLICATION_CREDENTIALS=/credentials/langchain-gemini-local-1111-90a28dca7303.json
ENV GOOGLE_CLOUD_PROJECT=langchain-gemini-local-1111

CMD ["python", "main.py"]
