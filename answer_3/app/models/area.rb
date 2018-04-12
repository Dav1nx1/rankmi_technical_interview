class Area < ActiveRecord::Base
  belongs_to :parent, class_name: 'Area'
  has_many :children, class_name: 'Area',
                      foreign_key: 'parent_id'

  def parent_name
    # it may not have a parent
    parent.try(:name)
  end

  def has_parent?
    parent.present?
  end

  def has_children?
    children.exists?
  end

  def to_json_output
    attributes.merge(children: children.map(&:to_json_output))
  end

end
