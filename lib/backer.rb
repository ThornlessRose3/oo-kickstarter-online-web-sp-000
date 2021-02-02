class Backer
  
  attr_accessor :name
  
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def backed_projects
    @backed_projects.dup.freeze
  end
  
  def back_project(project)
    if !(project.backers.include?(self))
      project.backers.add_backer(self)
    end
    @backed_projects << project
  end
  
end