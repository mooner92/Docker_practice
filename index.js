const express = require('express');

const app = express();

app.get('/',(req,res)=>{
    res.send('Docker예쩨입니다.');
})

app.listen(8080,() => console.log('server is running'));