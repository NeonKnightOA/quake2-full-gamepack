#! /bin/bash

echo "*** WARNING! ***"
echo " "
echo "This file is designed to be executed from a Python 3 version of the
echo Anaconda terminal."
echo " "
echo "Python 3 and the 'pandas' module are required in order to run these scripts."
echo " "
echo "Before running this script, make sure you have these installed, otherwise"
echo "install Python and run 'pip install pandas'. Otherwise, press Ctrl + C."
echo "and do the aforementioned steps."
echo " "
printf 'Press Enter to continue...'
read _
./dos2unix.py
echo "Creating entity files for Quake II..."
./create_ent.py csv/entities.csv > ../install/Q2Pack/install/baseq2/entities.ent
./create_def.py csv/entities.csv > ../install/Q2Pack/install/baseq2/entities.def
./create_ent.py csv/entities.csv > ../q2.game/baseq2/entities.ent
./create_def.py csv/entities.csv > ../q2.game/baseq2/entities.def
echo "Creating entity files for Quake II: CTF..."
./create_ent.py csv/entities_ctf.csv > ../install/Q2Pack/install/ctf/entities.ent
./create_def.py csv/entities_ctf.csv > ../install/Q2Pack/install/ctf/entities.def
./create_ent.py csv/entities_ctf.csv > ../q2.game/ctf/entities.ent
./create_def.py csv/entities_ctf.csv > ../q2.game/ctf/entities.def
echo "Creating entity files for Quake II: The Reckoning..."
./create_ent.py csv/entities_xatrix.csv > ../install/Q2Pack/install/xatrix/entities.ent
./create_def.py csv/entities_xatrix.csv > ../install/Q2Pack/install/xatrix/entities.def
./create_ent.py csv/entities_xatrix.csv > ../q2.game/xatrix/entities.ent
./create_def.py csv/entities_xatrix.csv > ../q2.game/xatrix/entities.def
echo "Creating entity files for Quake II: Ground Zero..."
./create_ent.py csv/entities_rogue.csv > ../install/Q2Pack/install/rogue/entities.ent
./create_def.py csv/entities_rogue.csv > ../install/Q2Pack/install/rogue/entities.def
./create_ent.py csv/entities_rogue.csv > ../q2.game/rogue/entities.ent
./create_def.py csv/entities_rogue.csv > ../q2.game/rogue/entities.def
printf 'Press Enter to finish...'
read _
