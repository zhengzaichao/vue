<template>
    <div class="app_comment">
        <h1>发表评论</h1>
        <hr>
        <textarea placeholder="请输入评论的内容，最多吐槽120字" maxlength="120" v-model="msg">
        </textarea>
        <mt-button size="large" type="primary" @click="postComment">发表评论</mt-button>
        <div class="cmt-list">
            <div class="cmt-list-item" v-for="(item,i) in list" :key="item.id">
                <div class="cmt-title">
                    第{{i+1}}楼 &nbsp;&nbsp; 用户:{{item.username}}   &nbsp;发表时间:{{item.ctime |dateFormat}}
                </div>
                <div class="cmt-body">
                    {{item.content}}
                </div>
            </div>    
        </div> 
        <mt-button type="danger" size="large" @click="getCommentList">加载更多</mt-button>
    </div>
</template>
<script>
    import {Toast} from "mint-ui";
    export default {
        data(){
            return {
                list:[],
                msg:"",     //双向绑定评论
                pageIndex:0  //当前页码
            }
        },
        methods:{
            postComment(){
                var username="匿名用户";
                var nid=this.id;
                var content=this.msg;
                var url="newslist/saveComment";
                var obj={nid:nid,content:content,username:username};
                this.$http.post(url,obj).then(result=>{
                    if(result.body.code==1){
                        this.msg="";
                        Toast(result.body.msg);
                        this.pageIndex=0; //当前页码清零
                        this.list=[];  //数据值清空
                        this.getCommentList(); //加载第一页
                    }else{
                        Toast(result.body.msg);
                    }
                    //console.log(result)
                })
            },
            getCommentList(){
                this.pageIndex++;
                var url="newslist/commentlist?nid="+this.id;
                    url+="&pno="+this.pageIndex;
                this.$http.get(url).then(result=>{
                    this.list=this.list.concat(result.body.data);
                })
            }
        },
        created(){
            this.getCommentList();
            //console.log(this.id); 
        },
        props:["id"] //接收父组件传递的参数
     }
</script>
<style class="scoped">
    .app_comment h1{
        font-size:18px;
    }
    .app_comment textarea{
        font-size: 13px;
        height:85px;
        margin:0;
    }
    .app_comment .cmt-list{
        margin:5px 0;
    }
    .app_comment .cmt-list .cmt-list-item{
        font-size:13px;
    }
    .app_comment .cmt-list .cmt-list-item .cmt-title{
        line-height: 30px;                                                                                
        background-color:#ccc;  
    }
    .app_comment .cmt-list .cmt-list-item .cmt-body{
        line-height: 30px;
        text-indent:2em;
    }
    
</style>