<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/BlankAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterClassName}.kt" />

    <instantiate from="root/res/layout/item_blank.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />

    <#if !isInnerViewHolder>
        <instantiate from="root/src/app_package/BlankViewHolder.kt.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${viewHolderClassName}.kt" />
    </#if>

</recipe>
