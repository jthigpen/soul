class TestSoul < Test::Unit::TestCase
  def setup
  end
  
  def test_soul_module_imported_in_tests
    assert_equal Soul.class, Module
  end

  def test_soul_module_version_defined
    assert_not_nil defined? Soul::VERSION
  end
  
  def test_can_create_solution_parser
    parser = Soul::SolutionParser.new
    assert_not_nil parser
  end

  def test_can_get_project_name
    solution_parser = Soul::SolutionParser.new
    line = 'Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Bones.Test", "Bones.Test\Bones.Test.csproj", "{4EA753DE-62C8-492E-BE40-E479A03B10BC}"'
    name = solution_parser.get_project_name line
    assert_equal name, "Bones.Test"
  end

  def test_can_get_project_file
    solution_parser = Soul::SolutionParser.new
    line = 'Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Bones.Test", "Bones.Test\Bones.Test.csproj", "{4EA753DE-62C8-492E-BE40-E479A03B10BC}"'
    name = solution_parser.get_project_file line
    assert_equal name, "Bones.Test\\Bones.Test.csproj"
  end

  def test_can_create_solution
    solution = Soul::Solution.new
    assert_not_nil solution
  end

  def test_can_create_project
    project = Soul::Project.new("Bones.Test", "Bones.Test\\Bones.Test.csproj")
    assert_not_nil project
  end

  def test_example_solution_file_exists
    assert File.exists? solution_file
  end

  def test_can_put_projects_in_solution
    solution = Soul::Solution.new
    project = Soul::Project.new("foo", "foo.csproj")
    solution.add_project project
    assert_same solution.projects[0], project
  end

  def test_can_parse_solution
    parser = Soul::SolutionParser.new
    solution = parser.parse solution_file
    assert_equal Soul::Solution, solution.class
  end

  def test_parsed_solution_contains_two_projects
    parser = Soul::SolutionParser.new
    solution = parser.parse solution_file
    assert_equal 1, solution.projects.length
  end

  def test_parsed_solution_contains_correct_project_name
    parser = Soul::SolutionParser.new
    solution = parser.parse solution_file
    project = solution.projects.first
    assert_equal "Bones.Test", project.name
  end

  def test_parsed_solution_contains_correct_project_file_path
    parser = Soul::SolutionParser.new
    solution = parser.parse solution_file
    project = solution.projects.first
    assert_equal "Bones.Test\\Bones.Test.csproj", project.project_file_path
  end
end
