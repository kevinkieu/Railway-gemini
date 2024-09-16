FROM python:3.9.18-slim-bullseye
WORKDIR /app
COPY ./ /app/
RUN pip install --no-cache-dir -r requirements.txt
ENV TELEGRAM_BOT_API_KEY="7524753134:AAHDRrcoh6m7ltpbSJYbvVGgOyRnCaAvvmc"
ENV GEMINI_API_KEYS="AIzaSyD-TjO6aRWW5NsRz9EuHRvu70RVs8hHLzg"
CMD ["sh", "-c", "python main.py ${TELEGRAM_BOT_API_KEY} ${GEMINI_API_KEYS}"]
