package ${escapeKotlinIdentifiers(packageName)}

import com.arellomobile.mvp.MvpPresenter
import com.arellomobile.mvp.InjectViewState
import javax.inject.Inject
import io.reactivex.disposables.CompositeDisposable

@InjectViewState
class ${presenterName} @Inject constructor() : MvpPresenter<${viewName}>() {

    private var destroyDisposable = CompositeDisposable()

    override fun onDestroy() {
        super.onDestroy()
        if(!destroyDisposable.isDisposed) {
            destroyDisposable.dispose()
        }
    }
}
