/* 动态 path 匹配例子：https://github.com/vuejs/vue-router/blob/dev/examples/route-matching/app.js */

import router from '@/router'
import Gallary from '@/views/product/index.vue'

/**
 * @type {import('vue-router').RouteConfig[]}
 */
export const routes = [
  {
    path: '/',
    name: 'home',
    meta: { title: '主页' },
    component: Gallary,
  },
  {
    path: '/about',
    name: 'about',
    meta: { title: '关于我们' },
    component: () =>
      import(/* webpackChunkName: "about" */ '@/views/About.vue'),
  },
  {
    path: '/gallary',
    name: 'gallary',
    meta: { title: 'GALLARY' },
    component: () =>
      import(/* webpackChunkName: "gallary" */ '@/views/product/index.vue'),
  },
  {
    path: '/team',
    name: 'team',
    meta: { title: 'TEAM' },
    component: () =>
      import(/* webpackChunkName: "gallary" */ '@/views/contactUs/team.vue'),
  },
  {
    path: '/shop',
    name: 'shop',
    meta: { title: 'SHOP' },
    component: () =>
      import(/* webpackChunkName: "gallary" */ '@/views/solution/shop.vue'),
  },
  {
    path: '/login',
    name: 'login',
    meta: { title: 'login' },
    component: () =>
      import(/* webpackChunkName: "gallary" */ '@/views/contactUs/login.vue'),
  },
  {
    path: '/roadmap',
    name: 'roadmap',
    meta: { title: 'roadmap' },
    component: () =>
      import(/* webpackChunkName: "gallary" */ '@/views/contactUs/roadmap.vue'),
  },
  {
    path: '/mint',
    name: 'mint',
    meta: { title: 'mint' },
    component: () =>
      import(/* webpackChunkName: "gallary" */ '@/views/mint.vue'),
  },
  {
    path: '/*',
    name: '404',
    meta: { title: '404' },
    component: () =>
      import(/* webpackChunkName: "low-priority" */ '@/views/404.vue'),
  },
]

export default routes
