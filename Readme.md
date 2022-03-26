> 前言：2022年3月25日，我的typora使用gitee作为图床的图片无法正常显示，因此进行了把gitee中的图片迁移到github的工作。(github访问慢的问题可以解决)

开源地址：

https://github.com/wqcblog/giteetohub

## 使用工具

**github访问工具：**

https://github.com/dotnetcore/FastGithub

- 通过域名的纯净ip解析，实现图片的正常显示

  (如果要实现github高速访问，自行寻找魔法，这里只加载raw图片，完全够用)

- 内嵌至windows服务中，不需要额外启动软件(开启一次理论永久)
- 不违法，而是选择最快的适合github的ip

**批量替换脚本：**

操作原理：

https://gitee.com/用户名/仓库名/raw替换为https://raw.githubusercontent.com/用户名/仓库名

## 操作过程

### Fastgithub

解压该压缩包至某目录

cmd命令执行下面命令：(或双击压缩包内的Start.bat也可以)

- `fastgithub.exe start` // 以windows服务安装并启动
- `fastgithub.exe stop` // 以windows服务卸载并删除

这时在windows服务进程中可以看到fastgithub的自动进程。(理论永久运行)

**扩展：**

FastGithub.UI.exe打开可以可视化显示github的实时流量。

### 迁移gitee库至github库

保持图床存储仓库的目录结构相同，记住用户名/仓库名准备使用(可以不同)

这个我没法展开细讲，因为操作太基础了，请见谅。

### 运行替换脚本

双击运行mdsub.exe，输入markdown文件根目录，用户名/仓库名，回车即可。

## 注意事项

- typora图片中图像设置 操作前请选择不进行操作，等操作完了再去改成上传操作，避免中途操作打开typora引起的不必要麻烦
- picgo设置在操作后自行更改为github图床（操作简单，应该没问题）

## 补充说明

批量替换脚本中有两个小彩蛋

一个是反馈实时最佳ip的功能(一般用不上 ，有上面那个实时服务进程就OK了)

一个是github markdown文件中raw图片cdn加速功能(可加速和还原)(本质也是换一个文本前缀)