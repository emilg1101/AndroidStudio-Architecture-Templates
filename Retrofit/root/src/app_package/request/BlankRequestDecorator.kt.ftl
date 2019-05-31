package ${escapeKotlinIdentifiers(apiRequestPackageName)}

import io.reactivex.*

class ${apiDecoratorClassName}(private val api: ${apiRequestClassName}) : ${apiRequestClassName} {

    companion object {
        private fun processApiThrowable(t: Throwable): Throwable {
            return t
        }
    }

    private class ${apiRequestClassName}ErrorSingleTransformer<T> : SingleTransformer<T, T> {
        override fun apply(upstream: Single<T>): SingleSource<T> {
            return upstream.onErrorResumeNext { t: Throwable ->
                Single.error(processApiThrowable(t))
            }
        }
    }

    private class ${apiRequestClassName}ErrorObservableTransformer<T> : ObservableTransformer<T, T> {
        override fun apply(upstream: Observable<T>): ObservableSource<T> {
            return upstream.onErrorResumeNext { t: Throwable ->
                Observable.error(processApiThrowable(t))
            }
        }
    }

    private class ${apiRequestClassName}ErrorCompletableTransformer : CompletableTransformer {
        override fun apply(upstream: Completable): CompletableSource {
            return upstream.onErrorResumeNext { t: Throwable ->
                Completable.error(processApiThrowable(t))
            }
        }
    }
}
