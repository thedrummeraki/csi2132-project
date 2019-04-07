class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_save :ensure_address!
  before_save :ensure_manager!

  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code], optional: true
  belongs_to :hotel, dependent: :destroy

  has_many :bookings, foreign_key: :employee_sin
  has_many :rentings, foreign_key: :employee_sin

  has_many :employees, foreign_key: :manager_sin

  before_destroy {
    bookings.update_all(employee_sin: nil)
    rentings.update_all(employee_sin: nil)
    
    if employees.size > 0
      employees.destroy_all
    end
  }

  before_save {
    role.downcase! if role
  }

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

  def get_role
    is_manager? ? 'manager' : 'regular'
  end

  def avatar_url(size: 300)
    "https://api.adorable.io/avatars/#{size}/#{sin}.png"
  end

  def new_bookings_count
    Booking.where(status: 'started').count
  end

  def self.list_managers
    all.to_a.select{|e| e.is_manager?}.collect{|m| [m.full_name, m.sin]}
  end

  private

  def ensure_manager!
    if manager.nil?
      return if manager_sin == sin
      errors.add(:manager, 'must exist.')
      throw :abort
    end
  end
end
