class Controller
  def initialize(file_to_path)
    @file_path = file_to_path
    @recipes = CSV.read(@file_path)
    process
  end

  def process
    @recipes
  end
end
