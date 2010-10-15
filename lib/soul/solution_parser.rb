module Soul
  class SolutionParser
    def parse(filename)
      solution = Solution.new

      File.open(filename).read().each do |line|
        if line.start_with? "Project" 
          project = parse_line line
          solution.add_project project
        end
      end

      return solution
    end

    def parse_line(line)
      name = get_project_name line
      project_file = get_project_file line
      return Project.new(name, project_file)
    end

    def get_project_name(project_line)
      project_line.split("\"")[3]
    end

    def get_project_file(project_line)
      project_line.split("\"")[5]
    end
  end
end
