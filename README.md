# Capstone-Serverless
This repo Demonstrates Deploying Event Driven Cloud Function on GCP Serverless Platform.

### Pre-Requisites:

- Below GCP API's Enabled:
   - Cloud Scheduler API
   - Cloud Pub/Sub API
   - Serverless VPC Access API
   - Cloud Functions API
   - Cloud Build API
   - Cloud Logging API
   - Secret Manager API
   - Security Token Service API


- Service Account for Deploying Infra.

![GCP INFRA SERVICE ACCOUNT](./img/github_actions_infra_sa.JPG)


- Cloud Function Runtime Service Account needed to communicate with GCP Resources.

![Cloud Function Runtime Service Account](./img/GCP_CloudFunction_Runtime_SA.JPG)


### Security Best Practice:

- Workload Indentity Federation is used for GCP Authentication with Github Actions.

- Google Secret Manager Service used to store any secrets/passwords used by Cloud Function.


### Serverless HLD:

![GCP Serverless](./img/GCP_CloudFunction_1stGen.JPG)

<!-- ### Serverless Flow Validation:

- Cloud Scheduler Job Run:

![Cloud Scheduler Job](./img/cloud_scheduler_job.JPG) -->


<!-- - Cloud Function:

![Cloud Function](./img/cloud_function.JPG) -->

<!-- - Cloud Function Logs:

![Cloud Function Logs](./img/cloud_function_logs.JPG) -->

