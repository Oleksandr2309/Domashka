# -*- coding: utf-8 -*-
from ATBparser import Promotion

from flask import Flask, jsonify, request
app = Flask(__name__)


@app.route('/', methods=['GET'])
def index():
    return '<h1>Hello there!</h1>'


@app.route('/promotions/ATB', methods=['GET'])
def getPromo():
    promotions = Promotion.parse()
    return jsonify(promotions)

@app.route('/promotions/ATB/withDiscount', methods=['POST'])
def discount():
    global promotions
    discountMoreThan = {}
    for d in promotions:
        discountMoreThan.append({ 
            'discount': d.find_one(discounts)
        })
    return discountMoreThan
#print discountMoreThan


def main():
    app.run()


if __name__ == '__main__':
    main()
