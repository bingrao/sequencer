#! /bin/bash

if [ ! -f $OpenNMT_py/preprocess.py ]; then
    print "OpenNMT_py environment variable should be set"
    exit 1
fi
if [ ! -d $data_path ]; then
    data_path="/home/z/zimin/pfs/deepmutation_OpenNMT/data/50"
    if [ ! -d $data_path ]; then
        # For now, choose between 2 hard coded paths - Zimin's and Steve's
        data_path="/s/chopin/l/grad/steveko/p/codrep/deepmutation_OpenNMT/data/50"
    fi
fi
cd $OpenNMT_py
python preprocess.py -config $data_path/config/golden_config_1.yml