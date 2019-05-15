#!/bin/bash
allmemsum(){
ps aux|grep -E "nginx|redis|mysql"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum*0.01}'
}
allcpusum(){
ps aux|grep -E "mysql|redis|nginx"|grep -v "grep"|awk '{sum+=$3}; END{print sum*10*0.01}'
}
nginxmem(){
ps aux|grep "nginx"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum}'
}
nginxcpu(){
    ps aux|grep "nginx"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum/8}'
}

nginxmempri(){
ps aux|grep "nginx"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum*0.01}'
}
nginxcpupri(){
    ps aux|grep "nginx"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum*10*0.01}'
}
nginxnum(){
    ps aux|grep "nginx"|grep -v "grep"|grep -v "processstatus.sh"| wc -l
}


redismem(){
    ps aux|grep "redis"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum}'
}
rediscpu(){
    ps aux|grep "redis"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum/8}'
}
redismempri(){
    ps aux|grep "redis"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum*0.01}'
}
rediscpupri(){
    ps aux|grep "redis"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum*10*0.01}'
}
redisnum(){
    ps aux|grep "redis"|grep -v "grep"|grep -v "processstatus.sh"| wc -l
}



mysqlmem(){
    ps aux|grep "mysql"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum}'
}
mysqlcpu(){
    ps aux|grep "mysql"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum/8}'
}
mysqlmempri(){
    ps aux|grep "mysql"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum*0.01}'
}
mysqlcpupri(){
    ps aux|grep "mysql"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum*10*0.01}'
}
mysqlnum(){
    ps aux|grep "mysql"|grep -v "grep"|grep -v "processstatus.sh"| wc -l
}



kafkamem(){
    ps aux|grep "kafka"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum}'
}
kafkacpu(){
    ps aux|grep "kafka"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum/8}'
}
kafkamempri(){
    ps aux|grep "kafka"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$6}; END{print sum*0.01}'
}
kafkacpupri(){
    ps aux|grep "kafka"|grep -v "grep"|grep -v "processstatus.sh"|awk '{sum+=$3}; END{print sum*10*0.01}'
}

kafkanum(){
    ps aux|grep "kafka"|grep -v "grep"|grep -v "processstatus.sh"| wc -l
}


 
case "$1" in
allmemsum)
allmemsum
;;
allcpusum)
allcpusum
;;
nginxmem)
nginxmem
;;
nginxcpu)
nginxcpu
;;
nginxmempri)
nginxmempri
;;
nginxcpupri)
nginxcpupri
;;
nginxnum)
nginxnum
;;
redismem)
redismem
;;
rediscpu)
rediscpu
;;
redismempri)
redismempri
;;
rediscpupri)
rediscpupri
;;
redisnum)
redisnum
;;
mysqlmem)
mysqlmem
;;
mysqlcpu)
mysqlcpu
;;
mysqlmempri)
mysqlmempri
;;
mysqlcpupri)
mysqlcpupri
;;
mysqlnum)
mysqlnum
;;
kafkamem)
kafkamem
;;
kafkacpu)
kafkacpu
;;
kafkanum)
kafkanum
;;
*)
echo "Usage: $0 {allmemsum|allcpusum|nginxmem|nginxcpu|nginxmempri|nginxcpupri|nginxnum|redismem|rediscpu|redismempri|rediscpupri|redisnum|mysqlmem|mysqlcpu|mysqlmempri|mysqlcpupri|mysqlnum|kafkamem|kafkacpu|kafkanum}"
esac
