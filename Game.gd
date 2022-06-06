extends Spatial

onready var music_node = $Music
onready var road_node = $Road

var audio
var audio_file = "res://audio.ogg"

var tempo
var bar_length_in_m
var quarter_time_in_sec
var speed
var note_scale
var start_pos_in_sec

func _ready():
	audio = load(audio_file)
	calc_params()
	
	music_node.setup(self)
	road_node.setup(self)
	
func calc_params():
	tempo = 107
	bar_length_in_m = 8 #Godot meters
	quarter_time_in_sec = 60/float(tempo)
	speed = bar_length_in_m/float(4*quarter_time_in_sec)
	note_scale = bar_length_in_m/float(4*400)
	start_pos_in_sec = 0.1
