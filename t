import pandas as pd
import numpy as np
import yfinance as yf
import matplotlib.pyplot as plt
import seaborn as sns

Tesla = yf.Ticker("TSLA")
tesla_data = Tesla.history(period="max")
df=tesla_data
df.reset_index(inplace=True)
df.head()
df.tail()
 GME= yf.Ticker("GME")
GME_share_price_data = GME.history()
df1=GME_share_price_data
df1.reset_index(inplace=True)
df1.head()
df1.tail()
def make_graph(data, title):
    plt.figure(figsize=(14, 7))
    plt.plot(data['Date'], data['Close'], label='Close Price', color='blue')
    plt.xlabel('Date')
    plt.ylabel('Close Price')
    plt.title(title)
    plt.legend()
    plt.grid(True)
    plt.show()

make_graph(tesla_data, "Tesla Stock Data")
make_graph(GME_share_price_data, "GameStop Stock Data")

