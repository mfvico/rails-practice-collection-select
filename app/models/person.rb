class Person < ActiveRecord::Base

  def full_name
    "#{first_name} #{last_name}"
  end

  has_many :employments
  has_many :job_titles, through: :employments
  has_many :locations, through: :employments
  has_many :organizations, through: :employments

end
