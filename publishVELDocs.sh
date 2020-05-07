if [ "$5" == "" ]
then 
echo Missing stage, dateZ, date, user, password arguments
exit
fi

if [ 1 == 1 ]
then

echo Pre-validate sources...
sh db/spec-0.8/validate/validate.sh VEL-v1.0-csprd01-model.xml
if [ "$?" != "0" ]; then exit ; fi

fi

echo Building package...
java -Dant.home=utilities/ant -Xss4m -Xms400m -Xmx2000m -classpath "db/spec-0.8/validate/xjparse.jar;utilities/ant/lib/ant-launcher.jar;db/spec-0.8/validate/saxon9he.jar;." org.apache.tools.ant.launch.Launcher -buildfile publishVELDocs.xml -Ddir=results/ -DsetareVersion=20190805-1530z -Dstage=$1 -Dversion=$2 -Ddatetimelocal=$3 -Dsetareuser=$4 -Dsetarepass=$5

if [ "$?" != "0" ]; then exit ; fi

