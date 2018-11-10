const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/list",(req,res)=>{
    var obj={code:1,msg:[
        {id:1,type:"篮球",img_url:"http://127.0.0.1:3000/img/b1.jpg",title:"各种品牌篮球，尽在这里！！！"},
        {id:2,type:"NBA球衣",img_url:"http://127.0.0.1:3000/img/qiuyi1.jpg",title:"NBA真品球衣，是时候亮出老炮球迷的身份了！！！"},
        {id:3,type:"篮球鞋",img_url:"http://127.0.0.1:3000/img/xie1.jpg",title:"多款NBA球鞋战靴，总有一款会心动！！！"}
    ]}
    res.send(obj);
})
router.get("/balls",(req,res)=>{
    
    var sql = "SELECT * FROM balls";
      pool.query(sql,(err,result)=>{
          //如果执行操作出错误，抛出错误对象
          if(err)throw err;  
          //1 执行正确  -1 -2 -3 操作失败 告诉程序 
          res.send({code:1,msg:result});
      });
  });
  router.get("/detail",(req,res)=>{
    var id=parseInt(req.query.id);
    var sql= "SELECT * FROM balls WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
    if(err)throw err;  
          //1 执行正确  -1 -2 -3 操作失败 告诉程序 
          res.send({code:1,msg:result});
      });
  });
  router.get("/shirt",(req,res)=>{
    var sql = "SELECT * FROM shirt";
      pool.query(sql,(err,result)=>{
          //如果执行操作出错误，抛出错误对象
          if(err)throw err;  
          //1 执行正确  -1 -2 -3 操作失败 告诉程序 
          res.send({code:1,msg:result});
      });
  });
  router.get("/shoes",(req,res)=>{
    var sql = "SELECT * FROM shoes";
      pool.query(sql,(err,result)=>{
          //如果执行操作出错误，抛出错误对象
          if(err)throw err;  
          //1 执行正确  -1 -2 -3 操作失败 告诉程序 
          res.send({code:1,msg:result});
      });
  });
  //4:导出当前路由模块
  module.exports = router;