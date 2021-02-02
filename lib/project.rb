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
    #if !(@backers.include?(self))
     # @backers << self
  #  end
    backer.backed_projects.add_project(self)
  end
  
end