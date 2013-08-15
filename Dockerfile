FROM base 

ADD stack /build
ADD .cache /app
RUN /build/prepare
RUN /build/builder
EXPOSE 80
CMD /start
