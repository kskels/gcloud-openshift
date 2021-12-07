#!/bin/bash

ZONE_NAME=gcloud-ipi
DNS_NAME="${ZONE_NAME}.kskels.com"

gcloud dns managed-zones create $ZONE_NAME \
    --dns-name=$DNS_NAME \
    --description="Public zone for OCP4 IPI deployment" \
    --visibility=public
