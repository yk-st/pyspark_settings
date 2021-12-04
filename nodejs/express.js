const { Kafka } = require('kafkajs')

const kafka = new Kafka({
    clientId: 'my-app',
    brokers: ['kafka:9092']
})
const express = require('express');
const app = express();

app.get('/done', (req, res) => {
    res.send('BOOTCAMP 1\n');
});

app.get('/cart', (req, res) => {
    res.send('BOOTCAMP 2\n');
});

app.get('/', (req, res) => {

    const producer = kafka.producer()

    await producer.connect()
    await producer.send({
        topic: 'pyspark-topic1',
        messages: [
            { value: 'Hello KafkaJS user!' },
        ],
    })

    await producer.disconnect()


    res.send('Create Bootcamp\n');
});


app.listen(3001);