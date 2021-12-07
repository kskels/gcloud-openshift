#!/bin/bash

GCP_API_SERVICES="compute.googleapis.com
  cloudapis.googleapis.com
  cloudresourcemanager.googleapis.com
  dns.googleapis.com
  iamcredentials.googleapis.com
  iam.googleapis.com
  servicemanagement.googleapis.com
  serviceusage.googleapis.com
  storage-api.googleapis.com
  storage-component.googleapis.com
  networksecurity.googleapis.com"

for service in $GCP_API_SERVICES
do
  echo "Enabling API service: $service"
  gcloud services enable $service
done
