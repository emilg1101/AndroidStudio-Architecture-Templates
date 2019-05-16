package ${escapeKotlinIdentifiers(packageName)}

import com.arellomobile.mvp.MvpAppCompatFragment
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${fragmentName} : MvpAppCompatFragment(), ${viewName} {

    companion object {

        const val TAG = "fragment_${classToResource(fragmentName)}"

        fun newInstance() = ${fragmentName}()
    }
}
