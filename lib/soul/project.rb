class Soul::Project
  attr_accessor :name, :project_file_path

  def initialize(name, project_file_path)
    @name = name
    @project_file_path = project_file_path
  end
end
