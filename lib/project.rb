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
    if !(@backers.include?(self))
      @backers << backer
    end
    backer.back_project(self)
  end
  
end