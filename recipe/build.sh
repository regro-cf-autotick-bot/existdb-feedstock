mkdir -p "${PREFIX}/share/existdb"
mkdir -p "${PREFIX}/share/existdb/webapp/WEB-INF/data"

echo "EXIST_HOME=${PREFIX}/share/existdb
INSTALL_PATH=${PREFIX}/share/existdb
MAX_MEMORY=1024
CACHE_MEM=256
EXIST_DATA_DIR=${PREFIX}/share/existdb/var/webapp/WEB-INF/data
EXIST_LOGS_DIR=${PREFIX}/share/existdb/var/webapp/WEB-INF/log
adminPasswd=admin" > "${RECIPE_DIR}/options.txt"

# Install the database
java -jar "${SRC_DIR}/existdb.jar" -console -options "${RECIPE_DIR}/options.txt"
