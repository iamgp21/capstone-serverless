#!/bin/bash

# Create a GCS bucket to store the terraform state file
gcloud storage buckets create gs://serverless-cf --location=asia-south2