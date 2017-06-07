# == Schema Information
#
# Table name: products
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  name        :string
#  permalink   :string
#  price       :integer
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord

  include Payola::Sellable

end
