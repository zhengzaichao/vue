<template>
    <div class="app-shop">
        <header class="mui-bar mui-bar-nav">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/home"></router-link>
			<h1 class="mui-title">购物车</h1>
		</header>
        <div class="mui-card">
            <div class="mui-card-header">您的购物车</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner" v-for="item in list" :key="item.id">
                    <div >商品：{{item.name}} &nbsp;&nbsp;&nbsp;单价:{{item.price}}元</div>
                    <div class="mui-numbox">
                        <button class="mui-btn mui-btn-numbox-minus" type="button" @click="goSub(item.id)">-</button>
                        <input class="mui-input-numbox" type="number" :value="item.count">
                        <button class="mui-btn mui-btn-numbox-plus" type="button" @click="goAdd(item.id)">+</button>
                    </div>      
                </div>
            </div>
            <div class="mui-card-footer">小计:<span>￥{{getsubtotal}}</span></div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                list:[]
            }
        },
        methods:{
                goSub(id){
                    for(var item of this.list){
                        if(item.id==id){
                            if(item.count<=1) break;
                            item.count--;
                        }
                    }
                },
                goAdd(id){
                    //console.log(id)
                    for(var item of this.list){
                        if(item.id==id){
                            item.count++;
                        }
                    }
                },
                getCartList(){
                this.$http.get("cartlist/list").then(result=>{
                    this.list=result.body.msg;
                })
            }
        },
        created(){
            this.getCartList();
        },
        computed:{
            getsubtotal:function(){
                var sum=0;
                for(var item of this.list){
                    sum+=item.price*item.count;
                }
                return sum;      
            }
            
        }
    }
</script>
<style scoped>
.mui-card-header{
    font-size: 20px;
    color:blue;
}
.mui-card-footer>span{
    font-size:18px;
    color:red;
    font-weight: bold;
}
</style>