<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if !(hasDependency('com.android.support:support-v4'))>
        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    </#if>

    <instantiate from="root/src/app_package/BlankFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />

    <instantiate from="root/src/app_package/BlankView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
</recipe>
