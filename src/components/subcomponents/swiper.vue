<template>
    <div class="app_swiper">
        <mt-swipe :auto="4000" class="mint-swipe">
            <mt-swipe-item v-for="item in list" :key="item. id" class="mint-swipe-item">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>
<script>
    export default {
        data(){
            return {}
        },
        methods:{},
        created(){},
        props:["list"]
    }    
</script>
<style scoped>
    .app_swiper{
        height:300px;
    }
    .app_swiper .mint-swipe .mint-swipe-item{
        text-align: center;
    }
     img{
        width:100%;
        height:100%;
    }
</style>

