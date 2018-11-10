<template>
    <div class="app">
        <!--轮播图-->
     <mt-swipe :auto="4000" class="demo" >
            <mt-swipe-item v-for="item in list"  :key="item.id">
                <img :src="item.img_url"/>
            </mt-swipe-item>
        </mt-swipe>
        <!--六宫格-->
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/newslist">
                    <img src="../../img/1.jpg">
                    <div class="mui-media-body">每日战报</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/superstar">
                    <img src="../../img/2.jpg">
                    <div class="mui-media-body">球队球星</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/product">
                    <img src="../../img/3.png">
                    <div class="mui-media-body">篮球装备</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/4.jpg">
                    <div class="mui-media-body">购物车</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu5.png">
                    <div class="mui-media-body">订单详情</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/6.jpg">
                    <div class="mui-media-body">联系我们</div></a></li>
        </ul>       
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default {
        data(){
            return{
                list:[]
            }
        },
        methods:{
            getImageList(){
                var url="http://127.0.0.1:3000/lunbotu/list";
                this.$http.get(url).then(result=>{
                    if(result.body.code==1)
                    {
                        this.list=result.body.msg; 
                    }else{
                        Toast("加载轮播图片失败...");
                    }
                })
            }
        },
        created(){
            this.getImageList();
        }
    }
</script>
<style scoped>
    .demo{
       height:200px;
       margin-bottom: 10px;
    }
    .demo img{
       width:100%;
       height: 200px;
    }
    .app ul{
        background:#fff;
    }
    .mui-grid-view.mui-grid-9 .mui-table-view-cell{
        border:0;
    }
    .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
        font-size:14px;
    }
    img{
        width:60px;
        height:60px;
    }
</style>