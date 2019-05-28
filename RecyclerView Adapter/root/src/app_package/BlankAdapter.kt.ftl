package ${escapeKotlinIdentifiers(packageName)}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
<#if isInnerViewHolder>
import android.view.View
import kotlinx.android.synthetic.main.${itemLayoutName}.view.*
</#if>
import android.view.ViewGroup
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${adapterClassName} : RecyclerView.Adapter<<#if isInnerViewHolder>${adapterClassName}.</#if>${viewHolderClassName}>() {

    <#if hasItemClickListener>
    var itemClickListener: ((${modelName}) -> Unit)? = null

    </#if>
    var items: MutableList<${modelName}> = mutableListOf()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${viewHolderClassName} {
        val v = LayoutInflater.from(parent.context).inflate(R.layout.${itemLayoutName}, parent, false)
        return ${viewHolderClassName}(v)
    }

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: ${viewHolderClassName}, position: Int) {
        <#if isInnerViewHolder>
        holder.bindView(items[position])
        <#else>
        <#if hasItemClickListener>
        holder.bindView(items[position], itemClickListener)
        <#else>
        holder.bindView(items[position])
        </#if>
        </#if>
    }

    <#if isInnerViewHolder>
    inner class ${viewHolderClassName}(itemView: View): RecyclerView.ViewHolder(itemView) {

        fun bindView(model: ${modelName}) = with(itemView) {
            <#if hasItemClickListener>

            this.setOnClickListener {
                itemClickListener?.invoke(model)
            }
            </#if>
        }
    }
    </#if>
}
