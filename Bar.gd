extends Spatial

var note_scn = preload("res://Note.tscn")

var note_scale # 0.005
var bar_data

func _ready():
	add_notes()

func add_notes():
	var line = 1
	for line_data in bar_data:
		var notes_data = line_data.notes
		for note_data in notes_data:
			var note = note_scn.instance()
			note.line = line
			note.position = int(note_data.pos)*note_scale
			add_child(note)
		line += 1
