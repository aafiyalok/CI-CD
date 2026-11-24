FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install --break-system-packages -r requirements.txt
CMD [&quot;python3&quot;, &quot;app.py&quot;]