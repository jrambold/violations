class Violation
  attr_reader :id,
              :inspection_id,
              :category,
              :date,
              :date_closed,
              :type

  def initialize(id, inspection_id, category, date, date_closed, type)
    @id = id
    @inspection_id = inspection_id
    @category = category
    @date = date
    @date_closed = date_closed
    @type = type
  end
end
