/**
 *
 */
export const connectToEthereumNetwork = function() {
  //   const promise = this.ethereum.request({ method: 'eth_requestAccounts' })
  //   // Present feedback
  //   // Don't believe just the css feedback, see the console.
  //   console.log('We got a promise here: ', promise)
  //   promise.then(res => {
  //     if (res.length === 0) return
  //     this.ethAccount = res[0]
  //   })
  //this.ethAccount = promise.
}

/**
 * 获取metamask钱包地址
 *
 */
export const getMetamaskAccount = function(func) {
  const promise = window.ethereum.request({ method: 'eth_requestAccounts' })
  //console.log('We got a promise here: ', promise)
  promise.then(res => {
    if (res.length === 0) {
      this.$alert('获取metamask钱包地址失败', 'error', {
        confirmButtonText: '确定',
        type: 'error',
      })
    }
    if (func) {
      func(res[0])
    }
  })
}
