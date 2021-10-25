<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:fo="http://www.w3.org/1999/XSL/Format" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" indent="yes" />
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master page-height="297mm" page-width="210mm" margin="2mm 2mm 2mm 2mm" master-name="A4">
                    <!-- Page template goes here -->
                    <fo:region-body margin-left="5mm" margin-right="5mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <xsl:apply-templates select="Ecole" />
        </fo:root>
    </xsl:template>
    <xsl:template match="Ecole">
	<fo:page-sequence master-reference="A4">
        <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica, Times, 'Times New Roman', serif">
	
	<xsl:for-each select="//Etudiant">
		
          <fo:block  border="2px solid" padding="0px" space-after="4mm" margin-left="8px" margin-right="8px">
          <fo:table table-layout="fixed" width="100%" font-size="8pt" text-align="center" display-align="center" space-after="2mm">
            <fo:table-column column-width="proportional-column-width(35)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(35)" />
            <fo:table-body font-size="95%">
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">République du Cameroun</fo:block>
                  <fo:block text-align="center">Paix - Travail - Patrie</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Ministère de l'Enseignement Supérieur</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Université de Maroua</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center"><xsl:value-of select="/Ecole/IntituleFrancais"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center" padding-top="0px" padding-bottom="0px">
                    <fo:external-graphic src="file:logo5.png"/>                    
                  </fo:block>
                  <fo:block text-align="center">B.P. / P.O. Box: <xsl:value-of select="/Ecole/BoitePostale"/></fo:block>
                  <fo:block text-align="center">Tel: <xsl:value-of select="/Ecole/Telephone"/></fo:block>
                  <fo:block text-align="center">Email: <xsl:value-of select="/Ecole/Email"/></fo:block>
                  <fo:block text-align="center">Site: <xsl:value-of select="/Ecole/SiteWeb"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">Republic of Cameroon</fo:block>
                  <fo:block text-align="center">Peace - Work - Fatherland</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Ministry of Higher Education</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">The University of Maroua</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center"><xsl:value-of select="/Ecole/IntituleAnglais"/></fo:block>
								</fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
	  <fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="2mm">
	    <fo:table-column column-width="proportional-column-width(18)" />
            <fo:table-column column-width="proportional-column-width(66)" />
            <fo:table-column column-width="proportional-column-width(20)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
              	<fo:block >Reçu de paiement</fo:block>
		<fo:block font-weight="italic">Receipt of payment</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="center" font-size="9px">ATTESTATION DE PAIEMENT DES DROITS UNIVERSITAIRES (ENSPM)</fo:block>
		  <fo:block font-weight="bold" text-align="center" font-size="9px">TUITION FEES</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" >COPIE BANQUE</fo:block>
		  <fo:block font-weight="bold">BANK COPY</fo:block>
		</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	  </fo:table>

           <fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Matricule</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="@matricule"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Registration number</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Année académique</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="../@annee"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Academic year</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Numéro</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px" >0015 / 2020</fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Serial number</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>

	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(70)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Noms(s) et prenom(s)</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px" font-size="10px"><xsl:value-of select="Nom"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">FirstName(s) and Surname(s)</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Sexe</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Sexe"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Sex</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Date de naissance</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="DateDeNaissance"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Date of Birth</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Lieu de naissance</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="LieuDeNaissance"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Place of birth</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Nationalité</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Nationalite"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Nationality</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Cycle</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px">IC</fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Cycle</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Parcours</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="Parcours"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Speciality</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Option</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Option"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Option</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Niveau</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="Niveau"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Level</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Tranche</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="Tranche"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Slice</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Montant</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Montant"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Amount</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>



	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(60)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
			<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block >Visa AC / DAAF</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block/>
 				</fo:list-item-body>
			</fo:list-item>

			</fo:list-block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block >No Compte bancaire</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="/Ecole/@numeroCompteBancaire" /></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Account number</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>
      </fo:block>










          <fo:block  border="2px solid" padding="0px" space-after="4mm" margin-left="8px" margin-right="8px">
          <fo:table table-layout="fixed" width="100%" font-size="8pt" text-align="center" display-align="center" space-after="2mm">
            <fo:table-column column-width="proportional-column-width(35)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(35)" />
            <fo:table-body font-size="95%">
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">République du Cameroun</fo:block>
                  <fo:block text-align="center">Paix - Travail - Patrie</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Ministère de l'Enseignement Supérieur</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Université de Maroua</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center"><xsl:value-of select="/Ecole/IntituleFrancais"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center" padding-top="0px" padding-bottom="0px">
                    <fo:external-graphic src="file:logo5.png"/>                    
                  </fo:block>
                  <fo:block text-align="center">B.P. / P.O. Box: <xsl:value-of select="/Ecole/BoitePostale"/></fo:block>
                  <fo:block text-align="center">Tel: <xsl:value-of select="/Ecole/Telephone"/></fo:block>
                  <fo:block text-align="center">Email: <xsl:value-of select="/Ecole/Email"/></fo:block>
                  <fo:block text-align="center">Site: <xsl:value-of select="/Ecole/SiteWeb"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">Republic of Cameroon</fo:block>
                  <fo:block text-align="center">Peace - Work - Fatherland</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Ministry of Higher Education</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">The University of Maroua</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center"><xsl:value-of select="/Ecole/IntituleAnglais"/></fo:block>
								</fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
	  <fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(18)" />
            <fo:table-column column-width="proportional-column-width(66)" />
            <fo:table-column column-width="proportional-column-width(20)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
              	<fo:block >Reçu de paiement</fo:block>
		<fo:block font-weight="italic">Receipt of payment</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="center" font-size="9px">ATTESTATION DE PAIEMENT DES DROITS UNIVERSITAIRES (ENSPM)</fo:block>
		  <fo:block font-weight="bold" text-align="center" font-size="9px">TUITION FEES</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" >COPIE ETUDIANT</fo:block>
		  <fo:block font-weight="bold">STUDENT COPY</fo:block>
		</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	  </fo:table>

           <fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Matricule</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="@matricule"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Registration number</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Année académique</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="../@annee"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Academic year</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Numéro</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px" >0015 / 2020</fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Serial number</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>

	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(70)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Noms(s) et prenom(s)</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px" font-size="10px"><xsl:value-of select="Nom"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">FirstName(s) and Surname(s)</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Sexe</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Sexe"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Sex</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Date de naissance</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="DateDeNaissance"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Date of Birth</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Lieu de naissance</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="LieuDeNaissance"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Place of birth</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Nationalité</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Nationalite"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Nationality</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Cycle</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px">IC</fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Cycle</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Parcours</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="Parcours"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Speciality</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Option</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Option"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Option</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Niveau</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="Niveau"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Level</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Tranche</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="Tranche"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Slice</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Montant</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Montant"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Amount</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>



	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(60)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
			<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block >Visa AC / DAAF</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block/>
 				</fo:list-item-body>
			</fo:list-item>

			</fo:list-block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>No Compte bancaire</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="/Ecole/@numeroCompteBancaire" /></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Account number</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>
      </fo:block>










          <fo:block  border="2px solid" padding="0px" space-after="4mm" margin-left="8px" margin-right="8px">
          <fo:table table-layout="fixed" width="100%" font-size="8pt" text-align="center" display-align="center" space-after="2mm">
            <fo:table-column column-width="proportional-column-width(35)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(35)" />
            <fo:table-body font-size="95%">
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">République du Cameroun</fo:block>
                  <fo:block text-align="center">Paix - Travail - Patrie</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Ministère de l'Enseignement Supérieur</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Université de Maroua</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center"><xsl:value-of select="/Ecole/IntituleFrancais"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center" padding-top="0px" padding-bottom="0px">
                    <fo:external-graphic src="file:logo5.png"/>                    
                  </fo:block>
                  <fo:block text-align="center">B.P. / P.O. Box: <xsl:value-of select="/Ecole/BoitePostale"/></fo:block>
                  <fo:block text-align="center">Tel: <xsl:value-of select="/Ecole/Telephone"/></fo:block>
                  <fo:block text-align="center">Email: <xsl:value-of select="/Ecole/Email"/></fo:block>
                  <fo:block text-align="center">Site: <xsl:value-of select="/Ecole/SiteWeb"/></fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block text-align="center">Republic of Cameroon</fo:block>
                  <fo:block text-align="center">Peace - Work - Fatherland</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">Ministry of Higher Education</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center">The University of Maroua</fo:block>
                  <fo:block text-align="center">***</fo:block>
                  <fo:block text-align="center"><xsl:value-of select="/Ecole/IntituleAnglais"/></fo:block>
								</fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
	  <fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(18)" />
            <fo:table-column column-width="proportional-column-width(66)" />
            <fo:table-column column-width="proportional-column-width(20)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
              	<fo:block ></fo:block>
		<fo:block font-weight="italic">Receipt of payment</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="center" font-size="9px">ATTESTATION DE PAIEMENT DES DROITS UNIVERSITAIRES (ENSPM)</fo:block>
		  <fo:block font-weight="bold" text-align="center" font-size="9px">TUITION FEES</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" >COPIE SCOLARITE</fo:block>
		  <fo:block font-weight="bold">SCHOOL COPY</fo:block>
		</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	  </fo:table>

           <fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Matricule</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="@matricule"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Registration number</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Année académique</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="../@annee"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Academic year</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Numéro</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px" >0015 / 2020</fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Serial number</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>

	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(70)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Noms(s) et prenom(s)</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px" font-size="10px"><xsl:value-of select="Nom"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">FirstName(s) and Surname(s)</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Sexe</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Sexe"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Sex</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Date de naissance</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="DateDeNaissance"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Date of Birth</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Lieu de naissance</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="LieuDeNaissance"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Place of birth</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Nationalité</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Nationalite"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Nationality</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Cycle</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px">IC</fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Cycle</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Parcours</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="Parcours"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Speciality</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Option</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Option"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Option</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>


	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-column column-width="proportional-column-width(30)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
		<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Niveau</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="120px"><xsl:value-of select="Niveau"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>
		</fo:list-block>
		<fo:block font-weight="italic">Level</fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>Tranche</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="Tranche"/></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Slice</fo:block>
                </fo:table-cell>
                <fo:table-cell>
		      	<fo:list-block>
				<fo:list-item>
	 				<fo:list-item-label>
	   					<fo:block>Montant</fo:block>
	 				</fo:list-item-label>
	 				<fo:list-item-body>
	   					<fo:block font-weight="bold" text-align="left" margin-left="60px"><xsl:value-of select="Montant"/></fo:block>
	 				</fo:list-item-body>
				</fo:list-item>
			</fo:list-block>
			<fo:block font-weight="italic">Amount</fo:block>
			</fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>



	<fo:table table-layout="fixed" width="100%" font-size="8pt" space-after="1mm">
	    <fo:table-column column-width="proportional-column-width(40)" />
            <fo:table-column column-width="proportional-column-width(60)" />
            <fo:table-body >
              <fo:table-row>
                <fo:table-cell>
			<fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block >Visa AC / DAAF</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block/>
 				</fo:list-item-body>
			</fo:list-item>

			</fo:list-block>>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:list-block>
			<fo:list-item>
 				<fo:list-item-label>
   					<fo:block>No Compte bancaire</fo:block>
 				</fo:list-item-label>
 				<fo:list-item-body>
   					<fo:block font-weight="bold" text-align="left" margin-left="100px"><xsl:value-of select="/Ecole/@numeroCompteBancaire" /></fo:block>
 				</fo:list-item-body>
			</fo:list-item>

		</fo:list-block>
		<fo:block font-weight="italic">Account number</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>

	</fo:table>
      </fo:block>

	</xsl:for-each>
</fo:flow>
      </fo:page-sequence>
      
        
    </xsl:template>
</xsl:stylesheet>
