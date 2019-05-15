# -
zabbix监控进程数据
监控nginx ,redis,mysql三个进程消耗的内存总和*价格
ps aux|grep -E "nginx|redis|mysql"|grep -v "grep"|awk '{sum+=$6}; END{print sum*0.01}'
监控nginx,redis,mysql三个进程消耗cpu的内存总和*价格
ps aux|grep -E "mysql|redis|nginx"|grep -v "grep"|awk '{sum+=$3}; END{print sum*10*0.01}'



grep -v "" :反查询过滤掉含有某字符的进程
ps:显示正在运行的进程
aux:显示所有进程
grep:在当前搜索
grep -E "a|b|c"：搜索符合任意含a/b/c的数据

