# DP0=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DP0TEMP=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DP0=$(cygpath -w "$DP0TEMP")
java -jar "$DP0/xjparse.jar" -v -c "$DP0/../catalog.xml" "$1"
