import numpy as np
cimport numpy as np
np.import_array()

# We now need to fix a datatype for our arrays. I've used the variable
# DTYPE for this, which is assigned to the usual NumPy runtime
# type info object.
DTYPE = float
# "ctypedef" assigns a corresponding compile-time type to DTYPE_t. For
# every type in the numpy module there's a corresponding compile-time
# type with a _t-suffix.
ctypedef np.float_t DTYPE_t

from ConfigSpace.hyperparameters.uniform_integer cimport UniformIntegerHyperparameter


cdef class BetaIntegerHyperparameter(UniformIntegerHyperparameter):
    cdef public alpha
    cdef public beta
    cdef public bfhp
    cdef public normalization_constant
