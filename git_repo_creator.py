import requests
import json

user_name = "kaushikkodeeswaran" 
print(user_name)

github_token = "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"
print(github_token)

f = open("config", "r")
filename = (f.readline())

repo_name = filename
print(repo_name)

repo_description = "version check(dependabot)" 
print(repo_description)

payload = {'name': repo_name, 'description': repo_description, 'auto_init': 'true'}
repo_request = requests.post('https://api.github.com/' + 'user/repos', auth=(user_name,github_token), data=json.dumps(payload))
if repo_request.status_code == 422:
    print("Github repo already exists try wih other name.")
elif repo_request.status_code == 201:
    print("Github repo has created successfully.")
elif repo_request.status_code == 401:
    print("You are unauthorized user for this action.")    