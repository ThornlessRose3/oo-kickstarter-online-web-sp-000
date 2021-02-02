class Project

  attr_accessor :title
  
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backers
    @backers.dup.freeze
  end
  
  def add_backer(backer)
    if @backers.include?!(self)
      project.backer = self
    end
    @backed_projects << project
  end
  
end
end