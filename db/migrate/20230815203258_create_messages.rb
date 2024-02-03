class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :content

      t.timestamps
    end

    greetings = [
      "Hello, world!",
      "Greetings and salutations!",
      "Hey there, how's it going?",
      "Welcome to our app!",
      "Hi, nice to meet you!",
      "leave me the fuck alone"
    ]

    greetings.each do |greeting|
      Message.create(content: greeting)
    end
  end
end
