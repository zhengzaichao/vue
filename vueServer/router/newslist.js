//1:加载模块   express pool
const express = require("express");
const pool = require("../pool");
//2:创建路由对象
var router = express.Router();
//3:功能一:新闻分页显示 GET /list
router.get("/list",(req,res)=>{
  //1:参数  pno pageSize
  var pno = req.query.pno;           //当前页码
  var pageSize = req.query.pageSize; //页大小
  //2:设置参数默认值
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 10;
  }
  //3:验证用户输入
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
    res.send({code:-1,msg:"页码格式不正确"});
    return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }
  //4:创建二条sql发送 总记录数
  //4.1:创建空对象保存返回数据
  var obj = {pno:pno,pageSize:pageSize};
  //4.2:创建变量保存(sql语句完成)进度
  var progress = 0;
  var sql = "SELECT count(id) as c FROM news";
  pool.query(sql,(err,result)=>{
     if(err)throw err;
     //console.log(result[0].c);
     var pageCount = Math.ceil(result[0].c/pageSize);
     obj.pageCount = pageCount;   //保存总页数
     progress+=50;                 //记录当前进度
     if(progress==100){            //二条sql完成
       res.send({code:1,msg:obj});//发送结果
     }
  })
  //5:创建二条sql发送 当前页内容
  var sql =" SELECT id,ptime,teams,points";
      sql+=" FROM news";
      sql+=" LIMIT ?,?"
  var offset = parseInt((pno-1)*pageSize);
  pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    obj.data = result;       //保存当前页内容
    progress += 50;          //进度加50
    if(progress == 100){     //如果二条sql语句全部完成
      res.send({code:1,msg:obj})//发送
    }
  })
});
//功能二：依据id查找新闻详细信息
router.get("/find",(req,res)=>{
  var id=req.query.id;
  var sql="SELECT `id`, `ptime`, `pic`, `title`,`content` FROM `news` WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result})
  })
})
//功能三：分页显示评论列表
router.get("/commentlist",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  var nid=parseInt(req.query.nid);
  if(!pno){
    pno=1;
  }
  if(!pageSize){
    pageSize=5;
  }
  //总记录数
  var obj={pno:pno,pageSize:pageSize};
  var progress=0;
  var sql="SELECT count(id) as c FROM comment WHERE nid=?"
  pool.query(sql,[nid],(err,result)=>{
    if(err) throw err
    obj.pageCount=Math.ceil(result[0].c/pageSize);
    progress+=50;
    if(progress==100){
      res.send(obj)
    }
  })
  //当前页内容
  var offset=parseInt((pno-1)*pageSize);
  pageSize=parseInt(pageSize);
  var sql="SELECT `id`, `nid`, `ctime`, `content`, `username`, `isdel` FROM `comment` WHERE nid=?  ORDER BY id DESC LIMIT ?,?"
  pool.query(sql,[nid,offset,pageSize],(err,result)=>{
    if(err) throw err;
    obj.data=result;
    progress+=50;
    if(progress==100)
      res.send(obj)
  })
})
//功能四：添加一条评论
router.post("/saveComment",(req,res)=>{
  var nid=parseInt(req.body.nid);
  var username=req.body.username;
  var content=req.body.content;
  if(content.length<2){
    res.send({code:-1,msg:"评论内容太少了"})
    return;
  }
  var sql="INSERT INTO `comment`(`id`, `nid`, `ctime`, `content`, `username`, `isdel`) VALUES (null,?,now(),?,?,0)"
  pool.query(sql,[nid,content,username],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows==1){
      res.send({code:1,msg:"发表评论成功"})
    }else{
      res.send({code:-1,msg:"发表评论失败"})
    }
  })
})
//4:导出路由对象 
module.exports = router;