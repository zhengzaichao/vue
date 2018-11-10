<template>
    <div class="app_goodsinfo">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">篮球装备</h1>
		</header>
        <!--第一部分：商品的轮播区域-->
        <div class="mui-card">
			<div class="mui-card-content">
				<div class="mui-card-content-inner">
					<swipe-box :list="imagelist"></swipe-box>
				</div>
			</div>
		</div>
        <!--第二部分：商品的购买区域-->
        <div>
            <div class="mui-card">
                <div class="mui-card-header">{{detail.brand}}</div>
                <div class="mui-card-content">
                    <div class="mui-card-content-inner">
                        <p class="price">
                            标签:<span class="mark">{{detail.bname}}</span>
                            销售价:<span class="now_price">￥{{detail.price}}</span>
                        </p>
                        <div>
                            购买数量:
                            <div class="mui-numbox">
                                <button class="mui-btn mui-btn-numbox-minus" type="button" @click="goSub">-</button>
                                <input class="mui-input-numbox" type="number" v-model="num">
                                <button class="mui-btn mui-btn-numbox-plus" type="button" @click="goAdd">+</button>
                            </div>  
                        </div>
                    </div>
                </div>
                <div class="mui-card-footer">
                    <p>
                        <mt-button type="primary" size="small">立即购买</mt-button>
                        <mt-button type="danger" size="small" @click="addCart">加入购物车</mt-button>
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import swiper from "../subcomponents/swiper.vue"
//mui.js 与脚手架严格模式有冲突
//import mui from "../../lib/mui/js/mui.js"
    export default {
        data(){
            return {
                id:this.$route.params.id,
                imagelist:[],
                detail:{},
                num:1
            }
        },
        methods:{
            addCart(){
                //修改vuex中共享的数据
                this.$store.commit("increment",this.num)
            },
            goSub(){
                if(this.num<=1) return;
                this.num=this.num-1;
            },
            goAdd(){
                if(this.num>=99) return;
                this.num=parseInt(this.num)+1;
            },
            getDetail(){
                this.$http.get("product/detail?id="+this.id).then(result=>{
                    //console.log(result)
                    this.detail=result.body.msg[0];
                })
            },
            getImageList(){
                this.$http.get("product/balls").then(result=>{
                    if(result.body.code==1)      
                    this.imagelist=result.body.msg;
                })
            }
        },
        created(){
            this.getDetail();
            this.getImageList();
            //console.log(this.$route.params.id)
        },
        components:{//注册子组件
           "swipe-box":swiper
        }
    }
</script>
<style scoped>
    .price{
        display: flex;
        justify-content: space-between;
    }
    .price .now_price{
        color:red;
        font-size: 20px;
    }
    .app_goodsinfo .mui-card-footer p mt-button{
        padding-left:20px;
    }
    .mark{
        font-size:20px;
        color:orange;
    }
</style>       
