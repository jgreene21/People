class ChangePeopleToPersons < ActiveRecord::Migration[6.0]
  def change
    rename_table :people, :persons 
  end
end
