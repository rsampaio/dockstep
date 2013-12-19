FROM registry.rsampaio.info:80/app 

ADD .cache /app
RUN /build/builder
EXPOSE 80
CMD /start
