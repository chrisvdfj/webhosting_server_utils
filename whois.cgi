#!/bin/sh
echo "Content-type: text/html"
echo
DOMINIO=`echo $QUERY_STRING|cut -f1 -d"&"|cut -f2 -d "="`
DOMINIOFIN=`echo $QUERY_STRING|cut -f2 -d"&"|cut -f2 -d "="`
if [ $DOMINIOFIN = "COM" ] || [ $DOMINIOFIN = "NET" ] || [ $DOMINIOFIN = "ORG" ]; then 
ok=`whois $DOMINIO.$DOMINIOFIN@rs.internic.net|grep ": "|grep -v "EST"|awk '{ printf("%s</p>\n",$0);}'`;
fi
if [ $DOMINIOFIN = "CL" ]; then 
ok=`whois $DOMINIO.$DOMINIOFIN@ns.nic.cl|grep ": "|awk '{ printf("%s</p>\n",$0);}'`;
fi
if [ -z $ok ]; then
######## IMPRIME TU PAGINA ##########
echo "<b>Insertar pagina de dominio NO registrado: primera linea</b></p>";
echo "<b>Insertar pagina de dominio NO registrado: segunda linea... o</b>";
else
echo "<b>Inserta lo que sea aqui</b></p>";
######## echo $ok IMPRIME LOS DATOS DEL DOMINIO ##########
echo $ok;
echo "<b>Inserta mas cosas aca</b>"; 
fi
