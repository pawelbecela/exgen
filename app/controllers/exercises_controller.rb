class ExercisesController < ApplicationController
  def new
    @notes = [ "c", "d", "e", "f", "g", "a", "h" ]
    @patterns = [ "1", "2", "3" ]
  end

  def create
    @exercise = Exercise.create!(name: params[:name],
                                 low: params[:low],
                                 high: params[:high],
                                 pattern: params[:pattern])

    params[:notes].each do |note_name|
      note = Note.new(name: note_name)
      note.exercise = @exercise
      note.save!
    end

    redirect_to exercise_path(@exercise)
  end

  def show
    @exercise = Exercise.find(params[:id])

    e1_str = { "e": 0, "f": 1, "g": 3, "a": 5, "h": 7, "c": 8, "d": 10 }
    h2_str = { "h": 0, "c": 1, "d": 3, "e": 5, "f": 6, "g": 8, "a": 10 }
    g3_str = { "g": 0, "a": 2, "h": 4, "c": 5, "d": 7, "e": 9, "f": 10 }
    d4_str = { "d": 0, "e": 2, "f": 3, "g": 5, "a": 7, "h": 9, "c": 10 }
    a5_str = { "a": 0, "h": 2, "c": 3, "d": 5, "e": 7, "f": 8, "g": 10 }
    e6_str = { "e": 0, "f": 1, "g": 3, "a": 5, "h": 7, "c": 8, "d": 10 }

    @e1_tabs = []
    @exercise.notes.each do |note|
      tab = e1_str[note.name.to_sym]
      @e1_tabs << tab if tab <= @exercise.high && tab >= @exercise.low
    end

    @h2_tabs = []
    @exercise.notes.each do |note|
      tab = h2_str[note.name.to_sym]
      @h2_tabs << tab if tab <= @exercise.high && tab >= @exercise.low
    end

    @g3_tabs = []
    @exercise.notes.each do |note|
      tab = g3_str[note.name.to_sym]
      @g3_tabs << tab if tab <= @exercise.high && tab >= @exercise.low
    end
      
    @d4_tabs = []
    @exercise.notes.each do |note|
      tab = d4_str[note.name.to_sym]
      @d4_tabs << tab if tab <= @exercise.high && tab >= @exercise.low
    end
      
    @a5_tabs = []
    @exercise.notes.each do |note|
      tab = a5_str[note.name.to_sym]
      @a5_tabs << tab if tab <= @exercise.high && tab >= @exercise.low
    end

    @e6_tabs = []
    @exercise.notes.each do |note|
      tab = e6_str[note.name.to_sym]
      @e6_tabs << tab if tab <= @exercise.high && tab >= @exercise.low
    end
  end
end

