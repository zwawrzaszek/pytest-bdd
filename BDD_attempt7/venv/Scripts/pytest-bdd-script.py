#!C:\Users\Zachary\CSC256Stuff\BDD_attempt7\venv\Scripts\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'pytest-bdd==3.1.0','console_scripts','pytest-bdd'
__requires__ = 'pytest-bdd==3.1.0'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('pytest-bdd==3.1.0', 'console_scripts', 'pytest-bdd')()
    )
