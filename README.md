## 介绍 
一个基于dart原生事件循环的异步socket通信工具，架构设计参考了java netty

## 主要实现
*   OriginVersionLengthFieldDecoder：基于字节流头长度的对流进行包化处理的解码器
*   IsolateClient：多线程启动客户端，负责管理多个channel
*   ChannelManager：对应一个socket，计划是设计成类似netty中的ChannelInitializer（即责任链流水线处理出入对象）
*   ByteBuf：对Uint8List（无符号字节列表）的封装，可用于按常用数据类型提取对应数量字节，并实现了读取与写入索引移动，但由于dart只支持遍历式copy不能直接内存映射，因而效率可能比较低

## 用途
原本想用于局域网内clipboard各个设备间的互通，后因flutter未对windows的clipboard进行适配，因而搁置（整个客户端和后端写到一半才发现源码里头clipboard api对windows的处理是TODO😅）

client文件夹为对TCP socket流的主要处理逻辑，在开发rcon-core之后一直觉得那里的流截取做得不好，这里也算是对字节流截取逻辑有了较大改进

现开源其代码，供大家鉴赏，使用样例可在test文件夹找到

