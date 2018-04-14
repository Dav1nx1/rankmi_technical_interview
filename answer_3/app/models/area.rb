class Area < ActiveRecord::Base
  belongs_to :parent, class_name: 'Area', optional: true
  has_many :children, class_name: 'Area',
                      foreign_key: 'parent_id'

  validates_presence_of :name, :nota

  after_save :update_qualify

  def parent?
    # Valida que el area, seleccionada, tiene un area padre. 
    parent.present?
  end

  def update_qualify
    # Maneja las actualizaciones, segun la logica de negocio, indica que si se
    # actualiza un area sus areas padres son actualizadas con el promedio
    # de sus hijos, y asi recursivamente.
    return unless parent?
    ActiveRecord::Base.transaction do
      parent.nota = parent.children.map(&:nota).inject(0, &:+) / parent.children.size
      parent.save
    end
  end

  def to_json_output
    # Metodo que maneja la impresion tipo arbol, para el index
    attributes.merge(children: children.map(&:to_json_output))
  end
end
