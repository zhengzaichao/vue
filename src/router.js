import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import SearchContainer from "./components/tabbar/SearchContainer.vue"
import SearchList from "./components/search/SearchList"
import ShopContainer from "./components/tabbar/ShopContainer"
import UserContainer from "./components/tabbar/UserContainer"
import NewsContainer from "./components/news/NewsContainer"
import NewsDetailContainer from './components/news/NewsDetailContainer'
import SuperStar from "./components/superstar/SuperStar"
import ProductContainer from "./components/goods/ProductContainer"
import BallsContainer from "./components/goods/BallsContainer"
import ShirtContainer from "./components/goods/ShirtContainer"
import ShoesContainer from "./components/goods/ShoesContainer"
import GoodsInfo from "./components/goods/GoodsInfo"
import LBJ from "./components/superstar/LBJ"
import KD from "./components/superstar/KD"
import CURRY from "./components/superstar/CURRY"
import WADE from "./components/superstar/WADE"
Vue.use(Router)
export default new Router({
  routes:[
    {path:'/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/home/search',component:SearchContainer},
    {path:'/home/shop',component:ShopContainer},
    {path:'/home/user',component:UserContainer},
    {path:'/home/newslist',component:NewsContainer},
    {path:'/home/newslist/newsdetail/:id',component:NewsDetailContainer},
    {path:'/home/superstar',component:SuperStar,},
    {path:'/home/superstar/lbj',component:LBJ},
    {path:'/home/superstar/kd',component:KD},
    {path:'/home/superstar/curry',component:CURRY},
    {path:'/home/superstar/wade',component:WADE},
    {
      path:'/home/product',component:ProductContainer,
      // children:[
      //   {
      //     path:'balls',
      //     compontent:BallsContainer
      //   }
      // ]
    },
    {path:'/home/product/balls',component:BallsContainer},
    {path:'/home/product/shirt',component:ShirtContainer},
    {path:'/home/product/shoes',component:ShoesContainer},
    {path:'/home/product/goodsinfo/:id',component:GoodsInfo},
    {path:'/home/search/searchlist/:keywords',component:SearchList},
   ],
   linkActiveClass:"mui-active"
})
