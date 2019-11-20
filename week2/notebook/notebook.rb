# Create an instance of Notebook class passing in an instance of Note as an argument: e.g. notebook = Notebook.new(note = Note.new)

class Notebook

attr_reader :notes

  def initialize(note)
    @notes = []
    @note = note
  end

  def new_note(text, tag)
    @note.create_note(text, tag)
  end

  def save(note)
    @notes << note
  end

end

class Note

  def create_note(text, tag)
    @text = text
    @tag = tag
  end

end
