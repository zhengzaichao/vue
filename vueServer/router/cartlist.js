//购物车
//1:加载模块   express pool
const express = require("express");
const pool = require("../pool");
//2:创建路由对象
var router = express.Router();
router.get("/list",(req,res)=>{
	var obj={code:1,msg:[
		{id:1,name:"Kobe AD NXT 360",price:1599,count:1},
		{id:2,name:"卡特15号 猛龙队复古款",price:2059,count:1},
		{id:3,name:"斯伯丁 SPALDING",price:370,count:1},
	]};
	res.send(obj);
});
//4:导出路由对象 
module.exports = router;