#!/usr/bin/env bash

ATT=${1:-"WARC-Record-ID"}
INFILE=${2:-"hdfs:///user/bbkruit/CommonCrawl-sample.warc.gz"}

PYSPARK_PYTHON=/home/wdps1703/nltk_env/nltk_env/bin/python ~/spark-2.1.2-bin-without-hadoop/bin/spark-submit --conf spark.yarn.appMasterEnv.PYSPARK_PYTHON=/home/wdps1703/nltk_env/nltk_env/bin/python --master yarn --archives /home/wdps1703/nltk_env.zip#NLTK ner_module.py $ATT $INFILE
