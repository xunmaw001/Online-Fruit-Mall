<template>
  <el-aside class="index-aside" width="200px">
    <div class="index-aside-inner">
      <div v-for="item in menuList" v-bind:key="item.roleName">
        <el-menu
          background-color="#FFFFFF"
          text-color="#3e4b5b"
          active-text-color="#9a55ff"
          default-active="0"
          v-if="role==item.roleName"
        >
          <el-menu-item @click="menuHandler('home')" index="0">首页</el-menu-item>
          <el-submenu :index="1+''">
            <template slot="title">
              <span>个人中心</span>
            </template>
            <el-menu-item @click="menuHandler('updatePassword')" :index="1-1">修改密码</el-menu-item>
            <el-menu-item @click="menuHandler('center')" :index="1-2">个人信息</el-menu-item>
          </el-submenu>
          <el-submenu
            v-for=" (menu,index) in item.backMenu"
            v-bind:key="menu.menu"
            :index="index+2+''"
          >
            <template slot="title">
              <span>{{menu.menu}}</span>
            </template>
            <el-menu-item
              v-for=" (child,sort) in menu.child"
              v-bind:key="sort"
              @click="menuHandler(child.tableName)"
              :index="(index+2)+'-'+sort"
            >
              <img
                src="../../assets/img/jiantou.png"
                style="width:15px;height:15px;margin-right:10px;"
                alt
              />
              {{child.menu}}
            </el-menu-item>
          </el-submenu>
        </el-menu>
      </div>
      <el-button style="margin:20px;width:150px" type="primary" @click="onLogout">退出</el-button>
    </div>
  </el-aside>
</template>
<script>
import menu from "@/utils/menu";
export default {
  data() {
    return {
      menuList: [],
      dynamicMenuRoutes: [],
      role: ""
    };
  },
  mounted() {
    let menus = menu.list();
    this.menuList = menus;
    this.role = this.$storage.get("role");
  },
  methods: {
    menuHandler(name) {
      this.$router.push({ name: name });
    },
    onLogout() {
      this.$storage.remove("Token");
      this.$router.replace({ name: "login" });
    }
  }
};
</script>
<style lang="scss" scoped>
.index-aside {
  margin-top: 70px;
  overflow: hidden;
  background: #ffffff;
  .index-aside-inner {
    width: 217px;
    height: 100%;
    overflow-y: scroll;
  }
}
.el-menu {
  border-right: solid 1px #ffffff;
}
</style>

