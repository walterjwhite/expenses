import git:install/time.sh

_expenses_filename() {
	local decade=$(_time_decade)
	local name=$(date +%Y)

	local directory=$_CONF_INSTALL_APPLICATION_DATA_PATH
	if [ $# -gt 0 ]; then
		directory=$1
		shift
	fi

	_EXPENSES_FILE=$directory/.expenses/$decade/$name.csv
	mkdir -p $(dirname $_EXPENSES_FILE)
}
