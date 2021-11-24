FROM python:3.8-alpine
WORKDIR /app
RUN pip install jaeger_client opentracing_instrumentation
COPY booking-mgr.py ./
CMD ["/bin/sh", "-c", " \
    python /app/booking-mgr.py 'A Beautiful Day in the Neighborhood'; \
    python /app/booking-mgr.py 'Dolittle'; \
    python /app/booking-mgr.py '1917'; \
    python /app/booking-mgr.py 'As Good As it Gets'; \
    python /app/booking-mgr.py 'Life is Beautiful'; \
    python /app/booking-mgr.py 'The Bridge on the River Kwai'; \
  "]
