<template>
    <div class="app_newsdetail">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">比赛详情</h1>
		</header>
        <h2>{{newsInfo.title}}</h2>
        <img :src="newsInfo.pic" />
        <span>{{newsInfo.ptime | dateFormat}}</span>
        <p>数据统计：</p>
        <p v-html="newsInfo.content">{{newsInfo.content}}</p>
        <comment-box :id="this.id"></comment-box>
    </div>
</template>
<script>
import comment from "../subcomponents/comment"
   export default {
       data(){
           return{
                id:this.$route.params.id,
                newsInfo:{}  //保存当前新闻内容
           }
       },
       methods:{
           getNewsDetail(){
               var url="newslist/find?id="+this.id;
               this.$http.get(url).then((result)=>{
                   //console.log(result)
                   this.newsInfo=result.body.msg[0];
                   //console.log(this.newsInfo)
               })
           }
       },
       created(){
           this.getNewsDetail()
       },
       components:{
           "comment-box":comment
       }
   } 
</script>
<style scoped>
    .app_newsdetail img{
        width:100%;
        margin:10px 0;
    }
    .app_newsdetail span{
        text-align: center;
    }
    .app_newsdetail p{
        text-indent: 2em;
    }
</style>
