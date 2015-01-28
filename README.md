# system_resume
使用create_mbr 创建mbr文件，创建分区表信息文件

dd 对考数据

拷贝分区表数据
dd if=/dev/sda of=mbr bs=512 count=1
恢复分区表数据
dd if=mbr of=/dev/sda 

sfdisk 拷贝分区表
备份分区表数据
sfdisk -d /dev/sda > parted.bak
还原分区表数据
sfdisk --force /dev/sda < parted.bak

如果是新的磁盘需要对磁盘格式化
mkfs.ext4 /dev/sda1
