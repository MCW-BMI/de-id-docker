# De-identification Docker Image



by the Medical College of Wisconsin and MSOE

The following code is used to deidentify data from the following incoming data sets :

* Database
* Flat files ( coming soon )
* HDFS ( coming soon )

After de-identification the data can be written back to a remote database or to
a local Postgres instance .

## Requirements

One needs to have the following installed to run this software

* Docker ( 1.12.* in Beta at this time)
* git
* Runs on mac only ( bat scripts coming soon)

Docker can be installed from [their website](https://www.docker.com/).
To install git we suggest installing  [Homebrew](http://brew.sh/)

Then install git with the command :

```
brew install git
```

## Setup

First download the Linux JDK jdk-8u111-linux-i586.tar.gz at the time of this writing and put it into the archive directory . 

From : http://www.oracle.com/technetwork/java/javase/downloads/index.html 
If a differennt version is present then one will need to update the install_java.sh script to reference that one. 


No matter if one is running a standalone or Local database one needs to first pull down the
git repo of deid software .  This is done with by running :

```
./build.sh
```

This pulls down the recent software and builds the local container .

## Running

### Standalone


### With to local Postgres instance

In this instance we use docker-compose to start up both the "app" and the "db" with
processing going into the postgres db from the app.

#### Configutation
Before one begins the de-id process one needs to set up where one gets the incoming data
and where it's going to .



```python
s = "Python syntax highlighting"
print s
```

## Limitations / Configuration
