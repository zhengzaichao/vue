import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'

Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
import {Header,Swipe,SwipeItem,Button} from "mint-ui";
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Button.name,Button)
import VueResource from "vue-resource";
Vue.use(VueResource);
router.afterEach((to,from,next) => {
  window.scrollTo(0,0);
});

import Vuex from "vuex"
Vue.use(Vuex);
var store=new Vuex.Store({
  state:{
    cartCount:0
  }, //共享数据
  mutations:{
    increment(state,num){state.cartCount+=num},
    substract(state){state.cartCount--},
    clearcount(state){state.cartCount=0}
  },//操作共享数据方法
  getters:{
    optCount:function(state){
      return state.cartCount;
    }
  }  //获取并监听数据方法
});

//定义全局（日期格式）过滤器
Vue.filter("dateFormat",function(datestr,pattern="YYYY-MM-DD"){
  return new Date(datestr).toLocaleString();
}); 
//设置全局ajax访问基础路径
Vue.http.options.root="http://127.0.0.1:3000/";
//设置全局ajax post访问格式
Vue.http.options.emulateJSON=true;
new Vue({
  router,
  render: h => h(App),
  store   //将vuex对象注册vue对象中
}).$mount('#app')
