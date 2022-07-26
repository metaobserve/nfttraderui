<template>
  <div class="product-page container">
    <el-row :gutter="50">
      <el-col :span="4" class="m-el-menu">
        <div>
          <div class="menu-title">
            Filter
          </div>
          <el-form ref="form" :model="form">
            <el-collapse v-model="activeNames" @change="handleChange">
              <el-collapse-item name="1">
                <template slot="title">
                  <i class="header-icon el-icon-info"></i> Background
                </template>
                <div>
                  <el-form-item>
                    <div class="searchbar">
                      <el-input
                        placeholder="请输入内容"
                        prefix-icon="el-icon-search"
                        v-model="inp1"
                      />
                    </div>
                    <el-checkbox-group v-model="form.type1">
                      <div>
                        <el-checkbox label="Black" name="type"></el-checkbox>
                      </div>

                      <div>
                        <el-checkbox
                          label="Bright Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox label="Blue" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Blue Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Cloud Golden"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Mountain"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Purple"
                          name="type"
                        ></el-checkbox>
                      </div>
                    </el-checkbox-group>
                  </el-form-item>
                </div>
              </el-collapse-item>
              <el-collapse-item name="2">
                <template slot="title">
                  <i class="header-icon el-icon-info"></i> Body
                </template>
                <div>
                  <el-form-item>
                    <el-checkbox-group v-model="form.type2">
                      <div>
                        <el-checkbox label="Black" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Bright Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox label="Blue" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Blue Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Cloud Golden"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Mountain"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Purple"
                          name="type"
                        ></el-checkbox>
                      </div>
                    </el-checkbox-group>
                  </el-form-item>
                </div>
              </el-collapse-item>
              <el-collapse-item name="3">
                <template slot="title">
                  <i class="header-icon el-icon-info"></i> Clogthing
                </template>
                <div>
                  <el-form-item>
                    <el-checkbox-group v-model="form.type3">
                      <div>
                        <el-checkbox label="Black" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Bright Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox label="Blue" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Blue Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Cloud Golden"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Mountain"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Purple"
                          name="type"
                        ></el-checkbox>
                      </div>
                    </el-checkbox-group>
                  </el-form-item>
                </div>
              </el-collapse-item>
              <el-collapse-item name="4">
                <template slot="title">
                  <i class="header-icon el-icon-info"></i> Hat
                </template>
                <div>
                  <el-form-item>
                    <el-checkbox-group v-model="form.type4">
                      <div>
                        <el-checkbox label="Black" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Bright Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox label="Blue" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Blue Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Cloud Golden"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Mountain"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Purple"
                          name="type"
                        ></el-checkbox>
                      </div>
                    </el-checkbox-group>
                  </el-form-item>
                </div>
              </el-collapse-item>
              <el-collapse-item name="5">
                <template slot="title">
                  <i class="header-icon el-icon-info"></i> Weapon
                </template>
                <div>
                  <el-form-item>
                    <el-checkbox-group v-model="form.type5">
                      <div>
                        <el-checkbox label="Black" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Bright Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox label="Blue" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Blue Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Cloud Golden"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Mountain"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Purple"
                          name="type"
                        ></el-checkbox>
                      </div>
                    </el-checkbox-group>
                  </el-form-item>
                </div>
              </el-collapse-item>
              <el-collapse-item name="6">
                <template slot="title">
                  <i class="header-icon el-icon-info"></i> Ornaments
                </template>
                <div>
                  <el-form-item>
                    <el-checkbox-group v-model="form.type6">
                      <div>
                        <el-checkbox label="Black" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Bright Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox label="Blue" name="type"></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Blue Green"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Cloud Golden"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Mountain"
                          name="type"
                        ></el-checkbox>
                      </div>
                      <div>
                        <el-checkbox
                          label="Devil Purple"
                          name="type"
                        ></el-checkbox>
                      </div>
                    </el-checkbox-group>
                  </el-form-item>
                </div>
              </el-collapse-item>
            </el-collapse>
          </el-form>
        </div>
      </el-col>
      <el-col :span="20" class="m-el-page">
        <component :is="currentView"></component>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import nftlist from './nftlist'

export default {
  name: 'Product',
  components: {
    nftlist,
  },
  data() {
    return {
      activeIndex: 'payment',
      activeColor: '#409EFF',
      currentView: '',
      activeNames: ['1'],
      form: {
        name: '',
        region: '',
        date1: '',
        date2: '',
        delivery: false,
        inp1: '',
        type1: [],
        type2: [],
        type3: [],
        type4: [],
        type5: [],
        type6: [],
        resource: '',
        desc: '',
      },
    }
  },
  created() {
    this.goToPage()
  },
  methods: {
    handleChange(val) {
      val
    },
    handleSelect(key) {
      this.currentView = key
    },
    goToPage() {
      window.scrollTo(0, 0)
      const id = this.$route.query.id
      if (id) {
        this.currentView = id
        this.activeIndex = id
      } else {
        this.currentView = 'nftlist'
      }
    },
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="less">
.searchbar {
  margin-bottom: 15px;
}
/deep/ .el-collapse-item__header {
  font-size: 20px;
  color: #9b011b;
  font-weight: 600;
}
.menu-title {
  font-size: 60px;
  font-weight: 600;
  color: #a72a2b;
}
.product-page {
  padding: 55px 0 95px;
  box-sizing: border-box;
}

.side-nav .nav-item {
  font-size: 16px;
  line-height: 40px;
  height: 100%;
  margin: 0;
  padding: 0;
  text-decoration: none;
  display: block;
  position: relative;
  font-weight: 700;
}
@media (max-width: 768px) {
  .side-nav {
    padding: 0 20px 40px;
    .el-menu-item {
      border-right: 0;
    }
  }
}
</style>
