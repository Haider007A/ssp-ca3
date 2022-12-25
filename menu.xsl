<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:template match="/">
		<table id="menuTable" border="1" class="indent">
			<thead>
			    <tr>
				    <th colspan="3">Top Brands Menu</th>
				</tr>
				<tr>
					<th>Select</th>
					<th>product</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="//brand">
					<tr>
						<td colspan="3">
							<xsl:value-of select="@name" />
						</td>
					</tr>
					<xsl:for-each select="product">
						<tr id="{position()}">
							<xsl:attribute name="new">
								<xsl:value-of select="boolean(@new)" />
							</xsl:attribute>
							<td align="center">
								<input name="product0" type="checkbox" />
							</td>
							<td>
								<xsl:value-of select="listing" />
							</td>
							<td align="right">
								<xsl:value-of select="price" />
							</td>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:transform>