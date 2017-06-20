<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="TANT_QUE (Continuer == &quot;O&quot; OU NombreInputActu &lt; TAILLETABLEAU) FAIRE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="NombreEnfant EST_DU_TYPE NOMBRE" code="1#NOMBRE#NombreEnfant"/>
        <item algoitem="TauxParticipation EST_DU_TYPE NOMBRE" code="1#NOMBRE#TauxParticipation"/>
        <item algoitem="Salaire EST_DU_TYPE NOMBRE" code="1#NOMBRE#Salaire"/>
        <item algoitem="SituationMaritale EST_DU_TYPE NOMBRE" code="1#NOMBRE#SituationMaritale"/>
        <item algoitem="TauxCelib EST_DU_TYPE NOMBRE" code="1#NOMBRE#TauxCelib"/>
        <item algoitem="TauxAutres EST_DU_TYPE NOMBRE" code="1#NOMBRE#TauxAutres"/>
        <item algoitem="TauxParEnfant EST_DU_TYPE NOMBRE" code="1#NOMBRE#TauxParEnfant"/>
        <item algoitem="TauxMax EST_DU_TYPE NOMBRE" code="1#NOMBRE#TauxMax"/>
        <item algoitem="PlafondSalaire EST_DU_TYPE NOMBRE" code="1#NOMBRE#PlafondSalaire"/>
        <item algoitem="MajorationPlafondSalaire EST_DU_TYPE NOMBRE" code="1#NOMBRE#MajorationPlafondSalaire"/>
        <item algoitem="Continuer EST_DU_TYPE CHAINE" code="1#CHAINE#Continuer"/>
        <item algoitem="TAILLETABLEAU EST_DU_TYPE NOMBRE" code="1#NOMBRE#TAILLETABLEAU"/>
        <item algoitem="NombreInputActu EST_DU_TYPE NOMBRE" code="1#NOMBRE#NombreInputActu"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="TauxCelib PREND_LA_VALEUR 0.2" code="5#TauxCelib#0.2#pasliste"/>
        <item algoitem="TauxAutres PREND_LA_VALEUR 0.25" code="5#TauxAutres#0.25#pasliste"/>
        <item algoitem="TauxParEnfant PREND_LA_VALEUR 0.15" code="5#TauxParEnfant#0.15#pasliste"/>
        <item algoitem="TauxMax PREND_LA_VALEUR 0.5" code="5#TauxMax#0.5#pasliste"/>
        <item algoitem="PlafondSalaire PREND_LA_VALEUR 1800" code="5#PlafondSalaire#1800#pasliste"/>
        <item algoitem="MajorationPlafondSalaire PREND_LA_VALEUR 0.1" code="5#MajorationPlafondSalaire#0.1#pasliste"/>
        <item algoitem="Continuer PREND_LA_VALEUR &quot;O&quot;" code="5#Continuer#&quot;O&quot;#pasliste"/>
        <item algoitem="TAILLETABLEAU PREND_LA_VALEUR 50" code="5#TAILLETABLEAU#50#pasliste"/>
        <item algoitem="NombreInputActu PREND_LA_VALEUR 0" code="5#NombreInputActu#0#pasliste"/>
        <item algoitem="TANT_QUE (Continuer == &quot;O&quot; OU NombreInputActu &lt; TAILLETABLEAU) FAIRE" code="15#Continuer == &quot;O&quot; OU NombreInputActu &lt; TAILLETABLEAU">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer salaire (nombre)&quot;" code="4#Entrer salaire (nombre)#0"/>
            <item algoitem="LIRE Salaire" code="2#Salaire#pasliste"/>
            <item algoitem="AFFICHER &quot;Entrer nombre d'enfants (nombre)&quot;" code="4#Entrer nombre d'enfants (nombre)#0"/>
            <item algoitem="LIRE NombreEnfant" code="2#NombreEnfant#pasliste"/>
            <item algoitem="AFFICHER &quot;Entrer situaton maritale (oui = 1 et non = 0)&quot;" code="4#Entrer situaton maritale (oui = 1 et non = 0)#0"/>
            <item algoitem="LIRE SituationMaritale" code="2#SituationMaritale#pasliste"/>
            <item algoitem="SI (SituationMaritale == 1) ALORS" code="6#SituationMaritale == 1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="TauxParticipation PREND_LA_VALEUR TauxAutres" code="5#TauxParticipation#TauxAutres#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="TauxParticipation PREND_LA_VALEUR TauxCelib" code="5#TauxParticipation#TauxCelib#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="TauxParticipation PREND_LA_VALEUR TauxParticipation + (NombreEnfant * TauxParEnfant)" code="5#TauxParticipation#TauxParticipation + (NombreEnfant * TauxParEnfant)#pasliste"/>
            <item algoitem="SI (Salaire &lt; PlafondSalaire) ALORS" code="6#Salaire &lt; PlafondSalaire">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="TauxParticipation PREND_LA_VALEUR TauxParticipation + MajorationPlafondSalaire" code="5#TauxParticipation#TauxParticipation + MajorationPlafondSalaire#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (TauxParticipation > TauxMax) ALORS" code="6#TauxParticipation > TauxMax">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="TauxParticipation PREND_LA_VALEUR TauxMax" code="5#TauxParticipation#TauxMax#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="AFFICHER &quot;Taux de participation :&quot;" code="4#Taux de participation :#0"/>
            <item algoitem="AFFICHER TauxParticipation" code="3#TauxParticipation#1#pasliste"/>
            <item algoitem="AFFICHER &quot;« Souhaitez-vous calculer un autre taux de participation ? Répondez O pour Oui ou N pour Non&quot;" code="4#« Souhaitez-vous calculer un autre taux de participation ? Répondez O pour Oui ou N pour Non#0"/>
            <item algoitem="LIRE Continuer" code="2#Continuer#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
