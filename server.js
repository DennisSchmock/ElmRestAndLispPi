const express = require("express");
const app = express();

var number = 99;

app.all('/', function(req, res, next) {

 });

app.listen(3000, ()=>{
console.log("Server Started on port 3000");
});

app.get("/counter", function(req,res){
res.send(number +"");
});

app.put("/counter/:val", function(req,res){

var newValue = req.params.val;
number = newValue;

res.send(number + "");
});
