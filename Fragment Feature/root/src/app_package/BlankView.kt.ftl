package ${escapeKotlinIdentifiers(featurePackageName)}

<#if isBaseClassesEnable>
import ${basePackage}.${baseView}
<#else>
import com.arellomobile.mvp.MvpView
</#if>
import com.arellomobile.mvp.viewstate.strategy.StateStrategyType
import com.arellomobile.mvp.viewstate.strategy.AddToEndSingleStrategy

@StateStrategyType(AddToEndSingleStrategy::class)
interface ${viewName} : <#if isBaseClassesEnable>${baseView}<#else>MvpView</#if> {

}
