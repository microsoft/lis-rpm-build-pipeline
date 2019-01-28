#
# Script to build RPM's using latest LIS code, it will build the RPM's and copy it to LISISO folder
# currently we have two source tree one for RHEL 5 and one for RHEL6 
#
#
import os 
import sys
import shutil
import subprocess
import datetime

homedir = os.getcwd()
directory = "lis-next"
if os.path.exists(directory):
 shutil.rmtree(directory)

def run(cmd):
 output = subprocess.call(cmd,shell=True)
 return output

def updatebuildname(path, buildname):
 regex='microsoft-hyper-v-kmod ='

 file_list = []
 linetosearch =[]
 for file in os.listdir(path):
  if file.endswith(".spec"):
   file_list.append(file)

 file_list = [path+list for list in file_list ]
 
 for file in file_list:
  with open(file, "r") as myfile:
   for line in myfile :
    if regex  in line:
     linetosearch = line.split(' ')
     currentversion = linetosearch[-1].strip('\n')
  cmdstring = "sed -i 's/%s/%s/g' %s" % (currentversion,buildname, file)
  run(cmdstring)

def buildrhel5(branch, buildname,source):
 os.makedirs(directory)
 run("git clone "+source)
 os.chdir(directory+"/hv-rhel5.x/")
 run("git checkout "+ branch)
 run("tar -cvzf lis-next-rh5.tar.gz hv")
 shutil.copy("lis-next-rh5.tar.gz" , homedir+"/rh5/SOURCES/")
 os.chdir(homedir)
 shutil.rmtree(directory)
 found = False

 rhel5buildpath = homedir+"/rh5/pbuild"
 rhel5specfiledpath = homedir+"/rh5/SPECS/"
 pbuildconfigfile = homedir+"/rh5/pbuild/.pbuild"
 pbuildMakefile = homedir+"/rh5/pbuild/Makefile"

# delete the logdir line form .pbuild file.
 myfile = open(pbuildconfigfile,"r")
 lines = myfile.readlines()
 myfile.close()
 myfile = open(pbuildconfigfile,"w")
 for line in lines:
  if not "logdir: " in  line:
   myfile.write(line)
 myfile.close()

# set ENV variable in shell to expose config .pbuild file location
 os.environ['PBUILD'] = pbuildconfigfile
 with open(pbuildconfigfile, "a") as file:
  file.write("logdir: "+homedir+"/Log/rh5")

# delete the homedir line form Makefile. 
 myfile = open(pbuildMakefile,"r")
 lines = myfile.readlines()
 myfile.close()

 myfile = open(pbuildMakefile,"w")
 for line in lines:
  if not "homedir=" in  line:
   myfile.write(line)
 myfile.close()


# write a new homedir to Makefile 
 with open(pbuildMakefile, "a") as myfile:
  myfile.write("homedir="+homedir)

#update the buildname
 print "rhel5specfiledpath is"  +rhel5specfiledpath
 updatebuildname(rhel5specfiledpath, buildname)


 # Change direcoty to buildpath, before building .
 os.chdir(rhel5buildpath)

 # Now clean the destination VM's .
 make = run("make")
 if make :
  print "make failed"
  sys.exit(1)
 os.chdir(homedir)

def buildrhel6(branch, buildname,source):
 os.makedirs(directory)
 run("git clone "+source)
 os.chdir(directory+"/hv-rhel6.x/")
 run("git checkout "+ branch)
 run("tar -cvzf lis-next-rh6.tar.gz hv")
 shutil.copy("lis-next-rh6.tar.gz" , homedir+"/rh6/SOURCES/")
 os.chdir(homedir)
 shutil.rmtree(directory)
 found = False

 rhel6buildpath=homedir+"/rh6/pbuild"
 pbuildMakefile = homedir+"/rh6/pbuild/Makefile"
 rhel6specfilepath = homedir+"/rh6/SPECS/"
 pbuildconfigfile=homedir+"/rh6/pbuild/.pbuild"

# delete the logdir line form .pbuild file.
 myfile = open(pbuildconfigfile,"r")
 lines = myfile.readlines()
 myfile.close()
 myfile = open(pbuildconfigfile,"w")
 for line in lines:
  if not "logdir: " in  line:
   myfile.write(line)
 myfile.close()

# set ENV variable in shell to expose config .pbuild file location
 os.environ['PBUILD'] = pbuildconfigfile
 with open(pbuildconfigfile, "a") as file:
  file.write("logdir: "+homedir+"/Log/rh6")

# delete the homedir line form Makefile.
 myfile = open(pbuildMakefile,"r")
 lines = myfile.readlines()
 myfile.close()

 myfile = open(pbuildMakefile,"w")
 for line in lines:
  if not "homedir=" in  line:
   myfile.write(line)
 myfile.close()

# write a new homedir to Makefile
 with open(pbuildMakefile, "a") as myfile:
  myfile.write("homedir="+homedir)

