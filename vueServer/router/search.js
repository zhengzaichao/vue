const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/search",(req,res)=>{
    var keywords=req.query.keywords;
    console.log(keywords)
    var sql=`SELECT * FROM plays WHERE pname LIKE '%${keywords}%' OR content LIKE '%${keywords}%' OR ptime Like '%${keywords}%'`;
    pool.query(sql,[keywords],(err,result)=>{
        //console.log(result)
        if(err) throw err;
        res.send({code:1,msg:result})
    })
})
module.exports = router;
