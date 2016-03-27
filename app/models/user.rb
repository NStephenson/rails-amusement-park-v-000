class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :rides
  has_many :attractions, through: :rides


  def mood
    if happiness > nausea
      'happy'
    else
      'sad'
    end
  end

end #end of class


    # create_table :users do |t|
    #   t.string :name
    #   t.integer :nausea
    #   t.integer :happiness
    #   t.integer :tickets
    #   t.integer :height
    #   t.boolean :admin, default: false
    # end