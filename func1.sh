#!/bin/bash


#write a script to findout file is present in the specific location or not?
   #if file presents with the given name - echo file present in the desired location
      # if file is not there , create it in the specific location.


      File_creation (){
	      File_name="$1"
	      Directory_path="/Users/devamyluru/Practice/directorylocation"
	      echo "present working directory: `pwd`"
	      # if directory is not present, new dir will create


	      #! -d  == if directory not exists
	      # -d == if exists


	      if [ -d $Directory_path ];
		         then
				        echo "directory exists"
					   else
						          mkdir -p $Directory_path
							         echo "directory created"
	      fi
	      echo "directory creation if loop execution completed"


	      cd $Directory_path


	      echo "path Changed to given location"
	      echo "path after given working diretcory location: `pwd`"


	      # if file  is not present, new file  will create


	      if [ -f  $File_name ]; then
		         echo "file already exists in the given location"
		 else
			    echo "given file is not present"
			       echo "creating file in the given location"
			          touch $File_name
				     echo "file created in the required path"
	      fi
	      echo "file creation if loop execution completed"
	      echo "script completed"
      }


File_creation $1
