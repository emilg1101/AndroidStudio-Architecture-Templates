package ${escapeKotlinIdentifiers(packageName)}

<#if isBaseClassesEnable>
import ${basePackage}.${basePresenter}
<#else>
import com.arellomobile.mvp.MvpPresenter
import io.reactivex.disposables.CompositeDisposable
</#if>
import com.arellomobile.mvp.InjectViewState
import javax.inject.Inject

@InjectViewState
class ${presenterName} @Inject constructor() : <#if isBaseClassesEnable>${basePresenter}<#else>MvpPresenter</#if><${viewName}>() {

<#if !isBaseClassesEnable>
    private var destroyDisposable = CompositeDisposable()

    override fun onDestroy() {
        super.onDestroy()
        if(!destroyDisposable.isDisposed) {
            destroyDisposable.dispose()
        }
    }
</#if>
}
