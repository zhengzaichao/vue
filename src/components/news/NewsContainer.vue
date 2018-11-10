<template>
    <div class="app_newslist">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">每日战报</h1>
		</header>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
                <router-link :to="'/home/newslist/newsdetail/'+item.id">
                    <img class="mui-media-object mui-pull-left" src="@/img/1.jpg">
                    <div class="mui-media-body">
                        {{item.teams}}
                        <p class='mui-ellipsis'>
                        <span>{{item.ptime | dateFormat}}</span>
                        <span>比分:{{item.points}}</span>
                        </p>
                    </div>
                </router-link>
            </li>
        </ul>
        <mt-button type="primary" size="large" @click="getMore">加载更多...</mt-button>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default {
        data(){
            return{
                list:[],
                pageIndex:0,
                pageCount:""
            }
        },
        methods:{
            getMore(){
                this.pageIndex++;
                var url="newslist/list?pno="+this.pageIndex;
                this.$http.get(url).then(result=>{
                    //this.list=result.body.msg.data;
                    this.list=this.list.concat(result.body.msg.data);
                    this.pageCount=result.body.msg.pageCount;
                    if(this.pageIndex>this.pageCount)
                        Toast("已经到底了");
                });
            },
            getNewsList(){
                /*var url="http://127.0.0.1:3000/newslist/list";
                this.$http.get(url).then(result=>{
                    console.log(result)
                    if(result.body.code==1)
                    {
                        this.list=result.body.msg.data;
                    }else{
                        Toast("加载新闻分页失败...");
                    }
                })*/
            }
        },
        created(){
            this.getMore();
        }
    } 
</script>
<style scoped>
    h1{
        font-size:14px;
    }
    .mui-table-view-cell p{
        font-size:12px;
        color:red;
        display:flex;
        justify-content:space-between;
    }
</style>