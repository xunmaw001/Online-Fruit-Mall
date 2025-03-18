const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm0rhr3/",
            name: "ssm0rhr3",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm0rhr3/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "在线水果商城"
        } 
    }
}
export default base