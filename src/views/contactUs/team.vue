<template>
  <div class="team-page container">
    <div class="t-header">
      <h2>Team</h2>
      <div class="discrib">
        Every Holder Is Team Member <br />
        Here are the core contributer
      </div>
    </div>
    <div class="t-list">
      <el-row class="row-bg" :gutter="50">
        <el-col
          v-for="index in 30"
          :key="index"
          :lg="6"
          :sm="6"
          :md="8"
          :xs="12"
          class="m-mtb20"
        >
          <div class="team-item">
            <dl>
              <div class="figure">
                <img src="@/assets/nfts/dometa_nft0004.jpg" alt="" />
                <div class="member-avatar">
                  <img src="@/assets/avatar.jpg" alt="" />
                </div>
              </div>
              <div class="cnt">
                <dt class="member-name">
                  <span class="name">ETHEREALS WTF</span>
                  <span class="job">Developer</span>
                  <el-tag size="mini">标签</el-tag>
                </dt>
                <dd class="member-info">
                  ETHEREALS are 12,345 hand drawn, randomly generated,
                  interdimensional ghosts. Their traits are pulle...
                </dd>
              </div>
            </dl>
          </div>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Team',
  components: {},
  data() {
    return {
      activeIndex: 'game',
      activeColor: '#409EFF',
      currentView: '',
    }
  },
  created() {},
  methods: {
    handleSelect(key) {
      this.currentView = key
    },
    goToPage() {
      window.scrollTo(0, 0)
      const page = this.$route.query.page
      if (page) {
        this.currentView = page
        this.activeIndex = page
      } else {
        this.currentView = 'game'
      }
    },
  },
}
</script>

<style scoped lang="less">
.team-page {
  padding: 55px 0 95px;
  box-sizing: border-box;
}
.t-header {
  h2 {
    font-size: 40px;
    font-weight: 600;
    color: #a72a2b;
  }
  .discrib {
    padding: 0 0 20px 0;
    font-size: 30px;
    line-height: 1;
    font-weight: 100;
  }
}
.team-item {
  border: 1px solid #ddd;
  border-radius: 10px;
  overflow: hidden;
  .cnt {
    padding: 20px;
  }
  dl,
  dd {
    margin: 0;
    padding: 0;
  }
  .figure {
  }
  .member-avatar {
    position: relative;
    overflow: hidden;
    height: 42px;
    width: 42px;
    margin: -20px auto auto auto;
    background-color: #ddd;
    border: 4px solid #fff;
    border-radius: 50%;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
  }
  .member-info {
  }
  .member-name {
    padding: 10px 0;
    .name {
      font-weight: bold;
      font-size: 110%;
      letter-spacing: -1px;
      margin-right: 10px;
    }
    .job {
      margin-right: 10px;
      font-size: 80%;
    }
  }
  .figure {
    img {
      width: 100%;
    }
  }
}
</style>
