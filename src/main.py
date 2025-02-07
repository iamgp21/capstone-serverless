import base64
import os
import requests
import json
import datetime
from datetime import datetime
import github
from github import Github
from github import Auth 

pat_token = os.environ.get("GITHUB_PAT")
loki_tenant = os.environ.get("LOKI_TENANT")
loki_password = os.environ.get("LOKI_APITOKEN")
loki_endpoint= "https://logs-prod-028.grafana.net/loki/api/v1/push"

def trigger(event, context):
    
    try:
        pubsub_message = base64.b64decode(event['data']).decode('utf-8')
        
        # Auth using an access token:
        auth = Auth.Token(str(pat_token))
        
        gobj = Github(auth=auth)

        user = gobj.get_user()
        
        ##Create a Github Repo:
        repo = user.create_repo("testrepo")

        gobj.close()
        
        # Log datapayload
        log_data = {
            "streams": [
                {
                    "stream": {
                        "job": "gcp-cf"
                    },
                    "values": [
                        [str(int(datetime.now().timestamp() * 1e9)), "Github Repo Created"]
                    ]
                }
            ]
        }

        # print(f"Github {repo} created")
    
        # Send log data to Loki
        response = requests.post(loki_endpoint,data=json.dumps(log_data),headers={"Content-Type": "application/json"},auth=(loki_tenant, loki_password))
    
    except Exception as err:

        print("Caught exception: " + str(err))
        
        gobj.close()
        
def main():
    trigger(event, context)