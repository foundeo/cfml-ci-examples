FROM foundeo/minibox:latest

COPY ./ /app/

EXPOSE 8855

CMD box server start port=8855 --console directory=/app/ host=0.0.0.0

