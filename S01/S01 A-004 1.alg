<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#Message" algoitem="Message EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#LongeurChaine" algoitem="LongeurChaine EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Caractere" algoitem="Caractere EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#TEST" algoitem="TEST EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#Message#pasliste" algoitem="LIRE Message"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#LongeurChaine#Message.length#pasliste" algoitem="LongeurChaine PREND_LA_VALEUR Message.length"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#Caractere#&quot;&quot;#pasliste" algoitem="Caractere PREND_LA_VALEUR &quot;&quot;"/>
        <item code="12#i#0#LongeurChaine-1" algoitem="POUR i ALLANT_DE 0 A LongeurChaine-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#!(Message.substr(i,1) == &quot; &quot; OU Message.substr(i,1) == &quot;,&quot; OU Message.substr(i,1) == &quot;.&quot; OU Message.substr(i,1) == &quot;-&quot; OU Message.substr(i,1) == &quot;?&quot; OU Message.substr(i,1) == &quot;!&quot;)" algoitem="SI (!(Message.substr(i,1) == &quot; &quot; OU Message.substr(i,1) == &quot;,&quot; OU Message.substr(i,1) == &quot;.&quot; OU Message.substr(i,1) == &quot;-&quot; OU Message.substr(i,1) == &quot;?&quot; OU Message.substr(i,1) == &quot;!&quot;)) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="6#Message.charCodeAt(i) &lt; 97" algoitem="SI (Message.charCodeAt(i) &lt; 97) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#Caractere#Caractere + String.fromCharCode(Message.charCodeAt(i) + 32)#pasliste" algoitem="Caractere PREND_LA_VALEUR Caractere + String.fromCharCode(Message.charCodeAt(i) + 32)"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="5#Caractere#Caractere + Message.substr(i,1)#pasliste" algoitem="Caractere PREND_LA_VALEUR Caractere + Message.substr(i,1)"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#LongeurChaine#Caractere.length#pasliste" algoitem="LongeurChaine PREND_LA_VALEUR Caractere.length"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#TEST#1#pasliste" algoitem="TEST PREND_LA_VALEUR 1"/>
        <item code="12#i#0#floor(LongeurChaine / 2)" algoitem="POUR i ALLANT_DE 0 A floor(LongeurChaine / 2)">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#Caractere.substr(i,1) != Caractere.substr(LongeurChaine - 1 - i, 1)" algoitem="SI (Caractere.substr(i,1) != Caractere.substr(LongeurChaine - 1 - i, 1)) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#TEST#0#pasliste" algoitem="TEST PREND_LA_VALEUR 0"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="103#commentaire" algoitem=""/>
        <item code="6#TEST == 1" algoitem="SI (TEST == 1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Palindrome !#0" algoitem="AFFICHER &quot;Palindrome !&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Pas Palindrome !#0" algoitem="AFFICHER &quot;Pas Palindrome !&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
