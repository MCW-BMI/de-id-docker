# Pull down the code from bitbucket.org 
git clone https://kowalskg@bitbucket.org/MCW_BMI/unstructured-notes-deidentification.git deid
# Build software
cd deid/DeIdentificationX2
./prep_mvn_repo.sh
mvn package
cd ../..
# Put in our test program that makes it talk to local postgres server
cp examples/postgresTest.sh deid/postgresTest.sh
docker build -t deid .
