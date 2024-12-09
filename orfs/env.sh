if [[ "$OSTYPE" == "darwin"* ]]; then
  DIR="$(dirname $(perl -e 'use Cwd "abs_path";print abs_path(shift)' "${BASH_SOURCE[0]}"))"
else
  DIR="$(dirname $(readlink -f "${BASH_SOURCE[0]}"))"
fi

if [ -f /opt/rh/rh-python38/enable ]; then
  source /opt/rh/rh-python38/enable
fi

export OPENROAD=/foss/tools/openroad
echo "OpenROAD: ${OPENROAD}"

# export OPENROAD_EXE=/foss/tools/openroad-latest/bin/openroad
export OPENROAD_EXE=/foss/tools/openroad/bin/openroad
echo "OpenROAD EXE: ${OPENROAD_EXE}"

# export OPENSTA_EXE=/foss/tools/openroad-latest/bin/sta
export OPENSTA_EXE=/foss/tools/openroad/bin/sta
echo "OpenSTA EXE: ${OPENSTA_EXE}"

export YOSYS_EXE=/foss/tools/yosys/bin/yosys
echo "Yosys EXE : ${YOSYS_EXE}"

export KLAYOUT_DIR=/foss/tools/klayout
echo "KLayout DIR: ${KLAYOUT_DIR}"

export PATH=/foss/tools/openroad/bin:$PATH
export PATH=/foss/tools/yosys/bin:$PATH
export PATH=${DIR}/dependencies/bin:$PATH

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/Applications/KLayout/klayout.app/Contents/MacOS:$PATH"
  export PATH="$(brew --prefix bison)/bin:$(brew --prefix flex)/bin:$(brew --prefix tcl-tk)/bin:$PATH"
  export CMAKE_PREFIX_PATH="$(brew --prefix or-tools)"
fi

export FLOW_HOME=$DIR/flow