FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    slurm-wlm \
    munge \
    openssh-server \
    vim \
    iputils-ping \
    net-tools

# Create munge directory
RUN mkdir -p /var/run/munge
RUN chown -R munge:munge /var/run/munge

# Copy default slurm config
RUN mkdir -p /etc/slurm

RUN mkdir -p /var/spool/slurmctld \
    && mkdir -p /var/spool/slurmd \
    && chown -R slurm:slurm /var/spool

CMD service munge start && \
    slurmctld -D
