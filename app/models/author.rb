class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end


end

#### Author

# - `Author#initialize(name)`
#   - An author is initialized with a name, as a string.
#   - A name **cannot** be changed after it is initialized.
# - `Author#name`
#   - Returns the name of the author