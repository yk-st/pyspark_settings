const { Kafka } = require('kafkajs')

const kafka = new Kafka({
    clientId: 'my-app',
    brokers: ['kafka:9092']
})
const express = require('express');
const app = express();

app.get('/done', (req, res) => {
    senddata('check_cart')
    res.send('お買い上げどうも\n');
});

app.get('/cart', (req, res) => {
    senddata('add_cart')
    res.send('カートに入りました\n');
});

app.get('/', (req, res) => {
    senddata('login')
    res.send('ログインしました\n');
});

function senddata(action) {
    (async () => {
        const producer = kafka.producer()

        await producer.connect()
        await producer.send({
            topic: 'pyspark-topic3',
            messages: [
                {
                    "value": `{"name": "yuki_${Date.now()}", "action": "${action}", "sendtime": ${Date.now()}}`
                },
            ],
        })

        await producer.disconnect()

    })()
}

app.listen(3000);