#update the buildname
 updatebuildname(rhel6specfilepath, buildname)

 # Change direcoty to buildpath, before building . 
 os.chdir(rhel6buildpath)
 
 # Now clean the destination VM's .
 make = run("make")
 if make : 
  print "make failed"
  sys.exit(1)
 os.chdir(homedir)

def buildrhel7(branch, buildname,source):
 os.makedirs(directory)
 run("git clone "+source)
 os.chdir(directory+"/hv-rhel7.x/")
 run("git checkout "+ branch)
 run("tar -cvzf lis-next-rh7-mlx.tar.gz hv")
 run("rm -f hv/mlnx-ofa_kernel-4.5.tgz")
 run("tar -cvzf lis-next-rh7.tar.gz hv")
 shutil.copy("lis-next-rh7-mlx.tar.gz" , homedir+"/rh7/SOURCES/")
 shutil.copy("lis-next-rh7.tar.gz" , homedir+"/rh7/SOURCES/")
 os.chdir(homedir)
 shutil.rmtree(directory)
 found = False

 rhel7buildpath = homedir+"/rh7/pbuild"
 rhel7specfilepath= homedir+"/rh7/SPECS/"
 pbuildMakefile = homedir+"/rh7/pbuild/Makefile"
 pbuildconfigfile = homedir+"/rh7/pbuild/.pbuild"

# delete the logdir line form .pbuild file.
 myfile = open(pbuildconfigfile,"r")
 lines = myfile.readlines()
 myfile.close()
 myfile = open(pbuildconfigfile,"w")
 for line in lines:
  if not "logdir: " in  line:
   myfile.write(line)
 myfile.close()

# set ENV variable in shell to expose config .pbuild file location
 os.environ['PBUILD'] = pbuildconfigfile
 with open(pbuildconfigfile, "a") as file:
  file.write("logdir: "+homedir+"/Log/rh7")

# delete the homedir line form Makefile.
 myfile = open(pbuildMakefile,"r")
 lines = myfile.readlines()
 myfile.close()
 myfile = open(pbuildMakefile,"w")
 for line in lines:
  if not "homedir=" in  line:
   myfile.write(line)
 myfile.close()

# write a new homedir to Makefile
 with open(pbuildMakefile, "a") as myfile:
  myfile.write("homedir="+homedir)

#update the buildname
 updatebuildname(rhel7specfilepath, buildname)

 # Change direcoty to buildpath, before building .
 os.chdir(rhel7buildpath)

 # Now clean the destination VM's .
 make = run("make")
 if make :
  print "make failed"
  sys.exit(1)
 os.chdir(homedir)
 

### Main entry for script.###

import argparse

if __name__ == '__main__':
 parser = argparse.ArgumentParser(description='Provide argument for LIS RPM build.')
 parser.add_argument("distro", help="Specify distro version you want to build, you can specify one at a time or all for all three. ")
 
 parser.add_argument("--branch", help="Specify branch e.g. master,4.2.1")
 parser.add_argument("buildname", help="Specify buildname  e.g. master,4.2.1")
 parser.add_argument("source", help="Specify GitHUb URL for source  e.g. https://github.com/LIS/lis-next")
    
 args = parser.parse_args()
 distro = args.distro
 if distro is None:
  print "Nothing is spoecified for distro: will exit now"
  sys.exit

 branch = args.branch
 if branch is None:
  print "Nothing is spoecified for branch  : will select master"
  branch ="master"

 source = args.source
 if source is None:
  print "Nothing is spoecified for source  : will select LIS/lis-next"
  source ="https://github.com/LIS/lis-next"
 if not "github" in source:
  print "Please specify github URL for source, exiting.."
  sys.exit()

 buildname = args.buildname
 if buildname is None:
  print "Nothing is spoecified for buildname  : will exit now"
  sys.exit()

 if distro == "rh5":
  print "RHEL5 Build initializing...."
  buildrhel5(branch,buildname,source)
 
 if distro == "rh6":
  print "RHEL6 Build initializing...."
  buildrhel6(branch, buildname,source)

 if distro == "rh7":
  print "RHEL7 Build initializing...."
  buildrhel7(branch, buildname,source)

 if distro == "all":
  print "RHEL5 Build initializing...."
  buildrhel5(branch,buildname,source)
  print "RHEL6 Build initializing...."
  buildrhel6(branch, buildname,source)
  print "RHEL7 Build initializing...."
  buildrhel7(branch, buildname,source)

# Claen all the RPMS from LISISO folder
# run("./cleanall.sh")

# copy all the RPMs back to LISISO folder
# run("./copyall.sh")

# Tar the LISISO directory.
# tarrpm = "lis-rpm-autogen-"+datetime.date.today().strftime("%d, %Y")
# tarcmd=("tar -cvzf %s LISISO") % (tarrpm)
# run("tarcmd")

