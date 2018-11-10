<template>
    <div class="app-user">
        <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" @click="$router.back(-1)"></a>
			<h1 class="mui-title">个人中心</h1>
		</header>
        <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						这是一个最简单的卡片视图控件；卡片视图常用来显示完整独立的一段信息，比如一篇文章的预览图、作者信息、点赞数量等
					</div>
				</div>
			</div>
    </div>
</template>
<script>
    export default {
        data(){
            return {}
        },
        methods:{

        },
        created(){
            
        }
    }
</script>
<style scoped>
</style>