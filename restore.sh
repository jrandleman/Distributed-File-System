# sudo restore.sh - Restore the original IP addresses in "/ips/"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

rm -r $SCRIPT_DIR/ips/
mkdir $SCRIPT_DIR/ips
mkdir $SCRIPT_DIR/ips/1
mkdir $SCRIPT_DIR/ips/2

curl -L https://raw.githubusercontent.com/jrandleman/Distributed-File-System/main/ips/1/rvm.txt > $SCRIPT_DIR/ips/1/rvm.txt
curl -L https://raw.githubusercontent.com/jrandleman/Distributed-File-System/main/ips/1/uvm.txt > $SCRIPT_DIR/ips/1/uvm.txt
curl -L https://raw.githubusercontent.com/jrandleman/Distributed-File-System/main/ips/2/rvm.txt > $SCRIPT_DIR/ips/2/rvm.txt
curl -L https://raw.githubusercontent.com/jrandleman/Distributed-File-System/main/ips/2/uvm.txt > $SCRIPT_DIR/ips/2/uvm.txt

curl -L https://raw.githubusercontent.com/jrandleman/Distributed-File-System/main/ips/middleware.txt > $SCRIPT_DIR/ips/middleware.txt
curl -L https://raw.githubusercontent.com/jrandleman/Distributed-File-System/main/ips/pool-ips.txt > $SCRIPT_DIR/ips/pool-ips.txt
