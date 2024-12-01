# Builder Stage
FROM alpine AS builder
COPY data.txt /tmp/

# Final Stage
FROM fedora
COPY --from=builder /tmp/data.txt /
