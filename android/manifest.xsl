<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:android="http://schemas.android.com/apk/res/android">

  <xsl:param name="crashlyticsKey" />

  <xsl:output indent="yes" />
  <xsl:template match="comment()" />

  <xsl:template match="meta-data[@android:name='io.fabric.ApiKey']">
    <meta-data android:name="io.fabric.ApiKey" android:value="{$crashlyticsKey}" />
  </xsl:template>

  <xsl:output indent="yes" />
  <xsl:template match="comment()" />

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
