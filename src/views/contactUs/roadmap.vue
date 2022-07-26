<template>
  <div>
    <div class="roadmap container">
      <div class="roadline">
        <div class="start"></div>
        <div class="rline-item left step1">
          2022.7<br />
          社区建立，核心成员集合
        </div>
        <div class="rline-item right step2">
          2022.08<br />
          第一批NFT设计
        </div>
        <div class="rline-item left step3">
          2022.09<br />
          网站上线，第一批Mint
        </div>
        <div class="rline-item right step4">
          2022.10<br />
          联系第一批民间艺术家
        </div>
        <div class="rline-item left step5">
          2022.11<br />
          社区汇演活动
        </div>
        <div class="rline-item right step6">
          2022.12<br />
          完成第一个挖掘保护项目
        </div>
        <div class="end"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Roadmap',
}
</script>

<style scoped lang="less">
.roadmap {
  background: url('~@/assets/page-bg2.jpg') no-repeat right center;
  background-size: 100% auto;
  padding: 50px;
}
.roadline {
  width: 1px;
  background-color: #ccc;
  margin: 0 auto;
  position: relative;
  font-size: 36px;
  .rline-item {
    width: 400px;

    margin-bottom: 30px;
    margin-left: -70px;
    background-color: #fff;
    height: 130px;
    &.left {
      margin-left: -520px;
      text-align: right;
      color: #03406e;
      padding: 10px 160px 10px 30px;

      right: 0;
    }
    &.right {
      color: #a72a2b;
      padding: 10px 30px 10px 160px;
    }

    &.step1 {
      background: url('~@/assets/roadmap1.png') no-repeat right center;
    }
    &.step2 {
      background: url('~@/assets/roadmap2.png') no-repeat left center;
    }
    &.step3 {
      background: url('~@/assets/roadmap3.png') no-repeat right center;
    }
    &.step4 {
      background: url('~@/assets/roadmap4.png') no-repeat left center;
    }
    &.step5 {
      background: url('~@/assets/roadmap5.png') no-repeat right center;
    }
    &.step6 {
      background: url('~@/assets/roadmap6.png') no-repeat left center;
    }
  }
  .start {
    width: 60px;
    height: 60px;
    margin-bottom: 50px;
    margin-left: -30px;
    border-radius: 20px;
    overflow: hidden;
    background-color: rgba(0, 0, 0, 0.1);
    background: url('~@/assets/logo-png.png') no-repeat right center;
    background-size: 100% auto;
  }

  .end {
    width: 30px;
    height: 30px;
    border-radius: 50%;
    border: 4px solid #ccc;
    background-color: #fff;
    margin-left: -19px;
    font-size: 15px;
    text-align: center;
  }
}
</style>
