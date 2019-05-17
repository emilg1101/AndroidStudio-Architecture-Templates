package ${escapeKotlinIdentifiers(packageName)}

import com.arellomobile.mvp.MvpAppCompatFragment
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import javax.inject.Inject
import javax.inject.Provider
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${fragmentName} : MvpAppCompatFragment(), ${viewName} {

    @ProvidePresenter
    fun provide${presenterName}() = presenterProvider.get()

    @InjectPresenter
    lateinit var ${presenterName?uncap_first}: ${presenterName}

    @field:Inject
    lateinit var presenterProvider: Provider<${presenterName}>

    companion object {

        const val TAG = "fragment_${classToResource(fragmentName)}"

        fun newInstance() = ${fragmentName}()
    }
}
