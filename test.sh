#!/bin/bash  
  
# 定义一个函数来设置系统时间  
# 参数：一个形如 "YYYY-MM-DD HH:MM:SS" 的字符串  
set_system_time() {  
    # 检查参数是否为空  
    if [ -z "$1" ]; then  
        echo "Error: No date time string provided."  
        return 1  
    fi  

    # 使用date命令的-s选项来设置系统时间  
    # 注意：这需要root权限或以sudo方式运行  
    if sudo date -s "$1"; then  
        echo "System time set successfully to: $1"  
    else  
        echo "Failed to set system time. Please check your permissions."  
    fi  
}  
  
# 示例用法  
# 注意：你可能需要以root用户或使用sudo来运行这个脚本  
set_system_time "2024-07-24 01:46:53"
sudo ./myapp configure1.json test