#!/usr/bin/perl
 #Elaborado por Marcelino Jorge Villarreal Leal
 #De la Facultad de Ingenieria Mecanica y Electrica
 #De la Universidad Autonoma de Nuevo Leon.
INICIO: print"\t DISTRIBUCION UNIFORME \n";
do { S: print"Seleccione valor minimo de la variable, a= ";
 chomp ($a = <>); if($a<0) {print"Esa opcion no existe.\n\n Vuelve a intentando\n"; goto S}
print"a= $a min\n"; 
M: print"Seleccione valor maximo de la variable, b=";
chomp ($b = <>); if($b<0) {print"Esa opcion no existe.\n\n Vuelve a intentando\n"; goto M}
print"b= $b min\n"; 
L: print"Seleccione el numero de datos a crear, R=";
chomp ($R = <>); if($b<0) {print"Esa opcion no existe.\n\n Vuelve a intentando\n"; goto L}
print"total numeros rectangulares= $R min\n"; 
print"\n \t Generacion de numeros rectangulares \n";
$t=1; print "presione ENTER para continuar"; chomp ($vv = <>);
CICLO:
for ($x=1;$x<=$R;$x++ && $t++) {
$rand= (rand);
print"\nNumero rectangular #$t: $rand\n";
print"Operacion\n";
print"\n T$t:\n";
$t1 =$a + (($b-$a) *$rand);
print "$a + ($b-$a) *$rand =";
print"$t1\n";
if($x>=2){
$t3=$t2+$t1;
$t2=$t3 ;
 
}else{
$t2=$t1;}
}
#if ($x!=$R) {goto CICLO}
print"\n Tiempo total :";
print"\n TTE:";
print"$t3\n";
print"\n Tiempo total promedio:";
print"\n TPE:";
$TPE=$t3/$R;
print"$TPE\n";
print "Desea  hacer otra distribucion?............\n 1= si 2= no  :"; 
chomp ($vv = <>);
if ($vv == 1) {
system("cls"); goto INICIO
} if ($vv == 2) {
print "ADIOS";
}
}