class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon(name, type) VALUES(?,?)", name, type)
  end

  def self.find(id, database_connection)
    database_connection.execute("SELECT * FROM pokemon WHERE id = id")
  end

  # def alter_hp (health_power)
  #   @db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", health_power, @id);
  # end
  # ALTER TABLE pokemon ADD hp INETGER DEFAULT 60; 
end
