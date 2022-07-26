import 'normalize.css'
import './styles/reset.less'
import Vue from 'vue'
import './catchError'
import './element-ui' // @PC.element-ui

// import './vant' // @H5.vant
import './styles/global.less'
import router from './router'

import './injects'
import App from './App.vue'

/* 条件编译 (必须是运行时可用的环境变量，并且变量值不能为 undefined，否则模块必定会打包) */
if (process.env.VUE_APP_MOCK === 'true') {
  require('./api/mock')
}
if (process.env.VUE_APP_ENV === 'dev' || process.env.VUE_APP_ENV === 'stage') {
  require('./vconsole') // @H5
}

Vue.config.devtools =
  process.env.VUE_APP_ENV === 'dev' || process.env.VUE_APP_ENV === 'stage'
Vue.config.silent = process.env.VUE_APP_ENV === 'prod'
Vue.config.productionTip = false

export default new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
