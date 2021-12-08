#!/bin/bash

gcloud iam service-accounts create openshift-installer \
    --description="Service accout for OCP4 IPI installer" \
    --display-name="openshift-installer"

gcloud projects add-iam-policy-binding ocp4-ipi-on-gcloud \
    --member="serviceAccount:openshift-installer@ocp4-ipi-on-gcloud.iam.gserviceaccount.com" \
    --role="roles/owner"
