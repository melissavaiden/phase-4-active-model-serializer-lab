class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :content, :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end

  has_many :tags
  has_one :author
end
