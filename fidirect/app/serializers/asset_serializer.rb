class AssetSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :user_id
end
