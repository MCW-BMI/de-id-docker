#!/bin/bash
#
#  For Update of Results the program generates an update statement with the following format :
#  String preparedQuery = "update " + deidNotesTableName + " set " + deidNoteTextColumn + " = ? where " + deidIdColumn + " = ? ";
#  The order of the fields in the "-query" line for getting the data is important , but not the names.
#
 
cd /root/deid
echo "Started Deidentification Process on " `date`
java -Xms2048M -Xmx2048M -jar DeIdentificationX2/target/DeIdentificationX2-0.0.1-SNAPSHOT.one-jar.jar \
-dburl "jdbc:postgresql://mytestserver:5432/deid" \
-login "deid" \
-password "ctsi4you" \
-dbdriver "org.postgresql.Driver" \
-nthreads 10  \
-recordsperthread 100  \
-query "select id , id as note_id, note_text , date_off from testdata" \
-namedentityrecognitionclass "deidentification.mcw.NamedEntityRecognitionMCWx3" \
-regexdeidentificationclass "deidentification.mcw.DeidentificationRegexMCWx2" \
-update-only true \
-updatequery "update date_off set note_text_deid = ? where id = ?" \
-whitelistfilename "DeIdentificationX2/whitelist.txt" \
-blacklistfilename "DeIdentificationX2/blacklist.txt"
