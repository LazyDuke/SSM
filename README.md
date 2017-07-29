# SSM
主要由Spring + Spring MVC + Mybatis 构建的简易微博，使用Maven管理项目。
## 技术栈
* 前端页面：Bootstrap
* 后端框架：SpringMVC, Spring, Mybatis（暂时）
# 前言
　　学习SSM框架，先建一个小型的项目，一步步完善，后续根据功能的扩大，可能会加入druid,shiro等一些框架，既能学习，又能完善项目。
  打算在博客记录这个项目的整个学习过程。
  ## 博客地址：
  * Coding: http://lanchengtie.coding.me/
  * Github: https://lazyduke.github.io/
# 目录结构：
<pre>
├─  README.md                          # 项目说明
├─  pom.xml                            # Maven管理的配置文件
│
└─src/main                             # 开发目录
       ├─java/com/microblog               # Java源代码
       │        ├─controller              # 控制层
       │        ├─dao                     # Dao层
       │        ├─domain                  # 实体层
       │        └─mapper                  # mybatis映射sql层
       │
       ├─resources                     # 项目所需资源
       │     ├─spring                     # spring的三层配置文件
       │     ├─.gitignore                 # git的忽略文件
       │     ├─dp.properties_sample       # 连接数据库的静态数据模板
       │     ├─microblog.sql              # 项目所需数据库的可执行sql文件
       │     └─mybatis-spring.xml         # mybatis配置文件
       │
       └─webapp                        # 前端页面以及所需的资源
            ├─WEB-INF                     # 配置文件夹，存了前端页面所需的静态资源和
            │    ├─resources                 # 前端页面所需的静态资源
            │    └─web.xml                   # 配置文件
            │
            └─pages                       # 前端页面文件夹
</pre>     
