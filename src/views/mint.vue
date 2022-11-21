<template>
  <div class="container">
    <div class="contact text-center">
      <div class="middle">
        <p>
          <el-input-number
            v-model="mintNum"
            :min="1"
            :max="5"
            size="mini"
            @change="handleChange"
          ></el-input-number
          ><span class="address"> {{ totalAmount }} eth</span>
        </p>
        <a @click="handleMint()">Public MINT</a>
        <p class="address">
          <span>{{ requestAccounts }}</span>
        </p>
      </div>
    </div>
  </div>
</template>
<!-- 
<template>
  <div id="app">
    <web3-modal-vue
      ref="web3modal"
      :theme="theme"
      :provider-options="providerOptions"
      cache-provider
    />
  </div>
</template> -->
<!-- <script>
import Web3ModalVue from 'web3modal-vue'
import WalletConnectProvider from '@walletconnect/web3-provider'
import { web3Modal } from './config/mixins'

export default {
  components: {
    Web3ModalVue,
  },
  mixins: [web3Modal],
  data() {
    return {
      theme: 'light',
      providerOptions: {
        walletconnect: {
          package: WalletConnectProvider,
          options: {
            infuraId: '-',
          },
        },
      },
      number: 0,
      balance: 0,
    }
  },
  created() {
    if (
      window.matchMedia &&
      window.matchMedia('(prefers-color-scheme: dark)').matches
    ) {
      this.theme = 'dark'
    }
  },
  mounted() {
    this.$nextTick(async () => {
      const web3modal = this.$refs.web3modal
      this.$store.commit('setWeb3Modal', web3modal)
      if (web3modal.cachedProvider) {
        await this.$store.dispatch('connect')
        this.subscribeMewBlockHeaders()
      }
    })
  },
  methods: {
    connect() {
      this.$store.dispatch('connect')
    },
  },
}
</script> -->

<script>
import { ethers, BigNumber } from 'ethers'
import constants from './../scripts/json/contracts.json'
export default {
  name: 'Mint',
  components: {},
  data() {
    return {
      activeIndex: '',
      activeColor: '#409EFF',
      currentView: '',
      wlAccounts: '',
      requestAccounts: '',
      mintNum: 1,
      totalAmount: 0.001,
    }
  },
  created() {
    //this.goToPage()
    //this.connectAccount()
  },
  methods: {
    handleChange(value) {
      this.totalAmount = 0.001 * this.mintNum
    },
    connectAccount(func) {
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
            func()
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
    setWl() {
      if (window.ethereum) {
        const provider = new ethers.providers.Web3Provider(window.ethereum)
        const signer = provider.getSigner()
        const contract = new ethers.Contract(
          constants.constantsAddress, // 合约地址
          constants.abi,
          signer,
        )
        try {
          const response = contract.setWhiteLists(this.wlAccounts, true, {})
          response.then(res => {})
          //console.log('response', response)
        } catch (err) {
          this.$alert('获取metamask钱包地址失败', 'error', {
            confirmButtonText: '确定',
            type: 'error',
          })
          //console.log('error', err)
        }
      }
    },
    handleMint() {
      if (!sessionStorage.getItem('accountAddress')) {
        alert('请连接钱包')
        return
      }
      if (window.ethereum) {
        const _this = this
        this.connectAccount(() => {
          const provider = new ethers.providers.Web3Provider(window.ethereum)
          const signer = provider.getSigner()
          const contract = new ethers.Contract(
            constants.contractAddress, // 合约地址
            constants.abi,
            signer,
          )
          try {
            const response = contract.publicMint(
              BigNumber.from(_this.mintNum),
              {
                value: ethers.utils.parseEther(
                  (0.001 * _this.mintNum).toString(),
                ),
              },
            )
            response
              .then(res => {})
              .catch(error => {
                if (error != null) {
                  //alert(error.message)
                  _this.$message.error(error.message)
                }
              })

            // const response = contract.mint(BigNumber.from(0.0001), {
            //   value: ethers.utils.parseEther((0.02 * 0.0001).toString()),
            // })
            console.log('response', response)
          } catch (err) {
            console.log('error', err)
          }
        })
      }
    },
  },
}
</script>

<style lang="less" scoped>
.text-center {
  padding-top: 10%;
  vertical-align: middle;
  text-align: center;
}
.address {
  color: rgb(148, 141, 141);
  font-size: 8px;
}
.contact {
  width: 100%;
  height: calc(100vh - 295px);
  background: linear-gradient(to right, #dedede, #b4cad5, #dca1a1);
  line-height: 24px;
  a {
    display: inline-block;
    padding: 0 100px;
    height: 50px;

    border-radius: 50px;
    background: rgba(255, 255, 255, 0.2);
    color: #ffffff;
    text-align: center;
    text-decoration: none;
    font-size: 22px;
    cursor: pointer;
  }

  a:hover {
    background: rgba(245, 245, 245, 0.5);
  }
}
</style>
