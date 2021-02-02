class Backer
  
  attr_accessor :title
  
  
  def initialize(title)
    @title = tile
    @backed_projects = []
  end
  
  def backed_projects
    @backed_projects.dup.freeze
  end
  
  def back_project(project)
    if project.backer != self
      project.backer = self
    end
    @backed_projects << project    
  
end