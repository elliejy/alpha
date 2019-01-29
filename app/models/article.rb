class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length: { minimum: 3, maximum: 50}
    validates :description, presence: true, length: { minimum: 10, maximum: 300}
    validates :user_id, presence: true
end
#rails magically create things in between (CRUD). go to rails console to modify the model     
