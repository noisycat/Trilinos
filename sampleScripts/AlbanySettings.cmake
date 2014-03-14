#Typical options needed to build the "full" version of Albany
#

SET(DART_TESTING_TIMEOUT "600" CACHE STRING "" FORCE)

SET(TPL_ENABLE_Boost ON CACHE BOOL "" FORCE)
SET(TPL_ENABLE_BoostAlbLib ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_ThreadPool ON CACHE BOOL "" FORCE)

SET(Trilinos_ENABLE_EXPORT_MAKEFILES OFF CACHE BOOL "" FORCE)
SET(Trilinos_ASSERT_MISSING_PACKAGES OFF CACHE BOOL "" FORCE)

SET(Trilinos_ENABLE_ALL_PACKAGES OFF CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES OFF CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_SECONDARY_STABLE_CODE ON CACHE BOOL "" FORCE)

SET(Trilinos_ENABLE_Teuchos ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Shards ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Sacado ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Epetra ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_EpetraExt ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Ifpack ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_AztecOO ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Amesos ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Anasazi ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Belos ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_ML ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Phalanx ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Intrepid ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_NOX ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Stratimikos ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Thyra ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Rythmos ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_MOOCHO ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_OptiPack ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_GlobiPack ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Stokhos ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Isorropia ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Piro ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_STK ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Teko ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Zoltan ON CACHE BOOL "" FORCE)

SET(Trilinos_ENABLE_Mesquite OFF CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_FEI OFF CACHE BOOL "" FORCE)

SET(Phalanx_ENABLE_TEUCHOS_TIME_MONITOR ON CACHE BOOL "" FORCE)
SET(Stokhos_ENABLE_TEUCHOS_TIME_MONITOR ON CACHE BOOL "" FORCE)
SET(Stratimikos_ENABLE_TEUCHOS_TIME_MONITOR ON CACHE BOOL "" FORCE)

SET(Trilinos_ENABLE_SEACAS ON CACHE BOOL "" FORCE)
SET(Trilinos_ENABLE_Pamgen ON CACHE BOOL "" FORCE)
SET(TPL_ENABLE_Matio OFF CACHE BOOL "" FORCE)
SET(Teuchos_ENABLE_COMPLEX OFF CACHE BOOL "" FORCE)
