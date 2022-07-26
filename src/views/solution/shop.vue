<template>
  <div class="shop-page container">
    <div class="iner">
      <div class="part-title">
        Shop
      </div>
      <div class="product">
        <el-row :gutter="50">
          <el-col :span="8">
            <div class="nft-prod-img">
              <img src="@/assets/nfts/dometa_nft0001.jpg" alt="" />
            </div>
          </el-col>
          <el-col :span="16">
            <div class="nft-product">
              <div class="np-iner">
                <h2 class="np-title">Folk culture God of wealth</h2>

                <div class="nft-pro-about">
                  <el-row>
                    <el-col :span="12">
                      <div class="nft-ext">
                        <div class="signflag">
                          <svg-icon class="svg-icon" :icon="`bitcoin`" />
                        </div>
                        <div class="nft-price">0.025ETH</div>
                        <div class="des">Rare species</div>
                      </div>
                    </el-col>
                    <el-col :span="12">
                      <div class="nft-ext">
                        <div class="signflag avatar">
                          <img src="@/assets/avatar.jpg" />
                        </div>
                        <div class="nft-creater">Royal Guards series</div>
                        <div class="des">10 in the stock</div>
                      </div>
                    </el-col>
                  </el-row>
                </div>
                <div class="nft-pro-info">
                  'God of Wealth' is the mythological figure worshipped in the
                  Chinese folk religion and Taoism. He has been identified with
                  many historical figures, viewed as his embodied forms, among
                  whom Zhao Gongming, Fan Li, and Bi Gan.
                </div>
                <div class="nft-btn-line">
                  <el-row>
                    <el-col :span="12">
                      <el-button icon="el-icon-arrow-left" circle></el-button>
                      1 of 8
                      <el-button icon="el-icon-arrow-right" circle></el-button>
                    </el-col>
                    <el-col :span="12">
                      <el-button type="danger" class="trade-btn">
                        Getit Now
                      </el-button>
                    </el-col>
                  </el-row>
                </div>
              </div>
            </div></el-col
          >
        </el-row>
      </div>

      <div class="part-title">Other More</div>
      <div>
        <el-row>
          <el-col :span="16">
            <div>
              <el-row gutter="20px">
                <el-col v-for="index in 6" :key="index" :span="12">
                  <div class="o-m-item">
                    <div class="o-figure">
                      <img src="@/assets/nfts/dometa_nft0001.jpg" alt="" />
                    </div>
                    <div class="o-info">
                      <div class="o-name">CryptoFunks</div>
                      <div class="o-creater">
                        <span class="oi-figure"><img src="" alt=""/></span>
                        Butterleer <span>1 of 8</span>
                      </div>
                    </div>
                    <div>
                      Chinese folk religion and Taoism. He has been identified
                      ...
                    </div>
                    <div>
                      <el-button size="mini" type="line" class="trade-btn">
                        Getit Now
                      </el-button>
                    </div>
                  </div>
                </el-col>
              </el-row>
            </div>
          </el-col>
          <el-col :span="8">
            <div class="livelist">
              <dl>
                <dt>
                  Top Collections over
                  <div>Last 7 days</div>
                </dt>
                <dd>
                  <ul>
                    <li v-for="k in 5" :key="k">
                      <div class="ll-item">
                        <div class="ll-o">{{ k }}</div>
                        <div class="ll-f"></div>
                        <div class="ll-u">
                          <div class="ll-n">DryptoFunks</div>
                          <div class="ll-m">$ 19769.39</div>
                        </div>
                        <div class="ll-p">+26.52%</div>
                      </div>
                    </li>
                  </ul>
                </dd>
              </dl>
            </div>
          </el-col>
        </el-row>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Shop',
  components: {},
  data() {
    return {
      activeIndex: '',
      activeColor: '#409EFF',
      currentView: '',
    }
  },
  created() {
    this.goToPage()
  },
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
        this.currentView = 'shop'
      }
    },
  },
}
</script>

<style lang="less" scoped>
.shop-page {
  padding: 55px 0 95px;
  box-sizing: border-box;
  // background: url(../../../../static/image/page-bg.jpg);
}
.signflag {
  font-size: 40px;
  text-align: center;
  line-height: 50px;
  color: #f27c05;
}
.nft-prod-img {
  width: 80%;
  margin: auto;
  overflow: hidden;
  border-radius: 10px;
  img {
    width: 100%;
  }
}

.part-title {
  font-size: 40px;
  font-weight: 600;
  color: #a72a2b;
  height: 60px;
  padding: 20px 0;
  line-height: 60px;
}
.product {
  margin-bottom: 50px;
}
.nft-product {
  .np-iner {
  }
  .np-title {
    font-size: 24px;
    font-weight: 600;
    color: #a72a2b;
  }
  .nft-ext {
    padding: 10px 0 30px 0;
    .signflag {
      float: left;
      width: 50px;
      height: 50px;
      // background-color: rgba(221, 221, 221, 0.366);
      border-radius: 50%;
      margin-right: 15px;
      &.avatar {
        border: 1px solid #ddd;
        overflow: hidden;
        img {
          width: 100%;
        }
      }
    }
    .nft-creater {
      font-size: 20px;
      font-weight: 600;
    }
    .nft-price {
      font-size: 20px;
      font-weight: 600;
      color: #f27c05;
    }
    .nft-creater {
    }
  }
  .nft-pro-info {
    font-size: 20px;
    padding: 10px 0 40px 0;
  }
  .nft-btn-line {
    font-size: 20px;
    .trade-btn {
      width: 70%;
    }
  }
}
.o-m-item {
  padding: 15px;

  .o-figure {
    width: 145px;
    height: 145px;
    border-radius: 8px;
    margin-right: 20px;
    float: left;
    overflow: hidden;
    background-color: rgba(0, 0, 0, 0.3);
    img {
      width: 100%;
    }
  }
  .o-info {
  }
  .o-creater {
    display: flex;
  }
  .oi-figure {
    display: block;
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: rgba(0, 0, 0, 0.1);
    overflow: hidden;
    margin-right: 20px;
  }
  .o-name {
    font-size: 18px;
    font-weight: 600;
  }
  .o-name {
  }
}
.livelist {
  dl {
  }
  dt {
    font-size: 40px;
    font-weight: 600;
    color: #a72a2b;
    div {
      font-size: 20px;
      font-weight: normal;
    }
  }
  dd {
  }
  ul {
  }
  li {
    padding: 20px 0;
  }
}
.ll-item {
  display: flex;
  font-size: 20px;

  .ll-o {
    font-size: 22px;
    padding: 10px;
  }
  .ll-u {
    padding: 0 20px;
  }
  .ll-f {
    width: 50px;
    height: 50px;
    background-color: rgba(0, 0, 0, 0.1);
    border-radius: 50%;
  }
  .ll-u {
    .ll-n {
      font-weight: 600;
    }
    .ll-m {
      font-size: 16px;
    }
  }
  .ll-p {
    font-size: 24px;
    font-weight: 600;
    color: #a72a2b;
  }
}
</style>
