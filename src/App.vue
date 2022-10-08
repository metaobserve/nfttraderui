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
              <el-menu-item index="/team">TEAM</el-menu-item>
              <el-menu-item index="/shop">SHOP</el-menu-item>
              <el-menu-item index="/ROADMAP">ROADMAP</el-menu-item>
              <el-menu-item index="/LOGIN">LOGIN</el-menu-item>
              <el-menu-item index="/connent">connent</el-menu-item>
              <el-menu-item>MINT</el-menu-item>
            </el-menu>
          </el-col>
          <el-col :span="6">
            <div class="header-nav text-right">
              <el-button icon="el-icon-s-promotion" circle> </el-button>
              <el-button icon="el-icon-s-goods" circle> </el-button>
              <el-button icon="el-icon-star-on" circle> </el-button>
              <el-button type="danger" icon="el-icon-user-solid" circle>
              </el-button>
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
    }
  },
  watch: {
    $route: 'getPath',
  },
  created() {
    this.activeIndex = this.$route.path
  },

  methods: {
    handleSelect() {},
    mobileNav() {},
    getPath() {
      this.activeIndex = this.$route.path
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
