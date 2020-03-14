# InfectStatisticWeb

| 这个作业属于哪个课程 | [2020春\|W班(福州大学)](https://edu.cnblogs.com/campus/fzu/2020SpringW) |
| :------------------- | :----------------------------------------------------------- |
| 作业链接             | [github地址](https://github.com/HongJieBin/InfectStatisticWeb) |
| 结对学号             | 221701123 & 221701139                                        |
| 项目介绍             | 实现疫情的可视化                                             |
| 作业正文             | https://www.cnblogs.com/cybersa/p/12493648.html              |
| 其他参考文献         | CSDN,bootstrap,jsp,爬虫...                                   |

项目界面

![image-20200314185830959](https://github.com/HongJieBin/InfectStatisticWeb/blob/dev/readme.assets/image-20200314185830959.png)

项目部署

软件版本为

jdk:1.8

tomcat:9

1.github上克隆到本地

``` bash
git clone https://github.com/HongJieBin/InfectStatisticWeb.git
```

2. 进入webContent目录
3. 输入命令打包

``` bash
cd InfectStatisticWeb
cd webContent
jar -cvf InfectStatisticWeb.war *
```

4. 将打包后的文件移入tomcat下载webapps文件夹
5. 启动tomcat服务器
6. 在地址栏输入

http://127.0.0.1:8080/InfectStatisticWeb/include/statistics.jsp即可访问到首页,如果有些资源没有加载出来,请稍等一会刷新

第二种方法

如果你使用eclipse那么按照以下方法

1.在导航栏找到file->import

![image-20200314174237223](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174237223.png)

2.点击Projects from git

3.点击clone URI,再点击下一步

![image-20200314174314593](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174314593.png)

4. 在URI输入https://github.com/HongJieBin/InfectStatisticWeb,并输入对应的账号密码

![image-20200314174330792](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174330792.png)

5. 选择对应的分支

   ![image-20200314174435707](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174435707.png)

6. 选择存储目录,初始化master分支

   ![image-20200314174514503](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174514503.png)

7. 选择Import using the New Project wizard

![image-20200314174605151](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174605151.png)

8. 选择java web项目,并填写相应信息
9. 找到项目目录,右击找到export->WAR file,输入文件名以及输入目录即可

![image-20200314174801603](https://raw.githubusercontent.com/HongJieBin/InfectStatisticWeb/dev/readme.assets/image-20200314174801603.png)

10. 打包完成后按照第一种方法的步骤往下即可