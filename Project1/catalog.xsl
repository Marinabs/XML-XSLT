<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- l'element racine du xsl. numero du version et la declaration
de cet espace de noms (xmlns:xsl), ils doivent etre prefixees par xsl -->
<xsl:template match="/"> 
  <html lang="fr">
  <head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  </head>	
	<body id="conteneur">
		<header>
		<h1>Projet 1</h1>
		<h2>Outil de communication client-serveur</h2>
		
		<nav id="nav">
		
			<li class="nav"><a href="#" class="active">ACCUEIL</a></li>
			<li class="nav"><a href="javascrippt:void(0)">PAGE 1</a></li>
			<li class="nav"><a href="javascrippt:void(0)">PAGE 2</a></li>
			<li class="nav"><a href="javascrippt:void(0)">PAGE 3</a></li>
			<li class="nav"><a href="javascrippt:void(0)">NOUS JOINDRE</a></li>
			
		</nav>
	</header>
	
	<section id="contenu">
		<div class="main">
			
				<article>
					<h2>MON INVENTAIRE</h2>
					<xsl:apply-templates/>  <!-- indique qu'il faut examiner tous les noeuds enfants dans l'ordre. quand la balise 
												<book> est detectee, le modele aux lignes 58 - 85 est appliqué-->
				</article>
	
		</div>		

	<aside>
		<h3>Quelques liens intéressants</h3>
		<ul>
			<li><a href="">lien 1</a></li>
			<li><a href="">lien 2</a></li>
			<li><a href="">lien 3</a></li>
			<li><a href="">lien 4</a></li>
		</ul>
		<h3>Recherche</h3>
		<form method="post" action="#" id="search_form">
		<input type="search" value="Recherche..." name="text_search" class="search" />
		<input type="image" name="search" src="Images/loupe.png" class="button" /></form>	
</aside>
	</section>
	  <footer>
		  copyright babcinschi marina - tous droits réservés	
	  </footer>	
	</body>
</html>
</xsl:template>

<xsl:template match="book">    <!-- cet model s'applique a la balise book du fichier book.xml -->
  <h3><xsl:value-of select="title"/></h3>  <!-- permet d'extraire le txte contenu entre la balise xml <title> -->
  <table>
    
	<tr>
		<th color="white">No.d'inventaire</th>  
		<td><xsl:value-of select="@id"/></td> <!-- permet d'extraire le txte contenu entre la balise xml <id> -->
	</tr>
	
	<tr>
		<th>Auteur</th>
		<td><xsl:value-of select="author"/></td> <!-- permet d'extraire le txte contenu entre la balise xml <author> -->
	</tr>
	<tr>
		<th>Date de publication</th>
		<td><xsl:value-of select="publish_date"/></td> <!-- permet d'extraire le txte contenu entre la balise xml <publish_date> -->
	</tr>
	<tr>
		<th>Prix</th>
		<td><xsl:value-of select="price"/></td> <!-- permet d'extraire le txte contenu entre la balise xml <price> -->
	</tr>
	<tr>
		<th>Description</th>
		<td><xsl:value-of select="description"/></td> <!-- permet d'extraire le txte contenu entre la balise xml <description> -->
	</tr>
  </table>
  <p></p>
 
</xsl:template>
</xsl:stylesheet>