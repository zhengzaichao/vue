<template>
    <div class="app-search">
        <header class="mui-bar mui-bar-nav">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/home"></router-link>
			<h1 class="mui-title">搜索</h1>
		</header>
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <input type="text" v-model="keywords" placeholder="你喜欢的球队 球星">
                    <mt-button type="danger" size="small" @click="search(keywords)">搜索</mt-button>
                </div>
            </div>
		</div>
        <div class="mui-card">
            <div class="mui-card-header">热门搜索</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="mui-table-view">
                        <li class="mui-table-view-cell mui-media">
                            <a href="javascript:;">
                                <img class="mui-media-object mui-pull-left" src="../../img/7.jpg">
                                <div class="mui-media-body">湖人
                                <p class='mui-ellipsis'>洛杉矶的王者，永远的贵族</p>
                                </div>
                            </a>
                        </li>
                        <li class="mui-table-view-cell mui-media">
                            <a href="javascript:;">
                                <img class="mui-media-object mui-pull-left" src="../../img/8.jpg">
                                <div class="mui-media-body">勇士
                                <p class='mui-ellipsis'>来自金州的新王</p>
                                </div>
                            </a>
                        </li>
                        <li class="mui-table-view-cell mui-media">
                            <a href="javascript:;">
                                <img class="mui-media-object mui-pull-left" src="../../img/9.jpg">
                                <div class="mui-media-body">杜兰特
                                <p class='mui-ellipsis'>下一个三连冠？联盟第一人？</p>
                                </div>
                            </a>
                        </li>
                        <li class="mui-table-view-cell mui-media">
                            <a href="javascript:;">
                                <img class="mui-media-object mui-pull-left" src="../../img/10.jpg">
                                <div class="mui-media-body">恩比德
                                <p class='mui-ellipsis'>未来十年NBA的牌面</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
			<div class="mui-card-footer"></div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                keywords:""
            }
        },
        methods:{
            search(){
                this.$router.push("/home/search/searchlist/"+this.keywords);
            }
        },
        created(){}
    }
</script>
<style scoped>
</style>