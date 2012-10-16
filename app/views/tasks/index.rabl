collection @tasks

attributes :id, :title, :description
child(:user) { attributes :name }
