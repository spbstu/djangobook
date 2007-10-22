<?xml version='1.0'?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY % xsldoc.ent SYSTEM "./xsldoc.ent"> %xsldoc.ent; ]>
<!--############################################################################# 
|	$Id: abstract.mod.xsl,v 1.1 2005/12/05 08:19:40 rpopov Exp $
|- #############################################################################
|	$Author: rpopov $
|														
|   PURPOSE:
+ ############################################################################## -->

<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:doc="http://nwalsh.com/xsl/documentation/1.0"
    exclude-result-prefixes="doc" version='1.0'>


    <!--############################################################################# -->
    <!-- DOCUMENTATION                                                                -->
    <doc:reference id="abstract" xmlns="">
		<referenceinfo>
			<releaseinfo role="meta">
				$Id: abstract.mod.xsl,v 1.1 2005/12/05 08:19:40 rpopov Exp $
			</releaseinfo>
			<authorgroup>
				&ramon;
				&james;
			</authorgroup>
			<copyright>
				<year>2000</year><year>2001</year><year>2002</year><year>2003</year>
				<holder>Ramon Casellas</holder>
			</copyright>
			<revhistory>
				<doc:revision rcasver="1.6" entity="rev_2003_05"/>
			</revhistory>
		</referenceinfo>
		<title>Abstracts <filename>abstract.mod.xsl</filename></title>
		<partintro>
			<para>The file <filename>abstract.mod.xsl</filename> contains the
			XSL template for <doc:db>abstract</doc:db>.</para>
		</partintro>
	</doc:reference>






    <!--############################################################################# -->
    <!-- DOCUMENTATION                                                                -->
	<doc:template match="abstract" xmlns="">
		<refpurpose>Process <doc:db>abstract</doc:db> elements</refpurpose>
		<doc:description>
			<para>
				Uses the &latex; <function condition='env'>abstract</function> environment
				to format <quote>abstracts</quote> as blocks.
			</para>
		</doc:description>
		<doc:variables>
			&no_var;
		</doc:variables>
		<doc:notes>
			<para>Currently, the <doc:db>title</doc:db> is not honoured.</para>
		</doc:notes>
		<doc:samples>
			<simplelist type='inline'>
				&test_article;
				&test_book;
				&test_ddh;
				&test_ieeebiblio;
				&test_varioref;
			</simplelist>
		</doc:samples>
		<doc:seealso>
			<itemizedlist>
				<listitem><para>&mapping;</para></listitem>
			</itemizedlist>
		</doc:seealso>
	</doc:template>
	<xsl:template match="abstract">
		<xsl:call-template name="map.begin"/>
		<xsl:apply-templates/>
		<xsl:call-template name="map.end"/>
	</xsl:template>
	<!--############################################################################# -->

	<xsl:template match="abstract/title"/>

</xsl:stylesheet>


