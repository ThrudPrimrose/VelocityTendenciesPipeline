#ifndef __DACE_CODEGEN_VELOCITY_TENDENCIES__
#define __DACE_CODEGEN_VELOCITY_TENDENCIES__

#include <dace/dace.h>

// DaCe-generated entry-point declarations for the 4 compiled variants.
// These files are produced by generate_baselines.py; main_per.cu dispatches to
// one of them at runtime based on (lvn_only, istep).
#include "velocity_no_nproma_if_prop_lvn_only_0_istep_1.h"
#include "velocity_no_nproma_if_prop_lvn_only_0_istep_2.h"
#include "velocity_no_nproma_if_prop_lvn_only_1_istep_1.h"
#include "velocity_no_nproma_if_prop_lvn_only_1_istep_2.h"

#endif // __DACE_CODEGEN_VELOCITY_TENDENCIES__