class ExercisesController < ApplicationController
  def new
    @notes = [ "c", "d", "e", "f", "g", "a", "h" ]
  end

  def create
    @exercise = Exercise.create!(name: params[:name],
                                 low: params[:low],
                                 high: params[:high])

    params[:notes].each do |note_name|
      note = Note.new(name: note_name)
      note.exercise = @exercise
      note.save!
    end

    redirect_to exercise_path(@exercise)
  end

  def show
    @exercise = Exercise.find(params[:id])

    @E1 = { "c": 8,  "d": 10, "e": 0, "f": 1,  "g": 3,  "a": 5,  "h": 7 }
    @H2 = { "c": 1,  "d": 3,  "e": 5, "f": 6,  "g": 8,  "a": 10, "h": 0 }
    @G3 = { "c": 5,  "d": 7,  "e": 9, "f": 10, "g": 0,  "a": 2,  "h": 4 }
    @D4 = { "c": 10, "d": 0,  "e": 2, "f": 3,  "g": 5,  "a": 7,  "h": 9 }
    @A5 = { "c": 3,  "d": 5,  "e": 7, "f": 8,  "g": 10, "a": 0,  "h": 2 }
    @E6 = { "c": 8,  "d": 10, "e": 0, "f": 1,  "g": 3,  "a": 5,  "h": 7 }
  
  end
end

