class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :carts
  belongs_to :current_cart, :class_name => "Cart"
  
  def create_current_cart
    new_cart = carts.create
    self.current_cart_id = new_cart.id
    save
  end
  
  # def create_current=(cart)
  #   self.current_cart_id = cart.id if cart
  #   @current_cart = cart
  #   self.save
  # end
  
  # def current_cart
  #   @current_cart = Cart.find_by[id: self.current_cart_id]
  # end
  
  # def orders
  #   self.carts.where("status = 'submitted'")
  # end 

  def remove_cart
    self.current_cart_id = nil
    save
  end  
  
end 