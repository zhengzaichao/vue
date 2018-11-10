//app.js
//1:加载模块 express
const express = require("express");
const lunbotu=require("./router/lunbotu");
const cartlist=require("./router/cartlist")
const newslist=require("./router/newslist");
const superstar=require("./router/superstar");
const product=require("./router/product");
const search=require("./router/search")
const bodyParse=require("body-parser");
//2:创建express
var app = express();
app.use(bodyParse.urlencoded({extended:false}));
const cors=require("cors");
app.use(cors({
	origin:["http://127.0.0.1:3001","http://localhost:3001"],
	credentials:true 
}));
//3:绑定监听端口 3000
app.listen(3000);
//4:指定静态目录 public
//__dirname 当前程序所有目录完整路径
//console.log(__dirname)
app.use(express.static(__dirname+"/public"));
app.use("/lunbotu",lunbotu);
app.use("/cartlist",cartlist);
app.use("/newslist",newslist);
app.use("/superstar",superstar);
app.use("/product",product);
app.use("/search",search);