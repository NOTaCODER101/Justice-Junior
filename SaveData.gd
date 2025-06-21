extends Resource

class_name SaveData

var path:String="user://SaveData.txt"

var starslist=[0,-1,-1,-1,-1]


func savedat():
	var file=FileAccess.open(path,FileAccess.WRITE)
	file.store_var(starslist)

func saveexists():
	return FileAccess.file_exists(path)

func loaddat():
	var file=FileAccess.open(path,FileAccess.READ)
	return file.get_var()


func updateStars(level,stars):
	if starslist[level-1]<stars:
		starslist[level-1]=stars

func  resetStars():
	for i in len(starslist):
		starslist[i]=-1
	starslist[0]=0
