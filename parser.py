
import requests

from bs4 import BeautifulSoup

class Promotion:

    @staticmethod
    def parse():
        page = requests.get('https://www.atbmarket.com/hot/akcii/economy')
        soup = BeautifulSoup(page.content, 'html.parser')
        shopName = 'ATB'
        global resultJson
        global skidki
        headers = {
        'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chro$
        }
        discounts = soup.find('ul', class_ = 'promo_list').find_all('li')
        resultJson = []
        for fc in discounts:
            resultJson.append({
                'shopName': 'ATB',
                'promotions': [
                {
                'productname': fc.find('span', class_='promo_info_text').find('span').get_text().strip(),
                'oldprice': fc.find('span', class_='promo_old_price').get_text(strip=True),
                'newPrice': fc.find('div', class_='promo_price').get_text(strip=True),
                'discounts': fc.find('div', class_='price_box').find('span').text
                }
                ]
            })
        return resultJson
