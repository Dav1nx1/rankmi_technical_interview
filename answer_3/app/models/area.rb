class Area < ActiveRecord::Base
  belongs_to :parent, class_name: 'Area', optional: true
  has_many :children, class_name: 'Area',
                      foreign_key: 'parent_id'

  after_save :update_qualify

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

  def update_qualify
    return unless has_parent?
    chidrens = parent.children
    parent.nota = parent.children.map(&:nota).inject(0, &:+) / parent.children.size
    parent.save
  end

  def to_json_output
    attributes.merge(children: children.map(&:to_json_output))
  end

end
