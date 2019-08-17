package ${escapeKotlinIdentifiers(featurePackageName)}

<#if isBaseClassesEnable>
import ${basePackage}.${baseFragment}
<#else>
import com.arellomobile.mvp.MvpAppCompatFragment
</#if>
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import javax.inject.Inject
import javax.inject.Provider
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${fragmentName} : <#if isBaseClassesEnable>${baseFragment}<#else>MvpAppCompatFragment</#if>(), ${viewName} {

    @ProvidePresenter
    fun providePresenter(): ${presenterName} = presenterProvider.get()

    @InjectPresenter
    lateinit var presenter: ${presenterName}

    @field:Inject
    lateinit var presenterProvider: Provider<${presenterName}>

    companion object {

        fun newInstance() = ${fragmentName}()
    }
}
