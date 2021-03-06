

SET(NUM_MPI_PROCS_SET 2 3 4)

TRIBITS_ADD_EXECUTABLE_AND_TEST(
  TestingToolsUnitTests
  SOURCES
    TestingTools_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  SpmdLocalDataAccessUnitTests
  SOURCES
    SpmdLocalDataAccess_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 1
  )
FOREACH(NUM_MPI_PROCS ${NUM_MPI_PROCS_SET})
  TRIBITS_ADD_TEST(
    SpmdLocalDataAccessUnitTests
    COMM mpi
    NUM_MPI_PROCS ${NUM_MPI_PROCS}
    STANDARD_PASS_OUTPUT
    )
ENDFOREACH()


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  test_product_space
  SOURCES test_product_space.cpp
  )
TRIBITS_ADD_TEST(
  test_product_space
  NAME test_product_space_serial
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  test_scalar_product
  SOURCES test_scalar_product.cpp
  ARGS --verbose
  )
TRIBITS_ADD_TEST(
  test_scalar_product
  NAME test_scalar_product_serial
  ARGS --verbose
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE(
  test_composite_linear_ops
  SOURCES test_composite_linear_ops.cpp
  )
TRIBITS_ADD_TEST(
  test_composite_linear_ops
  NAME test_composite_linear_ops_serial
  ARGS "--use-serial --verbose"
  COMM serial
  )
TRIBITS_ADD_TEST(
  test_composite_linear_ops
  NAME test_composite_linear_ops_spmd
  ARGS "--use-spmd --verbose"
  COMM mpi serial
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  test_std_ops
  SOURCES test_std_ops.cpp
  ARGS --verbose
  )
TRIBITS_ADD_TEST(
  test_std_ops
  NAME test_std_ops_serial
  ARGS --verbose
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DetachedSpmdVectorViewUnitTests
  SOURCES
    DetachedSpmdVectorView_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  )
TRIBITS_ADD_TEST(
  DetachedSpmdVectorViewUnitTests
  NAME DetachedSpmdVectorViewUnitTests_serial
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DefaultSpmdVectorSpaceUnitTests
  SOURCES
    DefaultSpmdVectorSpace_UnitTests.cpp
    DefaultSpmdMultiVector_UnitTests.cpp
    DefaultSpmdVector_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 1
  )
FOREACH(NUM_MPI_PROCS ${NUM_MPI_PROCS_SET})
  TRIBITS_ADD_TEST(
    DefaultSpmdVectorSpaceUnitTests
    STANDARD_PASS_OUTPUT
    COMM mpi
    NUM_MPI_PROCS ${NUM_MPI_PROCS}
    )
ENDFOREACH()


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DefaultProductVectorSpaceUnitTests
  SOURCES
    DefaultProductVectorSpace_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  )
TRIBITS_ADD_TEST(
  DefaultProductVectorSpaceUnitTests
  NAME DefaultProductVectorSpaceUnitTests_serial
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DefaultMultiVectorProductVectorSpaceUnitTests
  SOURCES
    DefaultMultiVectorProductVectorSpace_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  )
TRIBITS_ADD_TEST(
  DefaultMultiVectorProductVectorSpaceUnitTests
  NAME DefaultMultiVectorProductVectorSpaceUnitTests_serial
  STANDARD_PASS_OUTPUT
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DefaultBlockedLinearOpUnitTests
  SOURCES
    DefaultBlockedLinearOp_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DefaultImplicitLinearOpUnitTests
  SOURCES
    DefaultAddedLinearOp_UnitTests.cpp
    DefaultMultipliedLinearOp_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  NUM_MPI_PROCS 1
  STANDARD_PASS_OUTPUT
  )


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  SimpleDenseLinearOpUnitTests
  SOURCES SimpleDenseLinearOp_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  NUM_MPI_PROCS 1
  )


TRIBITS_ADD_EXECUTABLE(
  DefaultSpmdVectorSpaceParallelUnitTests
  SOURCES
    DefaultSpmdVectorSpace_Parallel_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  )
FOREACH(NUM_MPI_PROCS ${NUM_MPI_PROCS_SET})
  TRIBITS_ADD_TEST(
    DefaultSpmdVectorSpaceParallelUnitTests
    COMM mpi
    NUM_MPI_PROCS ${NUM_MPI_PROCS}
    STANDARD_PASS_OUTPUT	
  )
ENDFOREACH()


TRIBITS_ADD_EXECUTABLE_AND_TEST(
  DefaultClusteredSpmdProductVectorSpaceUnitTests
  SOURCES
    DefaultClusteredSpmdProductVectorSpace_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 1
  )
FOREACH(NUM_MPI_PROCS ${NUM_MPI_PROCS_SET})
  TRIBITS_ADD_TEST(
    DefaultClusteredSpmdProductVectorSpaceUnitTests
    STANDARD_PASS_OUTPUT
    COMM mpi
    NUM_MPI_PROCS ${NUM_MPI_PROCS}
    )
ENDFOREACH()

TRIBITS_ADD_EXECUTABLE_AND_TEST(
  test_locally_replicated
  SOURCES
    test_locally_replicated.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 2
  COMM mpi serial
  )

TRIBITS_ADD_EXECUTABLE_AND_TEST(
  MultiVector_RowStatScaledOp_UnitTests
  SOURCES
    MultiVector_RowStatScaledOp_UnitTests.cpp
    ${TEUCHOS_STD_PARALLEL_UNIT_TEST_MAIN}
  STANDARD_PASS_OUTPUT
  NUM_MPI_PROCS 2
  COMM mpi serial
  XHOST KALLIKRATES
  )
