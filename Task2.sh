#!/bin/bash
echo -n "Enter the Project ID"
read P_ID
echo -n "Enter the zone" 
read ZONE
echo -n "Enter the instance name"
read Ins_Name
gcloud auth activate-service-account SERVICE_ACCOUNT@DOMAIN.COM --key-file=key.json --project=$P_ID
gcloud config set project $P_ID

gcloud compute ssh --project=$P_ID --zone=$ZONE $Ins_name

curl "http://metadata.google.internal/computeMetadata/v1/instance/attributes/?recursive=true" -H "Metadata-Flavor: Google"
exit	
gcloud compute instances describe $Ins_Name
gcloud compute project-info describe
