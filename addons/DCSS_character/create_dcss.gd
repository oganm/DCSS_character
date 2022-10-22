@tool
extends EditorScript



func list_files_in_directory(path, ends_with = '')->Array:
	var files = []
	var dir = DirAccess.open(path)
	dir.list_dir_begin()
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif not file.begins_with(".") && file.ends_with(ends_with):
			files.append(file)
	dir.list_dir_end()
	return files

var asset_dir = 'res://addons/DCSS_character/player/'

# Called when the script is executed (using File -> Run in Script Editor).
func _run():
	
	var dir = DirAccess.open(asset_dir)
	
	print('@tool')
	print('extends Node2D\n\n')
	
	print('var asset_dir = "' + asset_dir + '"\n')
	var dirs = list_files_in_directory(asset_dir)
	
	for x in dirs:
		var files = list_files_in_directory(asset_dir+x,'.png')
		var enum_define = "enum "+ x+'_enum {none'
		var var_define = '@export var ' + x + ":" + x + "_enum = 0:\n\tset = set_"+ x
		for y in files:
			var original = y
			y = y.replace('-','_')
			if y != original:
				dir.rename(asset_dir+x + '/' + original,asset_dir+ x + '/' + y)
			enum_define = enum_define + ', ' + y.get_basename()
		enum_define += "}"
		
		var setter = 'func set_' + x + "(_"+ x + "):\n\t" + x + " = _" + x + "\n"
		setter = setter + "\tif " + x +' != 0:\n' 
		setter = setter + "\t\tget_node('" + x.capitalize() + "').texture = load(asset_dir + '/" + x + "/' + "+ x + '_enum.keys()['+x + "]+'.png')\n"
		setter = setter + "\telse:\n\t\tget_node('" + x.capitalize() + "').texture = null\n"
		
		print(enum_define)
		print(var_define)
		print(setter)
