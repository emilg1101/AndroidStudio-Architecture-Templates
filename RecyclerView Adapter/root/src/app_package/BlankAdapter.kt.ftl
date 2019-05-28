package ${escapeKotlinIdentifiers(packageName)}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
import kotlinx.android.synthetic.main.${itemLayoutName}.view.*

class ${adapterClassName} : RecyclerView.Adapter<${adapterClassName}.${viewHolderClassName}>() {

    var items: MutableList<${modelName}> = mutableListOf()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${viewHolderClassName} {
        val v = LayoutInflater.from(parent.context).inflate(R.layout.${itemLayoutName}, false)
        return ${viewHolderClassName}(v)
    }

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: ${viewHolderClassName}, position: Int) {
        holder.bindView(items[position])
    }

    inner class ${viewHolderClassName}(itemView: View): RecyclerView.ViewHolder(itemView) {

        fun bindView(model: ${modelName}) = with(itemView) {
            
        }
    }
}
