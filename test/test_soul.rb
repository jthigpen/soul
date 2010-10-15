require File.dirname(__FILE__) + '/test_helper.rb'

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
    project = Soul::Project.new
    assert_not_nil project
  end

  def test_can_put_projects_in_solution
    solution = Soul::Solution.new
    project = Soul::Project.new
    solution.add_project project
    assert_same solution.projects[0], project
  end
end
