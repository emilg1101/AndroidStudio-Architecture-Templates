package ${escapeKotlinIdentifiers(packageName)}

import com.arellomobile.mvp.MvpView
import com.arellomobile.mvp.viewstate.strategy.StateStrategyType
import com.arellomobile.mvp.viewstate.strategy.AddToEndSingleStrategy

@StateStrategyType(AddToEndSingleStrategy::class)
interface ${viewName} : MvpView {

}
