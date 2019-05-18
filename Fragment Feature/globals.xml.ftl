<?xml version="1.0"?>
<globals>
    <#include "root://activities/common/common_globals.xml.ftl" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />

    <global id="isBaseClassesEnable" type="boolean" value="true" />
    <global id="basePackage" type="string" value="${applicationPackage}.presentation.base" />
    <global id="baseFragment" type="string" value="BaseFragment" />
    <global id="baseView" type="string" value="BaseView" />
    <global id="basePresenter" type="string" value="BasePresenter" />

</globals>
