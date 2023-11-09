# identity matrix
I = diagm(0=>ones(3))

#
Pkg.add("PyCall")
using PyCall
run(`$(PyCall.python) -m pip install pydicom`)
pydicom = pyimport("pydicom")
img = pydicom.read_file("HN_CHUM_004_0051.dcm")
