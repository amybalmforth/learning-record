class Secretdiary

attr_reader :locked, :entries, :entry

def initialize
  @locked = true
  @entries = []
  @entry = entry
end

def unlock
  @locked = false
end

def lock
  @locked = true
end

def add_entry(entry)
  @entries << entry
end





end
