<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
      <el-row>
                  <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="商品编号" prop="shangpinbianhao">
          <el-input v-model="ruleForm.shangpinbianhao" 
              placeholder="商品编号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shangpinbianhao" label="商品编号" prop="shangpinbianhao">
              <el-input v-model="ruleForm.shangpinbianhao" 
                placeholder="商品编号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="商品名称" prop="shangpinmingcheng">
          <el-input v-model="ruleForm.shangpinmingcheng" 
              placeholder="商品名称" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shangpinmingcheng" label="商品名称" prop="shangpinmingcheng">
              <el-input v-model="ruleForm.shangpinmingcheng" 
                placeholder="商品名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'"  label="水果类型" prop="shuiguoleixing">
          <el-select v-model="ruleForm.shuiguoleixing" placeholder="请选择水果类型">
            <el-option
                v-for="(item,index) in shuiguoleixingOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shuiguoleixing" label="水果类型" prop="shuiguoleixing">
              <el-input v-model="ruleForm.shuiguoleixing" 
                placeholder="水果类型" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="24">  
        <el-form-item v-if="type!='info'" label="图片" prop="tupian">
          <file-upload
          tip="点击上传图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.tupian?ruleForm.tupian:''"
          @change="tupianUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.tupian" label="图片" prop="tupian">
            <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.tupian.split(',')" :src="item" width="100" height="100">
          </el-form-item>
        </div>
      </el-col>
                                          <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="保质期" prop="baozhiqi">
          <el-input v-model="ruleForm.baozhiqi" 
              placeholder="保质期" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.baozhiqi" label="保质期" prop="baozhiqi">
              <el-input v-model="ruleForm.baozhiqi" 
                placeholder="保质期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="价格" prop="price">
          <el-input v-model="ruleForm.price" 
              placeholder="价格" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.price" label="价格" prop="price">
              <el-input v-model="ruleForm.price" 
                placeholder="价格" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="单限" prop="onelimittimes">
          <el-input v-model="ruleForm.onelimittimes" 
              placeholder="单限" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.onelimittimes" label="单限" prop="onelimittimes">
              <el-input v-model="ruleForm.onelimittimes" 
                placeholder="单限" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="库存" prop="alllimittimes">
          <el-input v-model="ruleForm.alllimittimes" 
              placeholder="库存" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.alllimittimes" label="库存" prop="alllimittimes">
              <el-input v-model="ruleForm.alllimittimes" 
                placeholder="库存" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        </el-row>
                                                                                                                                                                                                                    <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="详情" prop="xiangqing">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.xiangqing" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.xiangqing" label="详情" prop="xiangqing">
                    <span v-html="ruleForm.xiangqing"></span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
                                                                            <el-form-item>
                <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    
    
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
      id: '',
      type: '',
            ruleForm: {
                        shangpinbianhao: '',
                                shangpinmingcheng: '',
                                shuiguoleixing: '',
                                tupian: '',
                                xiangqing: '',
                                baozhiqi: '',
                                price: '',
                                onelimittimes: '',
                                alllimittimes: '',
                      },
                                                    shuiguoleixingOptions: [],
                                                                                                        rules: {
                  shangpinbianhao: [
                            { required: true, message: '商品编号不能为空', trigger: 'blur' },
                                                                                              ],
                  shangpinmingcheng: [
                            { required: true, message: '商品名称不能为空', trigger: 'blur' },
                                                                                              ],
                  shuiguoleixing: [
                                                                                              ],
                  tupian: [
                                                                                              ],
                  xiangqing: [
                                                                                              ],
                  baozhiqi: [
                                                                                              ],
                  price: [
                            { required: true, message: '价格不能为空', trigger: 'blur' },
                                                    { validator: validateNumber, trigger: 'blur' },
                                                                      ],
                  onelimittimes: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  alllimittimes: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                                                                  },
  methods: {
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
                    if(o=='shangpinbianhao'){
            this.ruleForm.shangpinbianhao = obj[o];
            continue;
          }
                    if(o=='shangpinmingcheng'){
            this.ruleForm.shangpinmingcheng = obj[o];
            continue;
          }
                    if(o=='shuiguoleixing'){
            this.ruleForm.shuiguoleixing = obj[o];
            continue;
          }
                    if(o=='tupian'){
            this.ruleForm.tupian = obj[o];
            continue;
          }
                    if(o=='xiangqing'){
            this.ruleForm.xiangqing = obj[o];
            continue;
          }
                    if(o=='baozhiqi'){
            this.ruleForm.baozhiqi = obj[o];
            continue;
          }
                    if(o=='price'){
            this.ruleForm.price = obj[o];
            continue;
          }
                    if(o=='onelimittimes'){
            this.ruleForm.onelimittimes = obj[o];
            continue;
          }
                    if(o=='alllimittimes'){
            this.ruleForm.alllimittimes = obj[o];
            continue;
          }
                  }
                                                                                                                                                              }
            // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
                                                                                                                                                                                                                        } else {
          this.$message.error(data.msg);
        }
      });
                                                                              this.$http({
              url: `option/leixingxinxi/shuiguoleixing`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.shuiguoleixingOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
                                                                                                                                        },
                                                                                // 多级联动参数
                                                                                                      info(id) {
      this.$http({
        url: `shangpinxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                  // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                                                                      this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `shangpinxinxi/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.shangpinxinxiCrossAddOrUpdateFlag = false;
                  this.parent.search();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.shangpinxinxiCrossAddOrUpdateFlag = false;
    },
                                                            tupianUploadChange(fileUrls) {
                this.ruleForm.tupian = fileUrls;
            },
                                                                          }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
</style>
