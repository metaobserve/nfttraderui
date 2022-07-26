<template>
  <div class="nfts-content">
    <div class="part-title">
      <el-row>
        <el-col :span="12"
          ><div class="grid-content bg-purple">
            <div class="ltitle">DOMETA NFTs</div>
          </div></el-col
        >
        <el-col :span="12"
          ><div class="grid-content bg-purple-light">
            <div class="searchbar">
              <el-input
                placeholder="请输入内容"
                prefix-icon="el-icon-search"
                v-model="inp1"
              />
            </div></div
        ></el-col>
      </el-row>
    </div>
    <div>
      <el-row class="row-bg" gutter="20">
        <el-col
          v-for="index in 30"
          :key="index"
          :sm="6"
          :xs="12"
          class="m-mtb20"
        >
          <div class="nftitems">
            <div class="iner">
              <div class="nft-creater">
                <span class="avatar">
                  <img src="@/assets/avatar.jpg" alt=""
                /></span>
                <span class="tname">DaoNFT</span>
                <el-tag size="mini">标签</el-tag>
              </div>
              <div
                class="nft-figure"
                style="background-image:url('@/assets/nfts/dometa_nft0001.jpg')"
              >
                <img src="@/assets/nfts/dometa_nft0001.jpg" style="" />
              </div>
              <div class="nft-marker">Manneko #002</div>
              <div class="nft-flag">
                $ <span class="price">0.018ETH</span> <span>12/22</span>
              </div>
              <div class="nft-btn">
                <el-button size="mini"> buy now </el-button>
              </div>
            </div>
          </div>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value2: 0,
    }
  },
}
</script>

<style lang="less" scoped>
.nftitems {
  border: 1px solid rgba(173, 173, 173, 0.486);
  border-radius: 10px;
  .iner {
    padding: 20px;
    .nft-creater {
      padding: 0 0 15px 0;
      .tname {
        vertical-align: middle;
        font-weight: 600;
        margin: 0 5px;
      }
      .avatar {
        display: inline-block;
        vertical-align: middle;
        border-radius: 20px;
        overflow: hidden;
        img {
          height: 30px;
          width: 30px;
        }
      }
    }
    .nft-figure {
      border-radius: 6px;
      overflow: hidden;
      box-shadow: 1px 1px 8px rgba(0, 0, 0, 0.3);
      margin-bottom: 10px;
      img {
        width: 100%;
      }
    }
    .nft-marker {
      padding: 8px 0 0 0;
      font-weight: 600;
      font-size: 17px;
    }
    .nft-flag {
      padding: 8px 0 0 0;
      .price {
        font-weight: bold;
      }
    }
    .nft-btn {
      padding: 10px 0 0 0;
    }
  }
  .nft-creater {
  }
  figure > img {
  }
  .nft-marker {
  }
  .nft-flag {
  }
  .nft-btn {
  }
}
.nfts-content {
  margin-left: -1px;
  .part-title {
    border-bottom: 0.5px solid #ddd;
    margin-bottom: 20px;
  }
  .searchbar {
    margin: auto 0 auto auto;
    width: 70%;
  }
  .ltitle {
    height: 60px;
    font-size: 20px;
    line-height: 55px;
    color: #a72a2b;
  }
  .background {
    margin-bottom: 64px;
    h4 {
      margin: 32px 0 16px 0;
    }
  }
  .trait {
    h3 {
      margin: 20px 0 40px 0;
      font-size: 22px;
    }
    ul {
      .trait-tit {
        list-style: disc;
        margin-left: 15px;
        color: #414d5a;
      }
      .pay {
        margin: 30px 0 62px 0;
        line-height: 39px;
        span {
          margin-left: 5px;
        }
      }
      .box-card {
        img {
          margin-left: 20px;
        }
        span {
          display: inline-block;
          width: 84px;
          font-size: 22px;
          margin-left: 25px;
          vertical-align: middle;
        }
      }
      @media (max-width: 768px) {
        .box-card {
          img {
            margin-left: 10px;
          }
        }
      }
    }
  }
}
</style>
