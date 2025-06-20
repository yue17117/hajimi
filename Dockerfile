FROM ghcr.io/jairo-t/hajimi:0.3.5

WORKDIR /app

COPY . .

RUN pip install uv
RUN uv pip install --system --no-cache-dir -r requirements.txt

EXPOSE 7860

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "7860"]
