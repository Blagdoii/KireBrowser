from selenium import webdriver

PROXY = "66.29.154.103:3128" # IP:PORT or HOST:PORT

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--proxy-server=http://%s' % PROXY)

chrome = webdriver.Chrome(chrome_options=chrome_options)

print("Pls dont close this")