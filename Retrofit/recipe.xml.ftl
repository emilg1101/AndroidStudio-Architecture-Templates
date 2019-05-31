<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/BlankModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${apiName?lower_case}/${moduleName}.kt" />

    <instantiate from="root/src/app_package/BlankQualifier.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${apiName?lower_case}/${qualifierName}.kt" />

    <instantiate from="root/src/app_package/request/BlankRequest.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${apiName?lower_case}/request/${apiRequestClassName}.kt" />

    <instantiate from="root/src/app_package/request/BlankRequestDecorator.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${apiName?lower_case}/request/${apiDecoratorClassName}.kt" />
</recipe>
