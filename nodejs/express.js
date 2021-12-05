const { Kafka } = require('kafkajs')

const kafka = new Kafka({
    clientId: 'my-app',
    brokers: ['kafka:9092']
})
const express = require('express');
const app = express();

app.get('/done', (req, res) => {
    senddata('check_cart')
    res.send('BOOTCAMP 1\n');
});

app.get('/cart', (req, res) => {
    senddata('add_cart')
    res.send('BOOTCAMP 2\n');
});

app.get('/', (req, res) => {
    senddata('login')
    res.send('Create Bootcamp\n');
});

function senddata(action) {
    (async () => {
        const producer = kafka.producer()

        await producer.connect()
        await producer.send({
            topic: 'pyspark-topic3',
            messages: [
                {
                    "value": `{"name": 'yuki', "action": ${action}, "sendtime": ${Date.now()}}`
                },

            ],
        })

        await producer.disconnect()

    })()
}

app.listen(3000);