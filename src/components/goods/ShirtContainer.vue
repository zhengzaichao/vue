<template>
    <div class="app-goods-list">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">精品球衣</h1>
		</header>
        <div class="app-goods-item" v-for="item in list" :key="item.id">
            <img :src="item.img_url">
            <h1 class="title">{{item.bname}}</h1>
            <p>{{item.cntent}}</p>
            <div class="info">
                <p class="price">
                    <span class="now">￥{{item.price}}</span>
                </p>
                <p class="sell">
                    <span>热卖中</span>
                    <span>剩{{item.sell}}件</span>
                </p>
            </div>
        </div>
        <mt-button type="primary" size="large" @click="getMore()">加载更多...</mt-button>
    </div>
</template>
<script>
import {Toast} from 'mint-ui'
    export default {
        data(){
            return {
                list:[]
            }
        },
        methods:{
            getShirt(){
                this.$http.get("product/shirt").then(result=>{
                    //console.log(result)
                    this.list=result.body.msg;
                })
            },
            getMore(){
                Toast("暂无新品上新...");
            }
        },
        created(){
            this.getShirt();
        }
    }
</script>
<style scoped>
    .app-goods-list{
        display: flex;
        flex-wrap: wrap;
        padding:7px;
        justify-content: space-between;
    }
    .app-goods-list .app-goods-item{
        width: 49%;
        border:1px solid #ccc;
        box-shadow: 0 0 8px #ccc;
        margin:4px 0;
        padding:2px;
        display:flex;
        flex-direction: column;
        justify-content: space-between;
        min-height: 293px;
    }
    .app-goods-list .app-goods-item img{
        width:100%;
    }
    .app-goods-list .app-goods-item .title{
        font-size:14px;
    }
    .app-goods-list .app-goods-item .info{
        background:#eee;
    }
    .app-goods-list .app-goods-item .info p{
        margin:0;
        padding:5px;
    }
    .app-goods-list .app-goods-item .info .price .now{
        color:red;
        font-weight: bold;
        font-size: 16px;
    }
    .app-goods-list .app-goods-item .info .price .old{
        text-decoration: line-through;
        font-size:12px;
    }
    .app-goods-list .app-goods-item .info .sell{
        display: flex;
        font-size: 12px;
        justify-content: space-between;
    }
    
</style>
