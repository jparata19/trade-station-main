import requests
import json
from requests.exceptions import Timeout
url="https://www.githubstatus.com/api/v2/summary.json"
headers = {'content-type': 'application/json', 'Accept-Charset': 'UTF-8'}
try:
    response = requests.get(url)
except:
    print('the request Timed Out')
    print(response)
    end()
else:
    try:
        result = response.json()
        status = result['status']['description']
        if status == 'All Systems Operational':
            print('GitHub is fully operational.')
        else:
            print('github is experiencing some issues:')
            print(status)
    except:
        print('response from server dones not contain the stauts of the application')
