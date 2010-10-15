module Soul
  class SolutionParser
    def get_project_name(project_line)
      project_line.split("\"")[3]
    end

    def get_project_file(project_line)
      project_line.split("\"")[5]
    end
  end
end
