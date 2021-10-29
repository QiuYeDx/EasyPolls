# 「EasyPolls」
## 一个匿名的网页投票、问卷系统，旨在提供简单、高效且免费的问卷收集服务。
基于JSP+Tomcat+Mysql开发，已部署在我的服务器。
## 已包含的功能:
* 发表单选/多选问卷;
* 用户无需登录即可匿名投票;
* 用户可在线查看问卷结果(投票数+百分比);
* 用户可任意导出并下载问卷的结果Excel文件;
* 基于session的防刷票机制，用户在打开已投问卷后会重定向至结果页面，利用url刷票会重定向至提醒页面;
* ......
## 计划增加:
+ 增加问卷选项的最大数量;
+ 增加基于IP地址的防刷票机制;
+ 改进前端特效;
+ 区分问卷和问题，使一个问卷包含多个问题，改善数据结构;
+ ......

## Deemo: [EasyPolls](http://39.106.58.123:8080/easypolls)
![投票页面](https://github.com/QiuYeDx/EasyPolls/blob/master/WebRoot/src/poll.png)
![目录页面](https://github.com/QiuYeDx/EasyPolls/blob/master/WebRoot/src/menu.png)
![结果页面](https://github.com/QiuYeDx/EasyPolls/blob/master/WebRoot/src/result.png)
![新建页面](https://github.com/QiuYeDx/EasyPolls/blob/master/WebRoot/src/start.png)
