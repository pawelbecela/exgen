class ExercisesController < ApplicationController
  def new
    @notes = [ "c", "d", "e", "f", "g", "a", "h" ]
  end

  def create
    @exercise = Exercise.create!(name: "Przykladowy")

    params[:notes].each do |note_name|
      note = Note.new(name: note_name)
      note.exercise = @exercise
      note.save!
    end

    redirect_to exercise_path(@exercise)
  end

  def show
    @exercise = Exercise.find(params[:id])

    @strings = { "c": { "E6": 8,  "A5": 3,  "D4": 10, "G3": 5,  "H2": 1,  "E1": 8 },
    "d": { "E6": 10, "A5": 5,  "D4": 0,  "G3": 7,  "H2": 3,  "E1": 10 },
    "e": { "E6": 0,  "A5": 7,  "D4": 2,  "G3": 9,  "H2": 5,  "E1": 0 },
    "f": { "E6": 1,  "A5": 8,  "D4": 3,  "G3": 10, "H2": 6,  "E1": 1 },
    "g": { "E6": 3,  "A5": 10, "D4": 5,  "G3": 0,  "H2": 8,  "E1": 3 }, 
    "a": { "E6": 5,  "A5": 0,  "D4": 7,  "G3": 2,  "H2": 10, "E1": 5 },
    "h": { "E6": 7,  "A5": 2,  "D4": 9,  "G3": 4,  "H2": 0,  "E1": 7 } }
  
  end
end

