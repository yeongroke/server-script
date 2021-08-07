DIRECTORYHOME="input"


DB_USER='input';
DB_PASSWD='input';

DB_NAME='input';

nowdate=$(date -d "-8 hours" +"%Y%m%d")
time=$(date -d "-8 hours" +"%H:%M:%S")
putdate="$(date -d "-8 hours" +"%Y-%m-%d") "$time;

hostip="input";
portnum="input";

time2=input
putdate2="$(date -d "-8 hours" +"%Y/%m/%d") "$time2;

TABLE1='input';

if test -e "$DIRECTORYHOME/input/${nowdate:0:4}/D${nowdate:2}.txt"; then
        #echo "file exist"

tail -n 1 "$DIRECTORYHOME/input/${nowdate:0:4}/D${nowdate:2}.txt" | while read line

do
        echo $line

        if [[ $line =~ ${putdate2:2} ]]; then
                #echo "true"
                echo "INSERT INTO $TABLE1 VALUES ('"$putdate"', 1);" |  mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME --host=$hostip --port=$portnum
        else
                #echo "false"
                echo "INSERT INTO $TABLE1 VALUES ('"$putdate"', -1);" |  mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME --host=$hostip --port=$portnum
        fi
done

        #echo "INSERT INTO $TABLE1 VALUES ('"$putdate"', 1);" |  mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME --host=$hostip --port=$portnum
else
        echo "file not exist"
        #echo "INSERT INTO $TABLE1 VALUES ('"$putdate"', -1);" |  mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME --host=$hostip --port=$portnum
fi
