class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code]
  belongs_to :hotel

  # SELECT * FROM employees where manager_sin = #{sin} AND sin != #{sin};
  def employees
    self.class.where("manager_sin = '#{sin}' AND sin != '#{sin}'")
  end

  # SELECT * FROM employees where sin = #{manager_sin} LIMIT 1;
  def manager
    self.class.where("sin = '#{manager_sin}'").first
  end

  # SELECT 1 AS one FROM "employees" WHERE (manager_sin = #{sin} AND sin != #{sin}) LIMIT 1
  def is_manager?
    !employees.empty?
  end
end
