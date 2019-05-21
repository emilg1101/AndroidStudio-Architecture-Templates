<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if !(hasDependency('com.android.support:support-v4'))>
        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    </#if>

    <instantiate from="root/src/app_package/BlankFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${fragmentName}.kt" />

    <instantiate from="root/src/app_package/BlankView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${viewName}.kt" />

    <instantiate from="root/src/app_package/BlankPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${presenterName}.kt" />

    <instantiate from="root/src/app_package/BlankScreen.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${screenName}.kt" />

    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#if createModule>
        <instantiate from="root/src/app_package/dagger/BlankModule.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${moduleName}.kt" />
    </#if>

    <#if createScope>
        <instantiate from="root/src/app_package/dagger/BlankScope.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${scopeName}.kt" />
    </#if>

    <#if createQualifier>
        <instantiate from="root/src/app_package/dagger/BlankQualifier.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}/${qualifierName}.kt" />
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
</recipe>
