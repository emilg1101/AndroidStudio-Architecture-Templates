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

    <instantiate from="root/src/app_package/BlankPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />

    <instantiate from="root/src/app_package/BlankScreen.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}.kt" />

    <instantiate from="root/src/app_package/dagger/BlankModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />

    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#if createScope>
        <instantiate from="root/src/app_package/dagger/BlankScope.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${scopeName}.kt" />
    </#if>

    <#if createQualifier>
        <instantiate from="root/src/app_package/dagger/BlankQualifier.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${qualifierName}.kt" />
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
</recipe>
