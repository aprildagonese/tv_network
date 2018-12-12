class Character
  attr_reader :data, :name, :actor, :salary

  def initialize(data)
    @data = data
    @name = @data[:name]
    @actor = @data[:actor]
    @salary = @data[:salary]
  end

end
