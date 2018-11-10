<template>
    <div class="searchlist">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">搜你喜欢</h1>
		</header>
        <div class="mui-card">
            <div class="mui-card-header">搜索结果</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="mui-table-view">
                        <li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id" @click="readme(item.id)">
                            <img class="mui-media-object mui-pull-left" :src="item.img_url">
                            <div class="mui-media-body">{{item.pname}}
                            <p class='mui-ellipsis'>{{item.content}}</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
    export default ({
        data(){
            return {
                keywords:this.$route.params.keywords,
                list:[]
            }
        },
        methods:{
            readme(id){
                if(id==1){
                    this.$router.push("/home/superstar/lbj")
                }else if(id==2){
                    this.$router.push("/home/superstar/kd")
                }
                else if(id==3){
                    this.$router.push("/home/superstar/curry")
                }else{
                    this.$router.push("/home/superstar/wade")
                }
            },
            searchlist(){
                this.$http.get("search/search?keywords="+this.keywords).then(result=>{
                    //console.log(result)
                   this.list=result.body.msg;
                   if(result.body.msg.length==0){
                       Toast("亲~没有此结果哦！！！")
                   }
                })
            }
        },
        created(){
            this.searchlist();
        }
    })
</script>
<style>
    
</style>