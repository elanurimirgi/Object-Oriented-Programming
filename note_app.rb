class Note 
    attr_accessor :title, :content
    def initialize(title, content)
        @title = title
        @content = content
      end
end

class Notebook
    def initialize
        @notes = []
    end

    def add_notes(title, content)
        @notes << Note.new(title, content)
    end

    def edit_notes(index, title, content)
        @notes[index].title = title
        @notes[index].content = content
      end

      def remove_notes(index)
        @notes.delete_at(index)
      end

    def display_notes
        @notes.each_with_index do |note, index|
        puts "#{index + 1}. #{note.title}: #{note.content}"
        end
    end
end

notebook = Notebook.new
notebook.add_notes("Title 1", "Content 1")
notebook.add_notes("Title 2", "Content 2")
notebook.edit_notes(1, "New Title", "New Content") 
notebook.remove_notes(1)
notebook.display_notes
