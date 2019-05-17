package ${escapeKotlinIdentifiers(packageName)}

import com.arellomobile.mvp.MvpPresenter
import com.arellomobile.mvp.InjectViewState
import javax.inject.Inject

@InjectViewState
class ${presenterName} @Inject constructor() : MvpPresenter<${viewName}>() {

}
