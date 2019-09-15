# SWPUCTF 2016 Web blogsys

## 题目详情

- SWPUCTF_2016_Web_Web400
- blogsys我瞎起的名字

## 考点

- 代码审计
- SQL注入
- Hash扩展攻击

## 启动

    docker-compose up -d
    open http://127.0.0.1:5354/

## Writeups

> https://github.com/wonderkun/CTF_web/blob/master/web400-3(swpu_ctf)/README.md

## 题目说明
- Flag位于files/flag中，Docker中位于/flag。本题flag位于数据库，在index.php中有一段读/flag并写入数据库的代码。
- 部署时不需要给出源码，扫目录是本题考察点之一（逃。

## 版权
- 该题目复现环境尚未取得主办方及出题人相关授权，如果侵权，请联系本人删除（tiaonmmn@live.cn）
- 感谢 [wonderkun](https://github.com/wonderkun) 友情支持



