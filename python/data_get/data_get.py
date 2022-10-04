from urllib.request import urlopen
from urllib.parse import urlencode, unquote, quote_plus
import datetime
from dateutil.relativedelta import relativedelta
import urllib
import requests
import pandas as pd
import xmltodict
import json

before_day = (datetime.date.today() - datetime.timedelta(days=10)).strftime('%Y%m%d')
today = datetime.date.today().strftime('%Y%m%d')

key ='B%2FNiJnYmkZV1%2FK7ulvZI4MoSXvCTDfNAd0Snw%2Bk6g4%2BbMk1LoGVhd75DJahjv4K35Cr9jh9RX0j%2BM89grKBYsw%3D%3D'
url =f'http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson?serviceKey={key}&'
queryParams = urlencode({ quote_plus('pageNo') : 1,
                          quote_plus('numofRows') : 10,
                          quote_plus('startCreateDt') : before_day,
                          quote_plus('endCreateDt') : today
})
url2 = url + queryParams

response = urlopen(url2)
results = response.read().decode("utf-8")
results_to_json = xmltodict.parse(results)
data = json.loads(json.dumps(results_to_json))
print(type(data))
print(data)

corona = data['response']['body']['items']['item']
state_dt = []
decide_cnt = []
death_cnt = []

for i in corona:
    state_dt.append(i['stateDt'])
    decide_cnt.append(i['decideCnt'])
    death_cnt.append(i['deathCnt'])

df = pd.DataFrame([state_dt, decide_cnt, death_cnt]).T
df.columns = ['기준일', '확진자 수', '사망자 수']
df = df.sort_values(by='기준일', ascending=True)

# csv file create
df.to_csv('sample.csv')
# txt file create
df.to_csv('sample.txt')
