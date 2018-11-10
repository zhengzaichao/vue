<template>
    <div class="app-superstar">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">球队球星</h1>
		</header>
        <div class="mui-card" v-for="(item,index) in list"  :key="item.id">
            <div class="mui-card-header mui-card-media" style="height:63vw;"><img id="pic" :src="item.img_url"></div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p>发布于 &nbsp;&nbsp;&nbsp;{{item.ptime | dateFormat}}</p>
                    <p style="color: #333;">{{item.content}}</p>
                </div>
            </div>
            <div class="mui-card-footer">
                <a class="mui-card-link">Like</a>
                <a class="mui-card-link read"  @click="jump(index)">Read more</a>
            </div>
        </div>
    </div>
   
</template>
<script>
   import {Toast} from "mint-ui"
    export default {
        data(){
            return {
                list:[]
            }
        },
        methods:{
            getMore(){
                var url="http://127.0.0.1:3000/superstar/list";
                this.$http.get(url).then(result=>{
                    if(result.body.code==1)
                    {
                        this.list=result.body.msg; 
            }else{
                        Toast("加载内容失败...");
                    }
                })
            },
            jump(index){
                if(index==0){
                    this.$router.push("/home/superstar/lbj")
                }else if(index==1){
                    this.$router.push("/home/superstar/kd")
                }else if(index==2){
                    this.$router.push("/home/superstar/curry")
                }else{
                   this.$router.push("/home/superstar/wade") 
                }
            },
        },
        created() {
            this.getMore();
        },
    }
</script>
<style scoped>
    #pic{
        
        width: 100%;
        height:60vw;
    }
    .read{
        color:red;
        font-size: 16px;
    }
</style>

