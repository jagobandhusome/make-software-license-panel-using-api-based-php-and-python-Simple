import requests
import os
import time
from datetime import datetime
from urllib.request import urlopen
import pandas as pd

def main():
    try:
        pcuuid = os.popen("wmic csproduct get UUID").read().split()[1];
        data = requests.post("https://yourdomain.com/api_response.php",data={"api_key":"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq", "uuid":pcuuid,"status":"Active"})
        data = data.json()
        #print(data)
        
        if data.get("status") == 'Active':
            exp_date = data.get('expire_date')
            res = urlopen('http://just-the-time.appspot.com/')
            full_date_today = res.read().strip()
            unicode_date_today = full_date_today.decode('utf-8')
            date_today = str(pd.to_datetime(unicode_date_today).date())            

            try:
                if exp_date < date_today :
                    print("expired")
                else:
                    print("hmmmmmm")
            except Exception as err:
                print("error")
        else:
            print("error")
    except:
        os._exit(0)

if __name__ == '__main__':
    main()