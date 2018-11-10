<template>
    <div class="app-superstar">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">篮球装备</h1>
		</header>
        <div class="mui-card" v-for="(item,index) in list"  :key="item.id" @click="getDetail(index)">
            <div class="mui-card-header mui-card-media" style="height:63vw;"><img id="pic" :src="item.img_url"></div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p>{{item.type}}</p>
                    <p style="color: #333;">{{item.title}}</p>
                </div>
            </div>
            <div class="mui-card-footer">
                <a class="mui-card-link">Like</a>
                <a class="mui-card-link">查看更多</a>
            </div>
        </div>
    </div>
   
</template>
<script>
   import {Toast} from "mint-ui"
    export default {
        data(){
            return {
                list:[],
            }
        },
        methods:{
             getProduct(){
                this.$http.get("product/list").then(result=>{
                    this.list=result.body.msg;
                })
            },
            getDetail(index){
                if(index==0){
                    this.$router.push({path:'product/balls'})
                }else if (index==1){
                    this.$router.push({path:'product/shirt'})
                }else{
                    this.$router.push({path:'product/shoes'})
                }
            }
        },
        created() {
            this.getProduct();   
        },
    }
</script>
<style scoped>
    #pic{   
        width: 100%;
        height:60vw;
    }
</style>

