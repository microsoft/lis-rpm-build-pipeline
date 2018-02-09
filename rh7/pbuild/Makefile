ip=$(shell ip addr | grep 'state UP' -A2 | tail -n1 | awk  '{print $$2}' | cut -f1 -d'/')

all: clean  send build

.PHONY : all
clean:
	python pbuild.py --nocurses --command="rm -vrf /root/rpmbuild/RPMS/*"
	python pbuild.py --nocurses --command="rm -vrf /root/rpmbuild/SRPMS/*"
	python pbuild.py --nocurses --command="rm -vrf /root/rpmbuild/SOURCES/*"	
	python pbuild.py --nocurses --command="rm -vrf /root/rpmbuild/SPECS/*"

send:
	python pbuild.py --nocurses --command=" yes | scp $(ip):$(homedir)/rh7/SOURCES/* /root/rpmbuild/SOURCES/"
	python pbuild.py --nocurses --command="scp $(ip):$(homedir)/rh7/SPECS/buildrpms.sh /root/rpmbuild/SPECS/"
	python pbuild.py --nocurses --command="scp $(ip):$(homedir)/rh7/SPECS/*.spec /root/rpmbuild/SPECS/"

build:
	python pbuild.py --nocurses --command="/root/rpmbuild/SPECS/buildrpms.sh"

homedir=/root/lis-rpm-build-pipeline1