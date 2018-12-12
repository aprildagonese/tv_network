class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    actor_salaries = payroll
    actor_salaries.key(actor_salaries.values.max)
  end

  def payroll
    actor_salaries = {}
    @shows.each do |show|
      show.characters.each do |character|
        actor_salaries[character.actor] = character.salary
      end
    end
    return actor_salaries
  end

end
