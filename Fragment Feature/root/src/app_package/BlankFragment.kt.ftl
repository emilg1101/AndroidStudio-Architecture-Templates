package ${escapeKotlinIdentifiers(packageName)}

import com.arellomobile.mvp.MvpAppCompatFragment
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${fragmentName} : MvpAppCompatFragment(), ${viewName} {

    @InjectPresenter
    lateinit var ${presenterName?uncap_first}: ${presenterName}

    @ProvidePresenter
    fun provide${presenterName}() = ${presenterName}()

    companion object {

        const val TAG = "fragment_${classToResource(fragmentName)}"

        fun newInstance() = ${fragmentName}()
    }
}
