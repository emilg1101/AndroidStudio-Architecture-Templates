package ${escapeKotlinIdentifiers(packageName)}

import android.support.v7.widget.RecyclerView
import android.view.View
import kotlinx.android.synthetic.main.${itemLayoutName}.view.*

class ${viewHolderClassName}(itemView: View) : RecyclerView.ViewHolder(itemView) {

    fun bindView(model: ${modelName}<#if hasItemClickListener>, itemClickListener: ((${modelName}) -> Unit)?</#if>) = with(itemView) {
        <#if hasItemClickListener>

        this.setOnClickListener {
            itemClickListener?.invoke(model)
        }
        </#if>
    }
}
