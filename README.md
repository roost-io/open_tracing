# Python program using Jaeger Open Tracing

## How to run this application

###### Using Roost Desktop Engine (RDE)

> Right-click on `Makefile` and click `Run` for hassle-free deployment to roost cluster

### What all is done by `make all`?

- Buuild the Dockerfile
- Deploy the yaml
- Print the URL to access Jaeger UI

<!-- ###### _Using RKT Konsole_ -->

```bash
1) docker build -t open_tracing:latest .

2) kubectl apply -f open_tracing.yaml
```

To delete the application, run `make delete`. It will delete the deployment and remove the docker image.

#

### Python script is run for 6 input values:

1. A Beautiful Day in the Neighborhood
2. Dolittle
3. 1917
4. As Good As it Gets
5. Life is Beautiful
6. The Bridge on the River Kwai

###### Sample output:

```bash
$ python booking-mgr.py 'input_value'

Initializing Jaeger Tracer with UDP reporter
Using selector: KqueueSelector
Using sampler ConstSampler(True)
opentracing.tracer initialized to <jaeger_client.tracer.Tracer object at 0x10b01a050>[app_name=booking]
Reporting span b728a942aaf2ae76:c5125d1ec0e1b86f:21bf675e0d8009a2:1 booking.CheckCinema
Reporting span b728a942aaf2ae76:7a5a6a75baa1b3f6:21bf675e0d8009a2:1 booking.CheckShowtime
Ticket Details
Reporting span b728a942aaf2ae76:45bf0d82d30f1073:21bf675e0d8009a2:1 booking.BookShow
Reporting span b728a942aaf2ae76:21bf675e0d8009a2:0:1 booking.booking
Using selector: KqueueSelector
```

#

```
Raise any issue or feature request using RDE Help
Join the Awesome Roost Community https://join.slack.com/t/roostai/shared_invite/zt-ea5mo10y-jDJgXiHn0RihSmucz0UZpw
```
