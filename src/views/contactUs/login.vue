<template>
  <div>
    <div class="login container">
      <div class="loginbox">
        <div class="l-iner">
          <el-form label-width="0px">
            <el-form-item style=" text-align:center; ">
              <h2 class="title">connect wallet</h2>
            </el-form-item>
            <el-form-item>
              <div>
                <el-button round @click="connectToEthereumNetwork()">
                  <img
                    title="Metamask"
                    src="https://www.element.market/build/metamask-68578df0.svg"
                    alt="Metamask"
                  />
                </el-button>
                <span style="font-family: monospace;">{{ ethAccount }}</span>
              </div>
            </el-form-item>

            <el-form-item>
              <div>
                <el-button round @click="signData()">
                  <img
                    title="Metamask"
                    src="https://www.element.market/build/metamask-68578df0.svg"
                    alt="Metamask"
                  />
                </el-button>
                <span style="font-family: monospace;">{{ ethAccount }}</span>
              </div>
            </el-form-item>
          </el-form>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
const sigUtil = require('eth-sig-util')
import axios from 'axios'
import { getMetamaskAccount } from '@/scripts/metamask'
export default {
  name: 'Login',
  data() {
    return {
      ethereum: null,
      ethAccount: '',
    }
  },
  mounted() {
    this.ethereum = window.ethereum
  },
  methods: {
    connectToEthereumNetwork() {
      // const promise = this.ethereum.request({ method: 'eth_requestAccounts' })
      // // Present feedback
      // // Don't believe just the css feedback, see the console.
      // console.log('We got a promise here: ', promise)
      // promise.then(res => {
      //   if (res.length === 0) return
      //   this.ethAccount = res[0]
      // })
      // //this.ethAccount = promise.
      let token
      axios.get('/wallet/token').then(
        response => {
          debugger
          token = response.data.Token
          getMetamaskAccount(account => {
            this.ethAccount = account
            axios
              .post('/wallet/login', {
                token: token,
                address: account,
              })
              .then(
                response => {
                  debugger
                  console.log(response.data)
                },
                response => {
                  debugger
                  console.log('error')
                },
              )
          })
        },
        response => {
          console.log('error')
        },
      )
    },
    signData() {
      const msgParams = [
        {
          type: 'string', // Any valid solidity type
          name: 'Message', // Any string label you want
          value: 'Hi, Alice!', // The value to sign
        },
        {
          type: 'uint32',
          name: 'A number',
          value: '1337',
        },
      ]
      const from = this.ethAccount
      const params = [msgParams, from]
      const method = 'eth_signTypedData'
      window.web3.currentProvider.sendAsync(
        {
          method,
          params,
          from,
        },
        function(err, result) {
          if (err) return console.error(err)
          if (result.error) {
            return console.error(result.error.message)
          }
          debugger
          const recovered = sigUtil.recoverTypedSignature({
            data: msgParams,
            sig: result.result,
          })
          if (recovered === from) {
            alert('Recovered signer: ' + from)
          } else {
            alert('Failed to verify signer, got: ' + result)
          }
        },
      )
    },
  },
}
</script>

<style scoped lang="less">
.login {
  padding: 120px 20px 20px 20px;
  min-height: 700px;
  background: url('~@/assets/page-bg2.jpg') no-repeat right center;
}
.l-iner {
  margin: auto;
  width: 80%;
}
.el-button {
  width: 100%;
}
/deep/.loginput .el-input__inner {
  padding: 20px 20px;
  font-size: 18px;
}
.loginbox {
  margin: auto;
  padding: 30px;
  width: 500px;
  border: 1px solid #ddd;
  border-radius: 10px;
  background-color: #fff;
  box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
  h2.title {
    color: #a72a2b;
    font-weight: 600;
    font-size: 40px;
  }
}
</style>
