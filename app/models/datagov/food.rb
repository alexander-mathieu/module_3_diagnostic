class Datagov::Food
  def initialize(attributes)
    @ndb = attributes[:ndbno]
    @name = attributes[:name]
    @group = attributes[:group]
    @manufacturer = attributes[:manu]
  end
end
