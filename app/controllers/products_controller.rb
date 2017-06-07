class ProductsController < InheritedResources::Base

  private

  def product_params
    params.require(:product).permit(
      :description,
      :name,
      :permalink,
      :price
    )
  end

end
