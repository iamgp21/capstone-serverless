import base64
import os
import github
from github import Github
from github import Auth 

patToken = os.environ.get("GITHUB_PAT")

def trigger(event, context):
    
    try:

        pubsub_message = base64.b64decode(event['data']).decode('utf-8')
        
        # Auth using an access token:
        auth = Auth.Token(str(patToken))
        
        gobj = Github(auth=auth)

        user = gobj.get_user()
        
        ##Create a Github Repo:
        repo = user.create_repo("testrepo")

        print(f"User {user} created Github Repo: {repo}")
        
        gobj.close()
    
    except Exception as err:

        print("Caught exception: " + str(err))
        
        gobj.close()
        
def main():
    trigger(event, context)