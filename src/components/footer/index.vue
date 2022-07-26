<template>
  <div class="footer">
    <!--v-if="hash!='/contactUs'"-->
    <div class="contact text-center">
      <div class="middle"><a>立即MINT</a></div>
    </div>
    <div class="bottom">
      ©2022 DOMETA
    </div>
  </div>
</template>

<script>
export default {
  name: 'Footer',
  props: {
    hash: String,
  },
  data() {
    return {
      isShow: true,
    }
  },
  methods: {},
}
</script>

<style lang="less">
.footer {
  background-color: #ffffff;
  width: 100%;
  box-sizing: border-box;
  text-align: center;
  height: 202px;
  .middle {
    width: 100%;
    margin: 0 auto;
  }
}
.contact {
  width: 100%;
  background: linear-gradient(to right, #dedede, #b4cad5, #dca1a1);
  height: 100px;
  line-height: 100px;
  a {
    display: inline-block;
    padding: 0 100px;
    height: 50px;
    line-height: 50px;
    border-radius: 50px;
    text-align: center;
    font-size: 22px;
    color: #ffffff;
    background: rgba(255, 255, 255, 0.2);
    text-decoration: none;
  }
  a:hover {
    background: rgba(245, 245, 245, 0.5);
  }
}
.bottom {
  background: #f7fbfd;
  text-align: center;
  color: #ababab;
  height: 72px;
  padding-top: 32px;
}
</style>
