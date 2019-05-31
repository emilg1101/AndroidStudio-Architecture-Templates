package ${escapeKotlinIdentifiers(apiPackageName)}

import dagger.Module
import dagger.Provides
import io.reactivex.schedulers.Schedulers
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory
import retrofit2.converter.gson.GsonConverterFactory
import ${apiRequestPackageName}.${apiRequestClassName}
import ${apiRequestPackageName}.${apiDecoratorClassName}
import javax.inject.Singleton

@Module
class ${moduleName} {

    companion object {
        private const val BASE_URL = ""
    }

    @Provides
    @Singleton
    fun provideApiRequest(@${qualifierName} okHttpClient: OkHttpClient): ${apiRequestClassName} {
        val apiRequest = Retrofit.Builder()
            .addCallAdapterFactory(RxJava2CallAdapterFactory.createWithScheduler(Schedulers.io()))
            .addConverterFactory(GsonConverterFactory.create())
            .baseUrl(BASE_URL)
            .client(okHttpClient)
            .build()
            .create(${apiRequestClassName}::class.java)

        return ${apiDecoratorClassName}(apiRequest)
    }

    @Singleton
    @Provides
    @${qualifierName}
    fun httpClient(@${qualifierName} interceptor: HttpLoggingInterceptor): OkHttpClient {
        return OkHttpClient.Builder()
            .addInterceptor(interceptor)
            .build()
    }

    @Singleton
    @Provides
    @${qualifierName}
    fun httpLoggingInterceptor(): HttpLoggingInterceptor {
        val interceptor = HttpLoggingInterceptor()
        interceptor.level = HttpLoggingInterceptor.Level.BODY
        return interceptor
    }
}
