<template>
  <div>
    <div class="header">
      <div class="container clearfix">
        <el-row class="PC">
          <el-col :span="3">
            <div class="index-logo">
              <router-link to="/">
                <img src="@/assets/pc-logo.png" />
              </router-link>
            </div>
          </el-col>
          <el-col :span="15">
            <el-menu
              :default-active="activeIndex"
              :active-text-color="activeColor"
              :router="true"
              class="el-menu-demo"
              mode="horizontal"
              @select="handleSelect"
            >
              <el-menu-item index="/gallary">GALLARY</el-menu-item>
              <!-- <el-menu-item index="/team">TEAM</el-menu-item> -->
              <!-- <el-menu-item index="/shop">SHOP</el-menu-item> -->
              <el-menu-item index="/ROADMAP">ROADMAP</el-menu-item>
              <!-- <el-menu-item index="/LOGIN">LOGIN</el-menu-item> -->

              <el-menu-item index="/mint">MINT</el-menu-item>
            </el-menu>
          </el-col>
          <el-col :span="6">
            <div class="header-nav text-right">
              <!-- <el-button icon="el-icon-s-promotion" circle> </el-button>
              <el-button icon="el-icon-s-goods" circle> </el-button>
              <el-button icon="el-icon-star-on" circle> </el-button> -->
              <el-button
                type="danger"
                v-if="isConnectAccount"
                icon="el-icon-user-solid"
                circle
              >
              </el-button>
              <el-button
                type="danger"
                v-if="!isConnectAccount"
                @click="connectAccount()"
                >连接钱包</el-button
              >
            </div>
          </el-col>
        </el-row>
      </div>
    </div>
    <router-view />

    <Footer></Footer>
  </div>
</template>
<script>
import Footer from '@/components/footer/index.vue'
export default {
  name: 'App',
  components: {
    Footer,
  },
  data() {
    return {
      activeIndex: '',
      activeColor: '#409EFF',
      mobile_nav: false,
      isConnectAccount: false,
      accountAddress: '',
    }
  },
  watch: {
    $route: 'getPath',
  },
  created() {
    //this.connectAccount()
    this.activeIndex = this.$route.path
    this.isConnectAccount = sessionStorage.getItem('isConnectAccount')
    this.accountAddress = sessionStorage.getItem('accountAddress')
  },

  methods: {
    handleSelect() {},
    mobileNav() {},
    getPath() {
      this.activeIndex = this.$route.path
    },
    connectAccount() {
      // console.log("window.ethereum", window.ethereum);
      if (window.ethereum) {
        const promise = window.ethereum.request({
          method: 'eth_requestAccounts',
        })
        const _this = this
        promise
          .then(res => {
            if (res.length === 0) {
              this.$alert('获取metamask钱包地址失败', 'error', {
                confirmButtonText: '确定',
                type: 'error',
              })
              return
            }
            _this.requestAccounts = res[0]
            _this.isConnectAccount = true

            sessionStorage.setItem('accountAddress', _this.requestAccounts)
            sessionStorage.setItem('isConnectAccount', _this.isConnectAccount)
          })
          .catch(error => {
            if (error.code === 4001) {
              _this.requestAccounts = ''
              _this.isConnectAccount = false
            }
            sessionStorage.setItem('accountAddress', _this.requestAccounts)
            sessionStorage.setItem('isConnectAccount', _this.isConnectAccount)
          })
      }
    },
  },
}
</script>
<style lang="less" scoped>
.header {
  padding-top: 20px;
  text-align: center;
  .header-nav {
    padding-top: 15px;
  }
  a {
    margin: 0 0.3em;
    color: inherit;
    font-weight: bold;
    &:global(.router-link-exact-active) {
      color: #42b983;
    }
  }
}
</style>
