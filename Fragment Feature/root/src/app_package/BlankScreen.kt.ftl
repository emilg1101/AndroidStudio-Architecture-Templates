package ${escapeKotlinIdentifiers(featurePackageName)}

import ru.terrakok.cicerone.android.support.SupportAppScreen

class ${screenName} : SupportAppScreen() {

    override fun getScreenKey() = ${fragmentName}::class.java.name

    override fun getFragment() = ${fragmentName}.newInstance()
}
