package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

// TODO: Rename parameter arguments, choose names that match
// the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
private const val ARG_PARAM1 = "param1"
private const val ARG_PARAM2 = "param2"


class ${className} : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        return TextView(activity).apply {
            setText(R.string.hello_blank_fragment)
        }
    }

}
