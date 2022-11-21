<template>
  <div class="footer">
    <!--v-if="hash!='/contactUs'"-->
    <!-- <div class="contact text-center">
      <div class="middle"><a>立即MINT</a></div>
    </div> -->
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
  box-sizing: border-box;
  width: 100%;
  height: 202px;
  background-color: #ffffff;
  text-align: center;
  .middle {
    margin: 0 auto;
    width: 100%;
  }
}
.contact {
  width: 100%;
  height: 100px;
  background: linear-gradient(to right, #dedede, #b4cad5, #dca1a1);
  line-height: 100px;
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
    line-height: 50px;
  }
  a:hover {
    background: rgba(245, 245, 245, 0.5);
  }
}
.bottom {
  padding-top: 32px;
  height: 72px;
  background: #f7fbfd;
  color: #ababab;
  text-align: center;
}
</style>
