
Files in the code/ folder:

bulkparse.sh - parses all files for a given language using UDPipe parser
Usage format is mentioned in the last line of the script.

CreateDataset.py - renames original MERLIN corpus file names, indicating the CEFR category, and removes all metadata inside the corpus files.

ErrorStats.py - simple code to understand different kinds of errors identified by language tool. We did not use this information yet - perhaps in future?

IdeaPOC.py - contains all non-embedding experiments. Comments above each function describe what the function does. Separate functions exist for doing monolingual, cross, and multi lingual classification experiments.

monolingual_cv.py - is the program which explores embeddings and different neural architectures for monolingual CEFR

multi_lingual.py - is the program with embeddings and neural arch. for multi-lingual CEFR, which considers language identification as another task, and runs experiments as a multi-task learning.

multi_lingual_no_langfeat.py - is the program without the multi-task learning for multi-lingual classification

TODO: comment the last three python files. 
