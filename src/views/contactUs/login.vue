<template>
  <div>
    <div class="login container">
      <div class="loginbox">
        <div class="l-iner">
          <h2 class="title">Login</h2>
          <el-form
            :label-position="labelPosition"
            label-width="0px"
            model="top"
          >
            <el-form-item>
              <div>
                <el-button type="info" round>
                  Fast login with other account
                </el-button>
              </div>
            </el-form-item>
            <el-form-item>
              <el-input
                class="loginput"
                placeholder="input your Phone、Mail or UserName "
                v-model="formLabel.name"
              ></el-input>
            </el-form-item>
            <el-form-item>
              <div>
                <el-button type="danger" round>Login Now</el-button>
              </div>
            </el-form-item>
            <el-form-item>
              <div>
                <el-button round>Forgot PassWrod？</el-button>
              </div>
            </el-form-item>
            <el-form-item>
              <div>
                <el-button type="text" round>
                  No Account ? Regist now</el-button
                >
              </div>
            </el-form-item>
          </el-form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Login',
  data() {
    return {
      formLabel: {
        name: '',
        region: '',
        type: '',
      },
    }
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
