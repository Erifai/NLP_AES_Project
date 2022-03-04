#Create a new dataset with renamed files, removed metadata etc.

import os

dirpath = "Research/CrossLing-Scoring/Corpora/" #CZ_ltext_txt", DE_ltext_txt, IT_ltext_txt
outputdirpath = "Research/CrossLing-Scoring/Corpora/Renamed/"
files = os.listdir(dirpath)

inputdirs = ["CZ_ltext_txt", "DE_ltext_txt", "IT_ltext_txt"]
outputdirs = ["CZ","DE","IT"]

for i in range(0, len(inputdirs)):
    files = os.listdir(os.path.join(dirpath,inputdirs[i]))
    for file in files:
        print(file)
        if file.endswith(".txt"):
            content = open(os.path.join(dirpath,inputdirs[i],file),"r").read()
            cefr = content.split("Learner text:")[0].split("Overall CEFR rating: ")[1].split("\n")[0]
            newname = file.replace(".txt","") + "_" + outputdirs[i] + "_" + cefr + ".txt"
            fh = open(os.path.join(outputdirpath,outputdirs[i],newname), "w")
            text = content.split("Learner text:")[1].strip()
            print("wrote: ", os.path.join(outputdirpath,outputdirs[i],newname))
