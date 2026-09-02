/* DaCe AUTO-GENERATED FILE. DO NOT MODIFY */
#include <dace/dace.h>
#include "../../include/hash.h"

struct velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t {

};

static DACE_HDFI constexpr int64_t z_w_con_c_full_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_c) { return (((90 * __CG_global_data__m_nproma) * (__CG_p_patch__m_nblks_c - 1)) + (90 * __CG_global_data__m_nproma)); }
static DACE_HDFI constexpr int64_t zeta_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_v) { return (((90 * __CG_global_data__m_nproma) * (__CG_p_patch__m_nblks_v - 1)) + (90 * __CG_global_data__m_nproma)); }
static DACE_HDFI constexpr int64_t z_ekinh_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_c) { return (((90 * __CG_global_data__m_nproma) * (__CG_p_patch__m_nblks_c - 1)) + (90 * __CG_global_data__m_nproma)); }
static DACE_HDFI constexpr int64_t levmask_size(int64_t __CG_p_patch__m_nblks_c) { return (90 * __CG_p_patch__m_nblks_c); }
static DACE_HDFI consteval int64_t levelmask_size() { return 90; }
static DACE_HDFI constexpr int64_t z_w_con_c_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_c) { return ((91 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c); }
static DACE_HDFI constexpr int64_t cfl_clipping_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_c) { return ((91 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c); }
static DACE_HDFI constexpr int64_t z_w_concorr_mc_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_c) { return ((90 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c); }
static DACE_HDFI constexpr int64_t maxvcfl_size(int64_t __CG_global_data__m_nproma, int64_t __CG_p_patch__m_nblks_c) { return ((91 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c); }
static DACE_HDFI constexpr int64_t __CG_p_int__m_geofac_rot_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_geofac_rot_d_0, int64_t __CG_p_int__m_SA_geofac_rot_d_1) { return ((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * __d2) + (__CG_p_int__m_SA_geofac_rot_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_prog__m_vn_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_prog__m_SA_vn_d_0) { return (((__CG_p_prog__m_SA_vn_d_0 * __d1) + ((90 * __CG_p_prog__m_SA_vn_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t zeta_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
inline void loop_body_1_2_5(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_geofac_rot, const int* __restrict__ __CG_p_patch__CG_verts__m_edge_blk, const int* __restrict__ __CG_p_patch__CG_verts__m_edge_idx, const double* __restrict__ __CG_p_prog__m_vn, double* __restrict__ zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int _for_it_4_0, int _for_it_5_0) {
    int tmp_index_92_0;
    int tmp_index_94_0;
    int tmp_index_104_0;
    int tmp_index_106_0;
    int tmp_index_116_0;
    int tmp_index_118_0;
    int tmp_index_128_0;
    int tmp_index_130_0;
    int tmp_index_140_0;
    int tmp_index_142_0;
    int tmp_index_152_0;
    int tmp_index_154_0;


    tmp_index_92_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_verts__m_edge_idx[((__CG_global_data__m_nproma * _for_it_3_0) + _for_it_5_0)]);
    tmp_index_94_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_verts__m_edge_blk[((__CG_global_data__m_nproma * _for_it_3_0) + _for_it_5_0)]);
    tmp_index_104_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_verts__m_edge_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_106_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_verts__m_edge_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_116_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_verts__m_edge_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_118_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_verts__m_edge_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_128_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_verts__m_edge_idx[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_130_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_verts__m_edge_blk[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_140_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_verts__m_edge_idx[((((4 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_142_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_verts__m_edge_blk[((((4 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_152_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_verts__m_edge_idx[((((5 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_154_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_verts__m_edge_blk[((((5 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    {

        zeta[zeta_idx(_for_it_5_0, _for_it_4_0, _for_it_3_0, __CG_global_data__m_nproma)] = ((((((__CG_p_int__m_geofac_rot[__CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (1 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_92_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_94_0, __CG_p_prog__m_SA_vn_d_0)]) + (__CG_p_int__m_geofac_rot[__CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (2 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_104_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_106_0, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_rot[__CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (3 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_116_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_118_0, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_rot[__CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (4 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_128_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_130_0, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_rot[__CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (5 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_140_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_142_0, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_rot[__CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (6 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_152_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_154_0, __CG_p_prog__m_SA_vn_d_0)]));  // T_l296_c296

    }
}

inline void loop_body_0_0_5(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_geofac_rot, const int* __restrict__ __CG_p_patch__CG_verts__m_edge_blk, const int* __restrict__ __CG_p_patch__CG_verts__m_edge_idx, const int* __restrict__ __CG_p_patch__CG_verts__m_end_index, const int* __restrict__ __CG_p_patch__CG_verts__m_start_index, const double* __restrict__ __CG_p_prog__m_vn, double* __restrict__ zeta, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endblk_var_119_0, int i_startblk_var_118_0) {
    int i_startidx_in_var_103_0_0;
    int i_endidx_in_var_104_0_0;
    int i_startidx_var_120_0;
    int i_endidx_var_121_0;


    i_startidx_in_var_103_0_0 = __CG_p_patch__CG_verts__m_start_index[(2 - SOA_start_index_d_0_verts_p_patch_5)];
    i_endidx_in_var_104_0_0 = __CG_p_patch__CG_verts__m_end_index[((- SOA_end_index_d_0_verts_p_patch_5) - 5)];
    if ((((_for_it_3_0 - i_startblk_var_118_0) == -1) == true)) {

        i_startidx_var_120_0 = i_startidx_in_var_103_0_0;
        i_endidx_var_121_0 = __CG_global_data__m_nproma;
        if ((((_for_it_3_0 - i_endblk_var_119_0) == -1) == true)) {

            i_endidx_var_121_0 = i_endidx_in_var_104_0_0;

        }

    } else {
        if ((((_for_it_3_0 - i_endblk_var_119_0) == -1) == true)) {

            i_startidx_var_120_0 = 1;
            i_endidx_var_121_0 = i_endidx_in_var_104_0_0;

        } else {

            i_startidx_var_120_0 = 1;
            i_endidx_var_121_0 = __CG_global_data__m_nproma;

        }

    }

    for (auto _for_it_4_0 = 0; _for_it_4_0 < 90; _for_it_4_0 += 1) {
        #pragma omp simd
        for (auto _for_it_5_0 = (i_startidx_var_120_0 - 1); _for_it_5_0 < i_endidx_var_121_0; _for_it_5_0 += 1) {
            loop_body_1_2_5(__state, &__CG_p_int__m_geofac_rot[0], &__CG_p_patch__CG_verts__m_edge_blk[0], &__CG_p_patch__CG_verts__m_edge_idx[0], &__CG_p_prog__m_vn[0], &zeta[0], __CG_global_data__m_nproma, __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_0, __CG_p_int__m_SOA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_2, __CG_p_patch__m_nblks_c, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_3_0, _for_it_4_0, _for_it_5_0);
        }
    }
}

static DACE_HDFI constexpr int64_t __CG_p_int__m_rbf_vec_coeff_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int64_t __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) { return ((((__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) * __d2) + (__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_diag__m_vt_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_diag__m_SA_vt_d_0) { return (((__CG_p_diag__m_SA_vt_d_0 * __d1) + ((90 * __CG_p_diag__m_SA_vt_d_0) * __d2)) + __d0); }
inline void loop_body_11_3_5(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_rbf_vec_coeff_e, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_idx, const double* __restrict__ __CG_p_prog__m_vn, double* __restrict__ __CG_p_diag__m_vt, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_6, int _for_it_7, int _for_it_8) {
    int tmp_index_178;
    int tmp_index_180;
    int tmp_index_190;
    int tmp_index_192;
    int tmp_index_202;
    int tmp_index_204;
    int tmp_index_214;
    int tmp_index_216;


    tmp_index_178 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[((__CG_global_data__m_nproma * _for_it_6) + _for_it_8)]);
    tmp_index_180 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[((__CG_global_data__m_nproma * _for_it_6) + _for_it_8)]);
    tmp_index_190 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_6)) + _for_it_8)]);
    tmp_index_192 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_6)) + _for_it_8)]);
    tmp_index_202 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_6)) + _for_it_8)]);
    tmp_index_204 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_6)) + _for_it_8)]);
    tmp_index_214 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_6)) + _for_it_8)]);
    tmp_index_216 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_6)) + _for_it_8)]);
    {

        __CG_p_diag__m_vt[__CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_8) + 1), (((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_7) + 1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vt_d_0)] = ((((__CG_p_int__m_rbf_vec_coeff_e[__CG_p_int__m_rbf_vec_coeff_e_idx((1 - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8) + 1), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6) + 1), __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_178, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7) + 1), tmp_index_180, __CG_p_prog__m_SA_vn_d_0)]) + (__CG_p_int__m_rbf_vec_coeff_e[__CG_p_int__m_rbf_vec_coeff_e_idx((2 - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8) + 1), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6) + 1), __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_190, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7) + 1), tmp_index_192, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_rbf_vec_coeff_e[__CG_p_int__m_rbf_vec_coeff_e_idx((3 - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8) + 1), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6) + 1), __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_202, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7) + 1), tmp_index_204, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_rbf_vec_coeff_e[__CG_p_int__m_rbf_vec_coeff_e_idx((4 - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8) + 1), (((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6) + 1), __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_214, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7) + 1), tmp_index_216, __CG_p_prog__m_SA_vn_d_0)]));  // T_l441_c441

    }
}

static DACE_HDFI constexpr int64_t __CG_p_metrics__m_wgtfac_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_wgtfac_e_d_0) { return (((__CG_p_metrics__m_SA_wgtfac_e_d_0 * __d1) + ((91 * __CG_p_metrics__m_SA_wgtfac_e_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_diag__m_vn_ie_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_diag__m_SA_vn_ie_d_0) { return (((__CG_p_diag__m_SA_vn_ie_d_0 * __d1) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t z_kin_hor_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t A_z_kin_hor_e_d_0, int64_t A_z_kin_hor_e_d_1) { return ((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * __d2) + (A_z_kin_hor_e_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_metrics__m_wgtfacq_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_wgtfacq_e_d_0, int64_t __CG_p_metrics__m_SA_wgtfacq_e_d_1) { return ((((__CG_p_metrics__m_SA_wgtfacq_e_d_0 * __CG_p_metrics__m_SA_wgtfacq_e_d_1) * __d2) + (__CG_p_metrics__m_SA_wgtfacq_e_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t z_vt_ie_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t A_z_vt_ie_d_0, int64_t A_z_vt_ie_d_1) { return ((((A_z_vt_ie_d_0 * A_z_vt_ie_d_1) * __d2) + (A_z_vt_ie_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_metrics__m_ddxt_z_full_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_ddxt_z_full_d_0) { return (((__CG_p_metrics__m_SA_ddxt_z_full_d_0 * __d1) + ((90 * __CG_p_metrics__m_SA_ddxt_z_full_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_metrics__m_ddxn_z_full_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_ddxn_z_full_d_0) { return (((__CG_p_metrics__m_SA_ddxn_z_full_d_0 * __d1) + ((90 * __CG_p_metrics__m_SA_ddxn_z_full_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t z_w_concorr_me_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t A_z_w_concorr_me_d_0, int64_t A_z_w_concorr_me_d_1) { return ((((A_z_w_concorr_me_d_0 * A_z_w_concorr_me_d_1) * __d2) + (A_z_w_concorr_me_d_0 * __d1)) + __d0); }
inline void loop_body_0_0_15(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_rbf_vec_coeff_e, const double* __restrict__ __CG_p_metrics__m_ddxn_z_full, const double* __restrict__ __CG_p_metrics__m_ddxt_z_full, const double* __restrict__ __CG_p_metrics__m_wgtfac_e, const double* __restrict__ __CG_p_metrics__m_wgtfacq_e, const int* __restrict__ __CG_p_patch__CG_edges__m_end_index, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_idx, const int* __restrict__ __CG_p_patch__CG_edges__m_start_index, const double* __restrict__ __CG_p_prog__m_vn, double* __restrict__ __CG_p_diag__m_vn_ie, double* __restrict__ __CG_p_diag__m_vt, double* __restrict__ z_kin_hor_e, double* __restrict__ z_vt_ie, double* __restrict__ z_w_concorr_me, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_6, int i_endblk_var_147, int i_startblk_var_146, int nflatlev_jg) {
    double tmp_call_4;
    double tmp_call_3;
    double tmp_call_2;
    double tmp_call_1;
    int i_startidx_in_var_91_3;
    int i_endidx_in_var_92_3;
    int i_startidx_var_148;
    int i_endidx_var_149;


    i_startidx_in_var_91_3 = __CG_p_patch__CG_edges__m_start_index[(5 - SOA_start_index_d_0_edges_p_patch_4)];
    i_endidx_in_var_92_3 = __CG_p_patch__CG_edges__m_end_index[((- SOA_end_index_d_0_edges_p_patch_4) - 10)];
    if (((_for_it_6 - i_startblk_var_146) != -1)) {

        i_startidx_var_148 = 1;

    } else {

        i_startidx_var_148 = Max(1, i_startidx_in_var_91_3);

    }
    if (((_for_it_6 - i_endblk_var_147) != -1)) {

        i_endidx_var_149 = __CG_global_data__m_nproma;

    } else {

        i_endidx_var_149 = i_endidx_in_var_92_3;

    }

    for (auto _for_it_7 = 0; _for_it_7 < 90; _for_it_7 += 1) {
        #pragma omp simd
        for (auto _for_it_8 = (i_startidx_var_148 - 1); _for_it_8 < i_endidx_var_149; _for_it_8 += 1) {
            loop_body_11_3_5(__state, &__CG_p_int__m_rbf_vec_coeff_e[0], &__CG_p_patch__CG_edges__m_quad_blk[0], &__CG_p_patch__CG_edges__m_quad_idx[0], &__CG_p_prog__m_vn[0], &__CG_p_diag__m_vt[0], __CG_global_data__m_nproma, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_6, _for_it_7, _for_it_8);
        }
    }
    for (auto _for_it_9 = 1; _for_it_9 < 90; _for_it_9 += 1) {
        #pragma omp simd
        for (auto _for_it_10 = (i_startidx_var_148 - 1); _for_it_10 < i_endidx_var_149; _for_it_10 += 1) {
            __CG_p_diag__m_vn_ie[__CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_10) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_9) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vn_ie_d_0)] = ((__CG_p_metrics__m_wgtfac_e[__CG_p_metrics__m_wgtfac_e_idx((((- __CG_p_metrics__m_SOA_wgtfac_e_d_0) + _for_it_10) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_e_d_1) + _for_it_9) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_e_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_wgtfac_e_d_0)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_10) + 1), (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_9) + 1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)]) + (__CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_10) + 1), ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_9), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)] * (1.0 - __CG_p_metrics__m_wgtfac_e[__CG_p_metrics__m_wgtfac_e_idx((((- __CG_p_metrics__m_SOA_wgtfac_e_d_0) + _for_it_10) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_e_d_1) + _for_it_9) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_e_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_wgtfac_e_d_0)])));  // T_l446_c446
            tmp_call_1 = (dace::math::ipow(__CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_10) + 1), (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_9) + 1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)], 2));  // T_l447_c447
            tmp_call_2 = (dace::math::ipow(__CG_p_diag__m_vt[__CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_10) + 1), (((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_9) + 1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vt_d_0)], 2));  // T_l447_c447
            z_kin_hor_e[z_kin_hor_e_idx((((- OA_z_kin_hor_e_d_0) + _for_it_10) + 1), (((- OA_z_kin_hor_e_d_1) + _for_it_9) + 1), (((- OA_z_kin_hor_e_d_2) + _for_it_6) + 1), A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)] = ((0.5 * tmp_call_1) + (0.5 * tmp_call_2));  // T_l447_c447
        }
    }

    #pragma omp simd
    for (auto _for_it_15 = (i_startidx_var_148 - 1); _for_it_15 < i_endidx_var_149; _for_it_15 += 1) {
        tmp_call_3 = (dace::math::ipow(__CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_15) + 1), (1 - __CG_p_prog__m_SOA_vn_d_1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)], 2));  // T_l466_c466
        __CG_p_diag__m_vn_ie[__CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_15) + 1), (91 - __CG_p_diag__m_SOA_vn_ie_d_1), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vn_ie_d_0)] = (((__CG_p_metrics__m_wgtfacq_e[__CG_p_metrics__m_wgtfacq_e_idx((((- __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + _for_it_15) + 1), (1 - __CG_p_metrics__m_SOA_wgtfacq_e_d_1), (((- __CG_p_metrics__m_SOA_wgtfacq_e_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_wgtfacq_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_15) + 1), (90 - __CG_p_prog__m_SOA_vn_d_1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)]) + (__CG_p_metrics__m_wgtfacq_e[__CG_p_metrics__m_wgtfacq_e_idx((((- __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + _for_it_15) + 1), (2 - __CG_p_metrics__m_SOA_wgtfacq_e_d_1), (((- __CG_p_metrics__m_SOA_wgtfacq_e_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_wgtfacq_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_15) + 1), (89 - __CG_p_prog__m_SOA_vn_d_1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_metrics__m_wgtfacq_e[__CG_p_metrics__m_wgtfacq_e_idx((((- __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + _for_it_15) + 1), (3 - __CG_p_metrics__m_SOA_wgtfacq_e_d_1), (((- __CG_p_metrics__m_SOA_wgtfacq_e_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_wgtfacq_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_15) + 1), (88 - __CG_p_prog__m_SOA_vn_d_1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)]));  // T_l467_c467
        __CG_p_diag__m_vn_ie[__CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_15) + 1), (1 - __CG_p_diag__m_SOA_vn_ie_d_1), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vn_ie_d_0)] = __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_15) + 1), (1 - __CG_p_prog__m_SOA_vn_d_1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)];  // T_l464_c464
        z_vt_ie[z_vt_ie_idx((((- OA_z_vt_ie_d_0) + _for_it_15) + 1), (1 - OA_z_vt_ie_d_1), (((- OA_z_vt_ie_d_2) + _for_it_6) + 1), A_z_vt_ie_d_0, A_z_vt_ie_d_1)] = __CG_p_diag__m_vt[__CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_15) + 1), (1 - __CG_p_diag__m_SOA_vt_d_1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vt_d_0)];  // T_l465_c465
        tmp_call_4 = (dace::math::ipow(__CG_p_diag__m_vt[__CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_15) + 1), (1 - __CG_p_diag__m_SOA_vt_d_1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vt_d_0)], 2));  // T_l466_c466
        z_kin_hor_e[z_kin_hor_e_idx((((- OA_z_kin_hor_e_d_0) + _for_it_15) + 1), (1 - OA_z_kin_hor_e_d_1), (((- OA_z_kin_hor_e_d_2) + _for_it_6) + 1), A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)] = ((0.5 * tmp_call_3) + (0.5 * tmp_call_4));  // T_l466_c466
    }
    for (auto _for_it_13 = (nflatlev_jg - 1); _for_it_13 < 90; _for_it_13 += 1) {
        #pragma omp simd
        for (auto _for_it_14 = (i_startidx_var_148 - 1); _for_it_14 < i_endidx_var_149; _for_it_14 += 1) {
            z_w_concorr_me[z_w_concorr_me_idx((((- OA_z_w_concorr_me_d_0) + _for_it_14) + 1), (((- OA_z_w_concorr_me_d_1) + _for_it_13) + 1), (((- OA_z_w_concorr_me_d_2) + _for_it_6) + 1), A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1)] = ((__CG_p_diag__m_vt[__CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_14) + 1), (((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_13) + 1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6) + 1), __CG_p_diag__m_SA_vt_d_0)] * __CG_p_metrics__m_ddxt_z_full[__CG_p_metrics__m_ddxt_z_full_idx((((- __CG_p_metrics__m_SOA_ddxt_z_full_d_0) + _for_it_14) + 1), (((- __CG_p_metrics__m_SOA_ddxt_z_full_d_1) + _for_it_13) + 1), (((- __CG_p_metrics__m_SOA_ddxt_z_full_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_ddxt_z_full_d_0)]) + (__CG_p_metrics__m_ddxn_z_full[__CG_p_metrics__m_ddxn_z_full_idx((((- __CG_p_metrics__m_SOA_ddxn_z_full_d_0) + _for_it_14) + 1), (((- __CG_p_metrics__m_SOA_ddxn_z_full_d_1) + _for_it_13) + 1), (((- __CG_p_metrics__m_SOA_ddxn_z_full_d_2) + _for_it_6) + 1), __CG_p_metrics__m_SA_ddxn_z_full_d_0)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_14) + 1), (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_13) + 1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6) + 1), __CG_p_prog__m_SA_vn_d_0)]));  // T_l459_c459
        }
    }
}

static DACE_HDFI constexpr int64_t __CG_p_int__m_e_bln_c_s_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_e_bln_c_s_d_0, int64_t __CG_p_int__m_SA_e_bln_c_s_d_1) { return ((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * __d2) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t z_ekinh_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
inline void loop_body_19_3_5(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_e_bln_c_s, const int* __restrict__ __CG_p_patch__CG_cells__m_edge_blk, const int* __restrict__ __CG_p_patch__CG_cells__m_edge_idx, const double* __restrict__ z_kin_hor_e, double* __restrict__ z_ekinh, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_23, int _for_it_24) {
    int tmp_index_407;
    int tmp_index_409;
    int tmp_index_419;
    int tmp_index_421;
    int tmp_index_431;
    int tmp_index_433;


    tmp_index_407 = ((- OA_z_kin_hor_e_d_0) + __CG_p_patch__CG_cells__m_edge_idx[((__CG_global_data__m_nproma * _for_it_22) + _for_it_24)]);
    tmp_index_409 = ((- OA_z_kin_hor_e_d_2) + __CG_p_patch__CG_cells__m_edge_blk[((__CG_global_data__m_nproma * _for_it_22) + _for_it_24)]);
    tmp_index_419 = ((- OA_z_kin_hor_e_d_0) + __CG_p_patch__CG_cells__m_edge_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    tmp_index_421 = ((- OA_z_kin_hor_e_d_2) + __CG_p_patch__CG_cells__m_edge_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    tmp_index_431 = ((- OA_z_kin_hor_e_d_0) + __CG_p_patch__CG_cells__m_edge_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    tmp_index_433 = ((- OA_z_kin_hor_e_d_2) + __CG_p_patch__CG_cells__m_edge_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    {

        z_ekinh[z_ekinh_idx(_for_it_24, _for_it_23, _for_it_22, __CG_global_data__m_nproma)] = (((__CG_p_int__m_e_bln_c_s[__CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1), (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * z_kin_hor_e[z_kin_hor_e_idx(tmp_index_407, (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1), tmp_index_409, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)]) + (__CG_p_int__m_e_bln_c_s[__CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1), (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * z_kin_hor_e[z_kin_hor_e_idx(tmp_index_419, (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1), tmp_index_421, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)])) + (__CG_p_int__m_e_bln_c_s[__CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1), (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * z_kin_hor_e[z_kin_hor_e_idx(tmp_index_431, (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1), tmp_index_433, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)]));  // T_l515_c515

    }
}

static DACE_HDFI constexpr int64_t z_w_concorr_mc_v1_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
inline void loop_body_19_3_8(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_e_bln_c_s, const int* __restrict__ __CG_p_patch__CG_cells__m_edge_blk, const int* __restrict__ __CG_p_patch__CG_cells__m_edge_idx, const double* __restrict__ z_w_concorr_me, double* __restrict__ z_w_concorr_mc_v1, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_25, int _for_it_26) {
    int tmp_index_445;
    int tmp_index_447;
    int tmp_index_457;
    int tmp_index_459;
    int tmp_index_469;
    int tmp_index_471;


    tmp_index_445 = ((- OA_z_w_concorr_me_d_0) + __CG_p_patch__CG_cells__m_edge_idx[((__CG_global_data__m_nproma * _for_it_22) + _for_it_26)]);
    tmp_index_447 = ((- OA_z_w_concorr_me_d_2) + __CG_p_patch__CG_cells__m_edge_blk[((__CG_global_data__m_nproma * _for_it_22) + _for_it_26)]);
    tmp_index_457 = ((- OA_z_w_concorr_me_d_0) + __CG_p_patch__CG_cells__m_edge_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_26)]);
    tmp_index_459 = ((- OA_z_w_concorr_me_d_2) + __CG_p_patch__CG_cells__m_edge_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_26)]);
    tmp_index_469 = ((- OA_z_w_concorr_me_d_0) + __CG_p_patch__CG_cells__m_edge_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_26)]);
    tmp_index_471 = ((- OA_z_w_concorr_me_d_2) + __CG_p_patch__CG_cells__m_edge_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_26)]);
    {

        z_w_concorr_mc_v1[z_w_concorr_mc_v1_idx(_for_it_26, _for_it_25, __CG_global_data__m_nproma)] = (((__CG_p_int__m_e_bln_c_s[__CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_26) + 1), (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * z_w_concorr_me[z_w_concorr_me_idx(tmp_index_445, (((- OA_z_w_concorr_me_d_1) + _for_it_25) + 1), tmp_index_447, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1)]) + (__CG_p_int__m_e_bln_c_s[__CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_26) + 1), (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * z_w_concorr_me[z_w_concorr_me_idx(tmp_index_457, (((- OA_z_w_concorr_me_d_1) + _for_it_25) + 1), tmp_index_459, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1)])) + (__CG_p_int__m_e_bln_c_s[__CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_26) + 1), (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * z_w_concorr_me[z_w_concorr_me_idx(tmp_index_469, (((- OA_z_w_concorr_me_d_1) + _for_it_25) + 1), tmp_index_471, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1)]));  // T_l521_c521

    }
}

static DACE_HDFI constexpr int64_t __CG_p_metrics__m_wgtfac_c_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_wgtfac_c_d_0) { return (((__CG_p_metrics__m_SA_wgtfac_c_d_0 * __d1) + ((91 * __CG_p_metrics__m_SA_wgtfac_c_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t z_w_concorr_mc_v0_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_diag__m_w_concorr_c_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_diag__m_SA_w_concorr_c_d_0) { return (((__CG_p_diag__m_SA_w_concorr_c_d_0 * __d1) + ((91 * __CG_p_diag__m_SA_w_concorr_c_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_prog__m_w_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_prog__m_SA_w_d_0) { return (((__CG_p_prog__m_SA_w_d_0 * __d1) + ((91 * __CG_p_prog__m_SA_w_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t z_w_con_c_v0_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t levmask_idx(int64_t __d0, int64_t __d1, int64_t __CG_p_patch__m_nblks_c) { return ((__CG_p_patch__m_nblks_c * __d1) + __d0); }
static DACE_HDFI constexpr int64_t maxvcfl_v0_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t maxvcfl_v1_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_metrics__m_ddqz_z_half_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_ddqz_z_half_d_0) { return (((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * __d1) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t z_w_con_c_v1_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
inline void loop_body_19_1_14(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_metrics__m_ddqz_z_half, const int* __restrict__ cfl_clipping_v1, const double&  dtime, int* __restrict__ levmask, double* __restrict__ maxvcfl_v1, double* __restrict__ z_w_con_c_v1, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_35, int _for_it_37) {
    double tmp_call_8;
    int _if_cond_18;
    double vcfl;


    _if_cond_18 = cfl_clipping_v1[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)];
    if ((_if_cond_18 == 1)) {

        vcfl = ((dtime * z_w_con_c_v1[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)]) / __CG_p_metrics__m_ddqz_z_half[(((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1)]);
        {

            levmask[levmask_idx(_for_it_22, _for_it_35, __CG_p_patch__m_nblks_c)] = 1;  // T_l556_c556
            tmp_call_8 = abs(vcfl);  // T_l558_c558
            maxvcfl_v1[maxvcfl_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)] = max(maxvcfl_v1[maxvcfl_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)], tmp_call_8);  // T_l558_c558

        }
        if (((vcfl < -0.85) == true)) {
            {

                z_w_con_c_v1[z_w_con_c_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)] = ((-0.85 * __CG_p_metrics__m_ddqz_z_half[__CG_p_metrics__m_ddqz_z_half_idx((((- __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_ddqz_z_half_d_0)]) / dtime);  // T_l560_c560

            }
        } else {
            if (((vcfl > 0.85) == true)) {
                {

                    z_w_con_c_v1[z_w_con_c_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)] = ((0.85 * __CG_p_metrics__m_ddqz_z_half[__CG_p_metrics__m_ddqz_z_half_idx((((- __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_ddqz_z_half_d_0)]) / dtime);  // T_l562_c562

                }
            }

        }

    }

}

static DACE_HDFI constexpr int64_t z_w_con_c_full_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
inline void loop_body_0_6_0(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_e_bln_c_s, const double* __restrict__ __CG_p_metrics__m_ddqz_z_half, const double* __restrict__ __CG_p_metrics__m_wgtfac_c, const int* __restrict__ __CG_p_patch__CG_cells__m_edge_blk, const int* __restrict__ __CG_p_patch__CG_cells__m_edge_idx, const int* __restrict__ __CG_p_patch__CG_cells__m_end_index, const int* __restrict__ __CG_p_patch__CG_cells__m_start_index, const double* __restrict__ __CG_p_prog__m_w, const int* __restrict__ cfl_clipping_v0, const double&  cfl_w_limit, const double&  dtime, const double* __restrict__ z_kin_hor_e, const double* __restrict__ z_w_concorr_me, double* __restrict__ __CG_p_diag__m_w_concorr_c, int* __restrict__ levmask, double* __restrict__ maxvcfl_v0, double* __restrict__ vcflmax, double* __restrict__ z_ekinh, double* __restrict__ z_w_con_c_full, double* __restrict__ z_w_con_c_v0, double* __restrict__ z_w_concorr_mc_v0, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SOA_end_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_cells_p_patch_2, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endblk_var_147, int i_startblk_var_146, int nflatlev_jg, int nrdmax_jg) {
    int i_startidx_in_var_79_1;
    int i_endidx_in_var_80_1;
    int i_startidx_var_148;
    int i_endidx_var_149;


    i_startidx_in_var_79_1 = __CG_p_patch__CG_cells__m_start_index[(4 - SOA_start_index_d_0_cells_p_patch_2)];
    i_endidx_in_var_80_1 = __CG_p_patch__CG_cells__m_end_index[((- SOA_end_index_d_0_cells_p_patch_2) - 5)];
    if ((((_for_it_22 - i_startblk_var_146) == -1) == true)) {

        i_startidx_var_148 = Max(1, i_startidx_in_var_79_1);
        i_endidx_var_149 = __CG_global_data__m_nproma;
        if ((((_for_it_22 - i_endblk_var_147) == -1) == true)) {

            i_endidx_var_149 = i_endidx_in_var_80_1;

        }

    } else {
        if ((((_for_it_22 - i_endblk_var_147) == -1) == true)) {

            i_startidx_var_148 = 1;
            i_endidx_var_149 = i_endidx_in_var_80_1;

        } else {

            i_startidx_var_148 = 1;
            i_endidx_var_149 = __CG_global_data__m_nproma;

        }

    }

    for (auto _for_it_23 = 0; _for_it_23 < 90; _for_it_23 += 1) {
        #pragma omp simd
        for (auto _for_it_24 = (i_startidx_var_148 - 1); _for_it_24 < i_endidx_var_149; _for_it_24 += 1) {
            loop_body_19_3_5(__state, &__CG_p_int__m_e_bln_c_s[0], &__CG_p_patch__CG_cells__m_edge_blk[0], &__CG_p_patch__CG_cells__m_edge_idx[0], &z_kin_hor_e[0], &z_ekinh[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, __CG_global_data__m_nproma, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_23, _for_it_24);
        }
    }
    for (auto _for_it_25 = (nflatlev_jg - 1); _for_it_25 < 90; _for_it_25 += 1) {
        #pragma omp simd
        for (auto _for_it_26 = (i_startidx_var_148 - 1); _for_it_26 < i_endidx_var_149; _for_it_26 += 1) {
            loop_body_19_3_8(__state, &__CG_p_int__m_e_bln_c_s[0], &__CG_p_patch__CG_cells__m_edge_blk[0], &__CG_p_patch__CG_cells__m_edge_idx[0], &z_w_concorr_me[0], &z_w_concorr_mc_v0[0], A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1, OA_z_w_concorr_me_d_0, OA_z_w_concorr_me_d_1, OA_z_w_concorr_me_d_2, __CG_global_data__m_nproma, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_25, _for_it_26);
        }
    }
    for (auto _for_it_27 = nflatlev_jg; _for_it_27 < 90; _for_it_27 += 1) {
        #pragma omp simd
        for (auto _for_it_28 = (i_startidx_var_148 - 1); _for_it_28 < i_endidx_var_149; _for_it_28 += 1) {
            __CG_p_diag__m_w_concorr_c[__CG_p_diag__m_w_concorr_c_idx((((- __CG_p_diag__m_SOA_w_concorr_c_d_0) + _for_it_28) + 1), (((- __CG_p_diag__m_SOA_w_concorr_c_d_1) + _for_it_27) + 1), (((- __CG_p_diag__m_SOA_w_concorr_c_d_2) + _for_it_22) + 1), __CG_p_diag__m_SA_w_concorr_c_d_0)] = ((__CG_p_metrics__m_wgtfac_c[__CG_p_metrics__m_wgtfac_c_idx((((- __CG_p_metrics__m_SOA_wgtfac_c_d_0) + _for_it_28) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_c_d_1) + _for_it_27) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_c_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_wgtfac_c_d_0)] * z_w_concorr_mc_v0[z_w_concorr_mc_v0_idx(_for_it_28, _for_it_27, __CG_global_data__m_nproma)]) + (z_w_concorr_mc_v0[z_w_concorr_mc_v0_idx(_for_it_28, (_for_it_27 - 1), __CG_global_data__m_nproma)] * (1.0 - __CG_p_metrics__m_wgtfac_c[__CG_p_metrics__m_wgtfac_c_idx((((- __CG_p_metrics__m_SOA_wgtfac_c_d_0) + _for_it_28) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_c_d_1) + _for_it_27) + 1), (((- __CG_p_metrics__m_SOA_wgtfac_c_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_wgtfac_c_d_0)])));  // T_l526_c526
        }
    }
    for (auto _for_it_29 = 0; _for_it_29 < 90; _for_it_29 += 1) {
        #pragma omp simd
        for (auto _for_it_30 = (i_startidx_var_148 - 1); _for_it_30 < i_endidx_var_149; _for_it_30 += 1) {
            z_w_con_c_v0[z_w_con_c_v0_idx(_for_it_30, _for_it_29, __CG_global_data__m_nproma)] = __CG_p_prog__m_w[__CG_p_prog__m_w_idx((((- __CG_p_prog__m_SOA_w_d_0) + _for_it_30) + 1), (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_29) + 1), (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1), __CG_p_prog__m_SA_w_d_0)];  // T_l532_c532
        }
    }

    #pragma omp simd
    for (auto _for_it_31 = (i_startidx_var_148 - 1); _for_it_31 < i_endidx_var_149; _for_it_31 += 1) {
        z_w_con_c_v0[z_w_con_c_v0_idx(_for_it_31, 90, __CG_global_data__m_nproma)] = 0.0;  // T_l536_c536
    }
    for (auto _for_it_32 = nflatlev_jg; _for_it_32 < 90; _for_it_32 += 1) {
        #pragma omp simd
        for (auto _for_it_33 = (i_startidx_var_148 - 1); _for_it_33 < i_endidx_var_149; _for_it_33 += 1) {
            z_w_con_c_v0[z_w_con_c_v0_idx(_for_it_33, _for_it_32, __CG_global_data__m_nproma)] = ((- __CG_p_diag__m_w_concorr_c[__CG_p_diag__m_w_concorr_c_idx((((- __CG_p_diag__m_SOA_w_concorr_c_d_0) + _for_it_33) + 1), (((- __CG_p_diag__m_SOA_w_concorr_c_d_1) + _for_it_32) + 1), (((- __CG_p_diag__m_SOA_w_concorr_c_d_2) + _for_it_22) + 1), __CG_p_diag__m_SA_w_concorr_c_d_0)]) + z_w_con_c_v0[z_w_con_c_v0_idx(_for_it_33, _for_it_32, __CG_global_data__m_nproma)]);  // T_l540_c540
        }
    }
    #pragma omp simd
    for (auto _for_it_34 = (Max(3, (nrdmax_jg - 2)) - 1); _for_it_34 < 87; _for_it_34 += 1) {
        levmask[levmask_idx(_for_it_22, _for_it_34, __CG_p_patch__m_nblks_c)] = 0;  // T_l544_c544
    }
    {

        for (auto _i = 0; _i < __CG_global_data__m_nproma; _i += 1) {
            #pragma omp simd
            for (auto _j = 0; _j < 91; _j += 1) {
                maxvcfl_v0[maxvcfl_v0_idx(_i, _j, __CG_global_data__m_nproma)] = 0;  // zero
            }
        }
        for (auto _for_it_35 = (Max(3, (nrdmax_jg - 2)) - 1); _for_it_35 < 87; _for_it_35 += 1) {
            #pragma omp simd
            for (auto _for_it_37 = (i_startidx_var_148 - 1); _for_it_37 < i_endidx_var_149; _for_it_37 += 1) {
                loop_body_19_1_14(__state, &__CG_p_metrics__m_ddqz_z_half[0], &cfl_clipping_v0[0], dtime, &levmask[0], &maxvcfl_v0[0], &z_w_con_c_v0[0], __CG_global_data__m_nproma, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_35, _for_it_37);
            }
        }
        {  // reduce
            for (int _i0 = 0; _i0 < __CG_global_data__m_nproma; ++_i0) {
                (vcflmax + _for_it_22)[0] = ::dace::reduce::seq::max(maxvcfl_v0 + _i0 * 1, (long)(91), (long)(__CG_global_data__m_nproma), (vcflmax + _for_it_22)[0]);
            }
        }
        for (auto _for_it_38 = 0; _for_it_38 < 90; _for_it_38 += 1) {
            #pragma omp simd
            for (auto _for_it_39 = (i_startidx_var_148 - 1); _for_it_39 < i_endidx_var_149; _for_it_39 += 1) {
                z_w_con_c_full[z_w_con_c_full_idx(_for_it_39, _for_it_38, _for_it_22, __CG_global_data__m_nproma)] = ((0.5 * z_w_con_c_v0[z_w_con_c_v0_idx(_for_it_39, _for_it_38, __CG_global_data__m_nproma)]) + (0.5 * z_w_con_c_v0[z_w_con_c_v0_idx(_for_it_39, (_for_it_38 + 1), __CG_global_data__m_nproma)]));  // T_l569_c569
            }
        }

    }
}

static DACE_HDFI constexpr int64_t levelmask_idx(int64_t __d0) { return __d0; }
inline void loop_body_0_6_21(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const int* __restrict__ levmask, int* __restrict__ levelmask, int __CG_p_patch__m_nblks_c, int _for_it_46, int i_endblk_var_147, int i_startblk_var_146) {
    int _red_tmp_tmp_call_13;
    int tmp_call_13;


    tmp_call_13 = 0;
    {

        _red_tmp_tmp_call_13 = 0;  // seed

    }
    {

        {  // reduce
            for (int _i0 = 0; _i0 < ((i_endblk_var_147 - i_startblk_var_146) + 1); ++_i0) {
                (&_red_tmp_tmp_call_13)[0] = ::dace::reduce::seq::bitwise_or((levmask + (((__CG_p_patch__m_nblks_c * _for_it_46) + i_startblk_var_146) - 1)) + _i0 * 1, (long)(1), (long)(__CG_p_patch__m_nblks_c), (&_red_tmp_tmp_call_13)[0]);
            }
        }

    }
    tmp_call_13 = _red_tmp_tmp_call_13;
    {

        levelmask[levelmask_idx(_for_it_46)] = tmp_call_13;  // T_l600_c600

    }
}

static DACE_HDFI constexpr int64_t __CG_p_patch__CG_edges__m_f_e_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_metrics__m_coeff_gradekin_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_coeff_gradekin_d_0, int64_t __CG_p_metrics__m_SA_coeff_gradekin_d_1) { return ((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * __d2) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_int__m_c_lin_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_c_lin_e_d_0, int64_t __CG_p_int__m_SA_c_lin_e_d_1) { return ((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * __d2) + (__CG_p_int__m_SA_c_lin_e_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_metrics__m_ddqz_z_full_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) { return (((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * __d1) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_diag__m_ddt_vn_apc_pc_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __d3, int64_t __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int64_t __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) { return ((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * __d3) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * __d1)) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __d2)) + __d0); }
inline void loop_body_39_3_16(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_diag__m_vn_ie, const double* __restrict__ __CG_p_diag__m_vt, const double* __restrict__ __CG_p_int__m_c_lin_e, const double* __restrict__ __CG_p_metrics__m_coeff_gradekin, const double* __restrict__ __CG_p_metrics__m_ddqz_z_full_e, const int* __restrict__ __CG_p_patch__CG_edges__m_cell_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_cell_idx, const double* __restrict__ __CG_p_patch__CG_edges__m_f_e, const int* __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, const int&  ntnd, const double* __restrict__ z_ekinh, const double* __restrict__ z_kin_hor_e, const double* __restrict__ z_w_con_c_full, const double* __restrict__ zeta, double* __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int _for_it_48, int _for_it_49) {
    int tmp_index_679;
    int tmp_index_698;
    int tmp_index_700;
    int tmp_index_710;
    int tmp_index_712;
    int tmp_index_724;
    int tmp_index_726;
    int tmp_index_733;
    int tmp_index_735;
    int tmp_index_745;
    int tmp_index_747;
    int tmp_index_757;
    int tmp_index_759;


    tmp_index_679 = ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + ntnd);
    tmp_index_698 = (__CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_700 = (__CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_710 = (__CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_712 = (__CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_724 = (__CG_p_patch__CG_edges__m_vertex_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_726 = (__CG_p_patch__CG_edges__m_vertex_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_733 = (__CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_735 = (__CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_745 = (__CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_747 = (__CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_757 = (__CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_759 = (__CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    {

        __CG_p_diag__m_ddt_vn_apc_pc[__CG_p_diag__m_ddt_vn_apc_pc_idx((((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_48) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1), tmp_index_679, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2)] = ((((((- __CG_p_diag__m_vt[__CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_48) + 1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_47) + 1), __CG_p_diag__m_SA_vt_d_0)]) * ((__CG_p_patch__CG_edges__m_f_e[__CG_p_patch__CG_edges__m_f_e_idx(_for_it_49, _for_it_47, __CG_global_data__m_nproma)] + (0.5 * zeta[zeta_idx(tmp_index_724, _for_it_48, tmp_index_726, __CG_global_data__m_nproma)])) + (0.5 * zeta[zeta_idx(tmp_index_733, _for_it_48, tmp_index_735, __CG_global_data__m_nproma)]))) - (__CG_p_metrics__m_coeff_gradekin[__CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)] * z_ekinh[z_ekinh_idx(tmp_index_698, _for_it_48, tmp_index_700, __CG_global_data__m_nproma)])) + (__CG_p_metrics__m_coeff_gradekin[__CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)] * z_ekinh[z_ekinh_idx(tmp_index_710, _for_it_48, tmp_index_712, __CG_global_data__m_nproma)])) - (z_kin_hor_e[z_kin_hor_e_idx((((- OA_z_kin_hor_e_d_0) + _for_it_49) + 1), (((- OA_z_kin_hor_e_d_1) + _for_it_48) + 1), (((- OA_z_kin_hor_e_d_2) + _for_it_47) + 1), A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)] * (__CG_p_metrics__m_coeff_gradekin[__CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)] - __CG_p_metrics__m_coeff_gradekin[__CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)]))) - (((__CG_p_diag__m_vn_ie[__CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47) + 1), __CG_p_diag__m_SA_vn_ie_d_0)] - __CG_p_diag__m_vn_ie[__CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 2), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47) + 1), __CG_p_diag__m_SA_vn_ie_d_0)]) * ((__CG_p_int__m_c_lin_e[__CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49) + 1), (1 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * z_w_con_c_full[z_w_con_c_full_idx(tmp_index_745, _for_it_48, tmp_index_747, __CG_global_data__m_nproma)]) + (__CG_p_int__m_c_lin_e[__CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49) + 1), (2 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * z_w_con_c_full[z_w_con_c_full_idx(tmp_index_757, _for_it_48, tmp_index_759, __CG_global_data__m_nproma)]))) / __CG_p_metrics__m_ddqz_z_full_e[__CG_p_metrics__m_ddqz_z_full_e_idx((((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_49) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_48) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_ddqz_z_full_e_d_0)]));  // T_l611_c611

    }
}

static DACE_HDFI constexpr int64_t __CG_p_patch__CG_edges__m_area_edge_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_int__m_geofac_grdiv_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_geofac_grdiv_d_0, int64_t __CG_p_int__m_SA_geofac_grdiv_d_1) { return ((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * __d2) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_patch__CG_edges__m_tangent_orientation_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t __CG_p_patch__CG_edges__m_inv_primal_edge_length_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
inline void loop_body_39_3_29(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_int__m_c_lin_e, const double* __restrict__ __CG_p_int__m_geofac_grdiv, const double* __restrict__ __CG_p_metrics__m_ddqz_z_full_e, const double* __restrict__ __CG_p_patch__CG_edges__m_area_edge, const int* __restrict__ __CG_p_patch__CG_edges__m_cell_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_cell_idx, const double* __restrict__ __CG_p_patch__CG_edges__m_inv_primal_edge_length, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_idx, const double* __restrict__ __CG_p_patch__CG_edges__m_tangent_orientation, const int* __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, const double* __restrict__ __CG_p_prog__m_vn, const double&  cfl_w_limit, const double&  dtime, const int* __restrict__ levelmask, const int&  ntnd, const double&  scalfac_exdiff, const double* __restrict__ z_w_con_c_full, const double* __restrict__ zeta, double* __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, int _for_it_52, int _for_it_53) {
    double tmp_call_16;
    double tmp_arg_19;
    double tmp_arg_18;
    double difcoef0;
    double tmp_call_15;
    double w_con_e;
    double tmp_call_17;
    double _if_cond_29;
    int _if_cond_28;
    int tmp_index_881;
    int tmp_index_883;
    int tmp_index_893;
    int tmp_index_895;
    int tmp_index_905;
    int tmp_index_909;
    int tmp_index_927;
    int tmp_index_929;
    int tmp_index_939;
    int tmp_index_941;
    int tmp_index_951;
    int tmp_index_953;
    int tmp_index_963;
    int tmp_index_965;
    int tmp_index_976;
    int tmp_index_978;
    int tmp_index_985;
    int tmp_index_987;


    _if_cond_28 = (levelmask[_for_it_52] || levelmask[(_for_it_52 + 1)]);
    if ((_if_cond_28 == 1)) {

        tmp_index_881 = (__CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
        tmp_index_883 = (__CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
        tmp_index_893 = (__CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
        tmp_index_895 = (__CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
        {

            w_con_e = ((__CG_p_int__m_c_lin_e[__CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53) + 1), (1 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * z_w_con_c_full[z_w_con_c_full_idx(tmp_index_881, _for_it_52, tmp_index_883, __CG_global_data__m_nproma)]) + (__CG_p_int__m_c_lin_e[__CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53) + 1), (2 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * z_w_con_c_full[z_w_con_c_full_idx(tmp_index_893, _for_it_52, tmp_index_895, __CG_global_data__m_nproma)]));  // T_l640_c640
            tmp_call_15 = abs(w_con_e);  // T_l0_c0
            _if_cond_29 = (tmp_call_15 > (cfl_w_limit * __CG_p_metrics__m_ddqz_z_full_e[__CG_p_metrics__m_ddqz_z_full_e_idx((((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_ddqz_z_full_e_d_0)]));  // T_l0_c0

        }
        if ((_if_cond_29 == 1)) {
            {

                tmp_call_17 = abs(w_con_e);  // T_l642_c642

            }
            tmp_index_905 = ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + ntnd);
            tmp_index_909 = ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + ntnd);
            tmp_index_927 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)]);
            tmp_index_929 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)]);
            tmp_index_939 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_941 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_951 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_953 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_963 = ((- __CG_p_prog__m_SOA_vn_d_0) + __CG_p_patch__CG_edges__m_quad_idx[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_965 = ((- __CG_p_prog__m_SOA_vn_d_2) + __CG_p_patch__CG_edges__m_quad_blk[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_976 = (__CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
            tmp_index_978 = (__CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
            tmp_index_985 = (__CG_p_patch__CG_edges__m_vertex_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
            tmp_index_987 = (__CG_p_patch__CG_edges__m_vertex_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
            {

                tmp_arg_18 = (((- cfl_w_limit) * dtime) + 0.85);  // T_l642_c642
                tmp_arg_19 = (((- cfl_w_limit) * dtime) + ((dtime * tmp_call_17) / __CG_p_metrics__m_ddqz_z_full_e[__CG_p_metrics__m_ddqz_z_full_e_idx((((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_ddqz_z_full_e_d_0)]));  // T_l642_c642
                tmp_call_16 = min(tmp_arg_18, tmp_arg_19);  // T_l642_c642
                difcoef0 = (scalfac_exdiff * tmp_call_16);  // T_l642_c642
                __CG_p_diag__m_ddt_vn_apc_pc[__CG_p_diag__m_ddt_vn_apc_pc_idx((((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1), tmp_index_905, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2)] = (((difcoef0 * __CG_p_patch__CG_edges__m_area_edge[__CG_p_patch__CG_edges__m_area_edge_idx(_for_it_53, _for_it_47, __CG_global_data__m_nproma)]) * ((((((__CG_p_int__m_geofac_grdiv[__CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (1 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_53) + 1), (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_47) + 1), __CG_p_prog__m_SA_vn_d_0)]) + (__CG_p_int__m_geofac_grdiv[__CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (2 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_927, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_929, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_grdiv[__CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (3 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_939, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_941, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_grdiv[__CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (4 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_951, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_953, __CG_p_prog__m_SA_vn_d_0)])) + (__CG_p_int__m_geofac_grdiv[__CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (5 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * __CG_p_prog__m_vn[__CG_p_prog__m_vn_idx(tmp_index_963, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_965, __CG_p_prog__m_SA_vn_d_0)])) + ((__CG_p_patch__CG_edges__m_tangent_orientation[__CG_p_patch__CG_edges__m_tangent_orientation_idx(_for_it_53, _for_it_47, __CG_global_data__m_nproma)] * __CG_p_patch__CG_edges__m_inv_primal_edge_length[__CG_p_patch__CG_edges__m_inv_primal_edge_length_idx(_for_it_53, _for_it_47, __CG_global_data__m_nproma)]) * (zeta[zeta_idx(tmp_index_976, _for_it_52, tmp_index_978, __CG_global_data__m_nproma)] - zeta[zeta_idx(tmp_index_985, _for_it_52, tmp_index_987, __CG_global_data__m_nproma)])))) + __CG_p_diag__m_ddt_vn_apc_pc[__CG_p_diag__m_ddt_vn_apc_pc_idx((((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1), tmp_index_909, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2)]);  // T_l643_c643

            }
        }

    }

}

inline void loop_body_0_7_0(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, const double* __restrict__ __CG_p_diag__m_vn_ie, const double* __restrict__ __CG_p_diag__m_vt, const double* __restrict__ __CG_p_int__m_c_lin_e, const double* __restrict__ __CG_p_int__m_geofac_grdiv, const double* __restrict__ __CG_p_metrics__m_coeff_gradekin, const double* __restrict__ __CG_p_metrics__m_ddqz_z_full_e, const double* __restrict__ __CG_p_patch__CG_edges__m_area_edge, const int* __restrict__ __CG_p_patch__CG_edges__m_cell_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_cell_idx, const int* __restrict__ __CG_p_patch__CG_edges__m_end_index, const double* __restrict__ __CG_p_patch__CG_edges__m_f_e, const double* __restrict__ __CG_p_patch__CG_edges__m_inv_primal_edge_length, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_quad_idx, const int* __restrict__ __CG_p_patch__CG_edges__m_start_index, const double* __restrict__ __CG_p_patch__CG_edges__m_tangent_orientation, const int* __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, const int* __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, const double* __restrict__ __CG_p_prog__m_vn, const double&  cfl_w_limit, const double&  dtime, const int* __restrict__ levelmask, const int&  ntnd, const double&  scalfac_exdiff, const double* __restrict__ z_ekinh, const double* __restrict__ z_kin_hor_e, const double* __restrict__ z_w_con_c_full, const double* __restrict__ zeta, double* __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int SOA_end_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg) {
    int i_startidx_in_var_91_0;
    int i_endidx_in_var_92_0;
    int i_endidx_var_149;
    int i_startidx_var_148;


    i_startidx_in_var_91_0 = __CG_p_patch__CG_edges__m_start_index[(10 - SOA_start_index_d_0_edges_p_patch_4)];
    i_endidx_in_var_92_0 = __CG_p_patch__CG_edges__m_end_index[((- SOA_end_index_d_0_edges_p_patch_4) - 8)];
    if (((_for_it_47 - i_startblk_var_146) != -1)) {

        i_startidx_var_148 = 1;

    } else {

        i_startidx_var_148 = Max(1, i_startidx_in_var_91_0);

    }
    if (((_for_it_47 - i_endblk_var_147) != -1)) {

        i_endidx_var_149 = __CG_global_data__m_nproma;

    } else {

        i_endidx_var_149 = i_endidx_in_var_92_0;

    }

    for (auto _for_it_48 = 0; _for_it_48 < 90; _for_it_48 += 1) {
        #pragma omp simd
        for (auto _for_it_49 = (i_startidx_var_148 - 1); _for_it_49 < i_endidx_var_149; _for_it_49 += 1) {
            loop_body_39_3_16(__state, &__CG_p_diag__m_vn_ie[0], &__CG_p_diag__m_vt[0], &__CG_p_int__m_c_lin_e[0], &__CG_p_metrics__m_coeff_gradekin[0], &__CG_p_metrics__m_ddqz_z_full_e[0], &__CG_p_patch__CG_edges__m_cell_blk[0], &__CG_p_patch__CG_edges__m_cell_idx[0], &__CG_p_patch__CG_edges__m_f_e[0], &__CG_p_patch__CG_edges__m_vertex_blk[0], &__CG_p_patch__CG_edges__m_vertex_idx[0], ntnd, &z_ekinh[0], &z_kin_hor_e[0], &z_w_con_c_full[0], &zeta[0], &__CG_p_diag__m_ddt_vn_apc_pc[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_1, __CG_p_metrics__m_SOA_coeff_gradekin_d_2, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, _for_it_47, _for_it_48, _for_it_49);
        }
    }
    for (auto _for_it_52 = (Max(3, (nrdmax_jg - 2)) - 1); _for_it_52 < 86; _for_it_52 += 1) {
        #pragma omp simd
        for (auto _for_it_53 = (i_startidx_var_148 - 1); _for_it_53 < i_endidx_var_149; _for_it_53 += 1) {
            loop_body_39_3_29(__state, &__CG_p_int__m_c_lin_e[0], &__CG_p_int__m_geofac_grdiv[0], &__CG_p_metrics__m_ddqz_z_full_e[0], &__CG_p_patch__CG_edges__m_area_edge[0], &__CG_p_patch__CG_edges__m_cell_blk[0], &__CG_p_patch__CG_edges__m_cell_idx[0], &__CG_p_patch__CG_edges__m_inv_primal_edge_length[0], &__CG_p_patch__CG_edges__m_quad_blk[0], &__CG_p_patch__CG_edges__m_quad_idx[0], &__CG_p_patch__CG_edges__m_tangent_orientation[0], &__CG_p_patch__CG_edges__m_vertex_blk[0], &__CG_p_patch__CG_edges__m_vertex_idx[0], &__CG_p_prog__m_vn[0], cfl_w_limit, dtime, &levelmask[0], ntnd, scalfac_exdiff, &z_w_con_c_full[0], &zeta[0], &__CG_p_diag__m_ddt_vn_apc_pc[0], SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_int__m_SOA_geofac_grdiv_d_0, __CG_p_int__m_SOA_geofac_grdiv_d_1, __CG_p_int__m_SOA_geofac_grdiv_d_2, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_47, _for_it_52, _for_it_53);
        }
    }
}

static DACE_HDFI constexpr int64_t __CG_p_diag__m_max_vcfl_dyn_idx(int64_t __d0) { return __d0; }
void __program_velocity_no_nproma_if_prop_lvn_only_1_istep_1_internal(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t*__state, int * __restrict__ __CG_global_data__m_nflatlev, int * __restrict__ __CG_global_data__m_nrdmax, double * __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, double * __restrict__ __CG_p_diag__m_ddt_w_adv_pc, double * __restrict__ __CG_p_diag__m_max_vcfl_dyn, double * __restrict__ __CG_p_diag__m_vn_ie, double * __restrict__ __CG_p_diag__m_vt, double * __restrict__ __CG_p_diag__m_w_concorr_c, double * __restrict__ __CG_p_int__m_c_lin_e, double * __restrict__ __CG_p_int__m_cells_aw_verts, double * __restrict__ __CG_p_int__m_e_bln_c_s, double * __restrict__ __CG_p_int__m_geofac_grdiv, double * __restrict__ __CG_p_int__m_geofac_n2s, double * __restrict__ __CG_p_int__m_geofac_rot, double * __restrict__ __CG_p_int__m_rbf_vec_coeff_e, double * __restrict__ __CG_p_metrics__m_coeff1_dwdz, double * __restrict__ __CG_p_metrics__m_coeff2_dwdz, double * __restrict__ __CG_p_metrics__m_coeff_gradekin, double * __restrict__ __CG_p_metrics__m_ddqz_z_full_e, double * __restrict__ __CG_p_metrics__m_ddqz_z_half, double * __restrict__ __CG_p_metrics__m_ddxn_z_full, double * __restrict__ __CG_p_metrics__m_ddxt_z_full, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_mc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_mc, double * __restrict__ __CG_p_metrics__m_wgtfac_c, double * __restrict__ __CG_p_metrics__m_wgtfac_e, double * __restrict__ __CG_p_metrics__m_wgtfacq_e, int * __restrict__ __CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, double * __restrict__ __CG_p_patch__CG_cells__m_area, int * __restrict__ __CG_p_patch__CG_cells__m_edge_blk, int * __restrict__ __CG_p_patch__CG_cells__m_edge_idx, int * __restrict__ __CG_p_patch__CG_cells__m_end_block, int * __restrict__ __CG_p_patch__CG_cells__m_end_index, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_blk, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_idx, int * __restrict__ __CG_p_patch__CG_cells__m_start_block, int * __restrict__ __CG_p_patch__CG_cells__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_area_edge, int * __restrict__ __CG_p_patch__CG_edges__m_cell_blk, int * __restrict__ __CG_p_patch__CG_edges__m_cell_idx, int * __restrict__ __CG_p_patch__CG_edges__m_end_block, int * __restrict__ __CG_p_patch__CG_edges__m_end_index, double * __restrict__ __CG_p_patch__CG_edges__m_f_e, double * __restrict__ __CG_p_patch__CG_edges__m_fn_e, double * __restrict__ __CG_p_patch__CG_edges__m_ft_e, double * __restrict__ __CG_p_patch__CG_edges__m_inv_dual_edge_length, double * __restrict__ __CG_p_patch__CG_edges__m_inv_primal_edge_length, int * __restrict__ __CG_p_patch__CG_edges__m_quad_blk, int * __restrict__ __CG_p_patch__CG_edges__m_quad_idx, int * __restrict__ __CG_p_patch__CG_edges__m_start_block, int * __restrict__ __CG_p_patch__CG_edges__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_tangent_orientation, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, int * __restrict__ __CG_p_patch__CG_verts__m_cell_blk, int * __restrict__ __CG_p_patch__CG_verts__m_cell_idx, int * __restrict__ __CG_p_patch__CG_verts__m_edge_blk, int * __restrict__ __CG_p_patch__CG_verts__m_edge_idx, int * __restrict__ __CG_p_patch__CG_verts__m_end_block, int * __restrict__ __CG_p_patch__CG_verts__m_end_index, int * __restrict__ __CG_p_patch__CG_verts__m_start_block, int * __restrict__ __CG_p_patch__CG_verts__m_start_index, double * __restrict__ __CG_p_prog__m_vn, double * __restrict__ __CG_p_prog__m_w, double * __restrict__ z_kin_hor_e, double * __restrict__ z_vt_ie, double * __restrict__ z_w_concorr_me, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_i_am_accel_node, int __CG_global_data__m_lextra_diffu, int __CG_global_data__m_nproma, int __CG_global_data__m_timer_intp, int __CG_global_data__m_timer_solve_nh_veltend, int __CG_global_data__m_timers_level, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, double dt_linintp_ubc, double dtime, int ldeepatmo, int ntnd)
{
    double* __restrict__ z_w_con_c_full = new (std::align_val_t(64)) double[z_w_con_c_full_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_c)];
    double* __restrict__ zeta = new (std::align_val_t(64)) double[zeta_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_v)];
    double* __restrict__ z_ekinh = new (std::align_val_t(64)) double[z_ekinh_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_c)];
    double cfl_w_limit;
    double* __restrict__ vcflmax = new (std::align_val_t(64)) double[__CG_p_patch__m_nblks_c];
    double scalfac_exdiff;
    double max_vcfl_dyn_var_152;
    int* __restrict__ levmask = new (std::align_val_t(64)) int[levmask_size(__CG_p_patch__m_nblks_c)];
    int* __restrict__ levelmask = new (std::align_val_t(64)) int[levelmask_size()];
    int _anchor_0;
    int _anchor_1;
    int _anchor_2;
    int _anchor_3;
    int _anchor_4;
    int _anchor_5;
    int _anchor_6;
    double _red_tmp_tmp_call_18;
    double* __restrict__ z_w_con_c = new (std::align_val_t(64)) double[z_w_con_c_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_c)];
    int* __restrict__ cfl_clipping = new (std::align_val_t(64)) int[cfl_clipping_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_c)];
    double* __restrict__ z_w_concorr_mc = new (std::align_val_t(64)) double[z_w_concorr_mc_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_c)];
    double* __restrict__ maxvcfl = new (std::align_val_t(64)) double[maxvcfl_size(__CG_global_data__m_nproma, __CG_p_patch__m_nblks_c)];
    int nrdmax_jg;
    int nflatlev_jg;
    int i_startblk_var_118_0;
    int i_endblk_var_119_0;
    int i_startblk_var_146;
    int i_endblk_var_147;
    double tmp_call_18;

    {

        _anchor_0 = (((((((((((((((((((((((((((((((A_z_kin_hor_e_d_0 + A_z_kin_hor_e_d_1) + A_z_kin_hor_e_d_2) + A_z_vt_ie_d_0) + A_z_vt_ie_d_1) + A_z_vt_ie_d_2) + A_z_w_concorr_me_d_0) + A_z_w_concorr_me_d_1) + A_z_w_concorr_me_d_2) + OA_z_kin_hor_e_d_0) + OA_z_kin_hor_e_d_1) + OA_z_kin_hor_e_d_2) + OA_z_vt_ie_d_0) + OA_z_vt_ie_d_1) + OA_z_vt_ie_d_2) + OA_z_w_concorr_me_d_0) + OA_z_w_concorr_me_d_1) + OA_z_w_concorr_me_d_2) + SA_area_d_0_cells_p_patch_2) + SA_area_d_1_cells_p_patch_2) + SA_cell_blk_d_1_edges_p_patch_4) + SA_cell_blk_d_1_verts_p_patch_5) + SA_cell_blk_d_2_edges_p_patch_4) + SA_cell_blk_d_2_verts_p_patch_5) + SA_cell_idx_d_1_edges_p_patch_4) + SA_cell_idx_d_1_verts_p_patch_5) + SA_cell_idx_d_2_edges_p_patch_4) + SA_cell_idx_d_2_verts_p_patch_5) + SA_edge_blk_d_2_cells_p_patch_2) + SA_edge_blk_d_2_verts_p_patch_5) + SA_edge_idx_d_2_cells_p_patch_2) + SA_edge_idx_d_2_verts_p_patch_5);  // __sig_anchor_use_0
        _anchor_1 = (((((((((((((((((((((((((((((((SA_end_block_d_0_cells_p_patch_2 + SA_end_block_d_0_edges_p_patch_4) + SA_end_block_d_0_verts_p_patch_5) + SA_end_index_d_0_cells_p_patch_2) + SA_end_index_d_0_edges_p_patch_4) + SA_end_index_d_0_verts_p_patch_5) + SA_neighbor_blk_d_2_cells_p_patch_2) + SA_neighbor_idx_d_2_cells_p_patch_2) + SA_quad_blk_d_2_edges_p_patch_4) + SA_quad_idx_d_2_edges_p_patch_4) + SA_start_block_d_0_cells_p_patch_2) + SA_start_block_d_0_edges_p_patch_4) + SA_start_block_d_0_verts_p_patch_5) + SA_start_index_d_0_cells_p_patch_2) + SA_start_index_d_0_edges_p_patch_4) + SA_start_index_d_0_verts_p_patch_5) + SA_vertex_blk_d_2_edges_p_patch_4) + SA_vertex_idx_d_2_edges_p_patch_4) + SOA_area_d_0_cells_p_patch_2) + SOA_area_d_1_cells_p_patch_2) + SOA_end_block_d_0_cells_p_patch_2) + SOA_end_block_d_0_edges_p_patch_4) + SOA_end_block_d_0_verts_p_patch_5) + SOA_end_index_d_0_cells_p_patch_2) + SOA_end_index_d_0_edges_p_patch_4) + SOA_end_index_d_0_verts_p_patch_5) + SOA_start_block_d_0_cells_p_patch_2) + SOA_start_block_d_0_edges_p_patch_4) + SOA_start_block_d_0_verts_p_patch_5) + SOA_start_index_d_0_cells_p_patch_2) + SOA_start_index_d_0_edges_p_patch_4) + SOA_start_index_d_0_verts_p_patch_5);  // __sig_anchor_use_1
        _anchor_2 = (((((((((((((((((((((((((((((((__CG_global_data__m_nproma + __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) + __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) + __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3) + __CG_p_diag__m_SA_ddt_w_adv_pc_d_0) + __CG_p_diag__m_SA_ddt_w_adv_pc_d_2) + __CG_p_diag__m_SA_ddt_w_adv_pc_d_3) + __CG_p_diag__m_SA_vn_ie_d_0) + __CG_p_diag__m_SA_vn_ie_d_2) + __CG_p_diag__m_SA_vt_d_0) + __CG_p_diag__m_SA_vt_d_2) + __CG_p_diag__m_SA_w_concorr_c_d_0) + __CG_p_diag__m_SA_w_concorr_c_d_2) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + __CG_p_diag__m_SOA_vn_ie_d_0) + __CG_p_diag__m_SOA_vn_ie_d_1) + __CG_p_diag__m_SOA_vn_ie_d_2) + __CG_p_diag__m_SOA_vt_d_0) + __CG_p_diag__m_SOA_vt_d_1) + __CG_p_diag__m_SOA_vt_d_2) + __CG_p_diag__m_SOA_w_concorr_c_d_0) + __CG_p_diag__m_SOA_w_concorr_c_d_1) + __CG_p_diag__m_SOA_w_concorr_c_d_2) + __CG_p_int__m_SA_c_lin_e_d_0) + __CG_p_int__m_SA_c_lin_e_d_1);  // __sig_anchor_use_2
        _anchor_3 = (((((((((((((((((((((((((((((((__CG_p_int__m_SA_c_lin_e_d_2 + __CG_p_int__m_SA_cells_aw_verts_d_0) + __CG_p_int__m_SA_cells_aw_verts_d_1) + __CG_p_int__m_SA_cells_aw_verts_d_2) + __CG_p_int__m_SA_e_bln_c_s_d_0) + __CG_p_int__m_SA_e_bln_c_s_d_1) + __CG_p_int__m_SA_e_bln_c_s_d_2) + __CG_p_int__m_SA_geofac_grdiv_d_0) + __CG_p_int__m_SA_geofac_grdiv_d_1) + __CG_p_int__m_SA_geofac_grdiv_d_2) + __CG_p_int__m_SA_geofac_n2s_d_0) + __CG_p_int__m_SA_geofac_n2s_d_1) + __CG_p_int__m_SA_geofac_n2s_d_2) + __CG_p_int__m_SA_geofac_rot_d_0) + __CG_p_int__m_SA_geofac_rot_d_1) + __CG_p_int__m_SA_geofac_rot_d_2) + __CG_p_int__m_SA_rbf_vec_coeff_e_d_0) + __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) + __CG_p_int__m_SA_rbf_vec_coeff_e_d_2) + __CG_p_int__m_SOA_c_lin_e_d_0) + __CG_p_int__m_SOA_c_lin_e_d_1) + __CG_p_int__m_SOA_c_lin_e_d_2) + __CG_p_int__m_SOA_cells_aw_verts_d_0) + __CG_p_int__m_SOA_cells_aw_verts_d_1) + __CG_p_int__m_SOA_cells_aw_verts_d_2) + __CG_p_int__m_SOA_e_bln_c_s_d_0) + __CG_p_int__m_SOA_e_bln_c_s_d_1) + __CG_p_int__m_SOA_e_bln_c_s_d_2) + __CG_p_int__m_SOA_geofac_grdiv_d_0) + __CG_p_int__m_SOA_geofac_grdiv_d_1) + __CG_p_int__m_SOA_geofac_grdiv_d_2) + __CG_p_int__m_SOA_geofac_n2s_d_0);  // __sig_anchor_use_3
        _anchor_4 = (((((((((((((((((((((((((((((((__CG_p_int__m_SOA_geofac_n2s_d_1 + __CG_p_int__m_SOA_geofac_n2s_d_2) + __CG_p_int__m_SOA_geofac_rot_d_0) + __CG_p_int__m_SOA_geofac_rot_d_1) + __CG_p_int__m_SOA_geofac_rot_d_2) + __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0) + __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + __CG_p_metrics__m_SA_coeff1_dwdz_d_0) + __CG_p_metrics__m_SA_coeff1_dwdz_d_2) + __CG_p_metrics__m_SA_coeff2_dwdz_d_0) + __CG_p_metrics__m_SA_coeff2_dwdz_d_2) + __CG_p_metrics__m_SA_coeff_gradekin_d_0) + __CG_p_metrics__m_SA_coeff_gradekin_d_1) + __CG_p_metrics__m_SA_coeff_gradekin_d_2) + __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) + __CG_p_metrics__m_SA_ddqz_z_full_e_d_2) + __CG_p_metrics__m_SA_ddqz_z_half_d_0) + __CG_p_metrics__m_SA_ddqz_z_half_d_2) + __CG_p_metrics__m_SA_ddxn_z_full_d_0) + __CG_p_metrics__m_SA_ddxn_z_full_d_2) + __CG_p_metrics__m_SA_ddxt_z_full_d_0) + __CG_p_metrics__m_SA_ddxt_z_full_d_2) + __CG_p_metrics__m_SA_wgtfac_c_d_0) + __CG_p_metrics__m_SA_wgtfac_c_d_2) + __CG_p_metrics__m_SA_wgtfac_e_d_0) + __CG_p_metrics__m_SA_wgtfac_e_d_2) + __CG_p_metrics__m_SA_wgtfacq_e_d_0) + __CG_p_metrics__m_SA_wgtfacq_e_d_1) + __CG_p_metrics__m_SA_wgtfacq_e_d_2) + __CG_p_metrics__m_SOA_coeff1_dwdz_d_0) + __CG_p_metrics__m_SOA_coeff1_dwdz_d_1);  // __sig_anchor_use_4
        _anchor_5 = (((((((((((((((((((((((((((((((__CG_p_metrics__m_SOA_coeff1_dwdz_d_2 + __CG_p_metrics__m_SOA_coeff2_dwdz_d_0) + __CG_p_metrics__m_SOA_coeff2_dwdz_d_1) + __CG_p_metrics__m_SOA_coeff2_dwdz_d_2) + __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + __CG_p_metrics__m_SOA_coeff_gradekin_d_1) + __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + __CG_p_metrics__m_SOA_ddxn_z_full_d_0) + __CG_p_metrics__m_SOA_ddxn_z_full_d_1) + __CG_p_metrics__m_SOA_ddxn_z_full_d_2) + __CG_p_metrics__m_SOA_ddxt_z_full_d_0) + __CG_p_metrics__m_SOA_ddxt_z_full_d_1) + __CG_p_metrics__m_SOA_ddxt_z_full_d_2) + __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0) + __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0) + __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0) + __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0) + __CG_p_metrics__m_SOA_wgtfac_c_d_0) + __CG_p_metrics__m_SOA_wgtfac_c_d_1) + __CG_p_metrics__m_SOA_wgtfac_c_d_2) + __CG_p_metrics__m_SOA_wgtfac_e_d_0) + __CG_p_metrics__m_SOA_wgtfac_e_d_1) + __CG_p_metrics__m_SOA_wgtfac_e_d_2) + __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + __CG_p_metrics__m_SOA_wgtfacq_e_d_1) + __CG_p_metrics__m_SOA_wgtfacq_e_d_2);  // __sig_anchor_use_5
        _anchor_6 = ((((((((((((__CG_p_patch__m_nblks_c + __CG_p_patch__m_nblks_e) + __CG_p_patch__m_nblks_v) + __CG_p_prog__m_SA_vn_d_0) + __CG_p_prog__m_SA_vn_d_2) + __CG_p_prog__m_SA_w_d_0) + __CG_p_prog__m_SA_w_d_2) + __CG_p_prog__m_SOA_vn_d_0) + __CG_p_prog__m_SOA_vn_d_1) + __CG_p_prog__m_SOA_vn_d_2) + __CG_p_prog__m_SOA_w_d_0) + __CG_p_prog__m_SOA_w_d_1) + __CG_p_prog__m_SOA_w_d_2);  // __sig_anchor_use_6

    }
    nrdmax_jg = __CG_global_data__m_nrdmax[0];
    nflatlev_jg = __CG_global_data__m_nflatlev[0];
    i_startblk_var_118_0 = __CG_p_patch__CG_verts__m_start_block[(2 - SOA_start_block_d_0_verts_p_patch_5)];
    i_endblk_var_119_0 = __CG_p_patch__CG_verts__m_end_block[((- SOA_end_block_d_0_verts_p_patch_5) - 5)];
    i_startblk_var_146 = __CG_p_patch__CG_edges__m_start_block[(5 - SOA_start_block_d_0_edges_p_patch_4)];
    i_endblk_var_147 = __CG_p_patch__CG_edges__m_end_block[((- SOA_end_block_d_0_edges_p_patch_4) - 10)];
    {

        cfl_w_limit = (0.65 / dtime);  // T_l424_c424
        scalfac_exdiff = (0.05 / (dtime * (0.85 - (cfl_w_limit * dtime))));  // T_l425_c425
        #pragma omp parallel for
        for (auto _for_it_3_0 = (i_startblk_var_118_0 - 1); _for_it_3_0 < i_endblk_var_119_0; _for_it_3_0 += 1) {
            loop_body_0_0_5(__state, &__CG_p_int__m_geofac_rot[0], &__CG_p_patch__CG_verts__m_edge_blk[0], &__CG_p_patch__CG_verts__m_edge_idx[0], &__CG_p_patch__CG_verts__m_end_index[0], &__CG_p_patch__CG_verts__m_start_index[0], &__CG_p_prog__m_vn[0], &zeta[0], SOA_end_index_d_0_verts_p_patch_5, SOA_start_index_d_0_verts_p_patch_5, __CG_global_data__m_nproma, __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_0, __CG_p_int__m_SOA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_2, __CG_p_patch__m_nblks_c, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_3_0, i_endblk_var_119_0, i_startblk_var_118_0);
        }
        #pragma omp parallel for
        for (auto _for_it_6 = (i_startblk_var_146 - 1); _for_it_6 < i_endblk_var_147; _for_it_6 += 1) {
            loop_body_0_0_15(__state, &__CG_p_int__m_rbf_vec_coeff_e[0], &__CG_p_metrics__m_ddxn_z_full[0], &__CG_p_metrics__m_ddxt_z_full[0], &__CG_p_metrics__m_wgtfac_e[0], &__CG_p_metrics__m_wgtfacq_e[0], &__CG_p_patch__CG_edges__m_end_index[0], &__CG_p_patch__CG_edges__m_quad_blk[0], &__CG_p_patch__CG_edges__m_quad_idx[0], &__CG_p_patch__CG_edges__m_start_index[0], &__CG_p_prog__m_vn[0], &__CG_p_diag__m_vn_ie[0], &__CG_p_diag__m_vt[0], &z_kin_hor_e[0], &z_vt_ie[0], &z_w_concorr_me[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, A_z_vt_ie_d_0, A_z_vt_ie_d_1, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, OA_z_vt_ie_d_0, OA_z_vt_ie_d_1, OA_z_vt_ie_d_2, OA_z_w_concorr_me_d_0, OA_z_w_concorr_me_d_1, OA_z_w_concorr_me_d_2, SOA_end_index_d_0_edges_p_patch_4, SOA_start_index_d_0_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, __CG_p_metrics__m_SA_ddxn_z_full_d_0, __CG_p_metrics__m_SA_ddxt_z_full_d_0, __CG_p_metrics__m_SA_wgtfac_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_1, __CG_p_metrics__m_SOA_ddxn_z_full_d_0, __CG_p_metrics__m_SOA_ddxn_z_full_d_1, __CG_p_metrics__m_SOA_ddxn_z_full_d_2, __CG_p_metrics__m_SOA_ddxt_z_full_d_0, __CG_p_metrics__m_SOA_ddxt_z_full_d_1, __CG_p_metrics__m_SOA_ddxt_z_full_d_2, __CG_p_metrics__m_SOA_wgtfac_e_d_0, __CG_p_metrics__m_SOA_wgtfac_e_d_1, __CG_p_metrics__m_SOA_wgtfac_e_d_2, __CG_p_metrics__m_SOA_wgtfacq_e_d_0, __CG_p_metrics__m_SOA_wgtfacq_e_d_1, __CG_p_metrics__m_SOA_wgtfacq_e_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_6, i_endblk_var_147, i_startblk_var_146, nflatlev_jg);
        }

    }
    i_startblk_var_146 = __CG_p_patch__CG_edges__m_start_block[(7 - SOA_start_block_d_0_edges_p_patch_4)];
    i_endblk_var_147 = __CG_p_patch__CG_edges__m_end_block[((- SOA_end_block_d_0_edges_p_patch_4) - 9)];

    i_startblk_var_146 = __CG_p_patch__CG_cells__m_start_block[(4 - SOA_start_block_d_0_cells_p_patch_2)];
    i_endblk_var_147 = __CG_p_patch__CG_cells__m_end_block[((- SOA_end_block_d_0_cells_p_patch_2) - 5)];

    #pragma omp parallel for
    for (auto _for_it_22 = (i_startblk_var_146 - 1); _for_it_22 < i_endblk_var_147; _for_it_22 += 1) {
        loop_body_0_6_0(__state, &__CG_p_int__m_e_bln_c_s[0], &__CG_p_metrics__m_ddqz_z_half[0], &__CG_p_metrics__m_wgtfac_c[0], &__CG_p_patch__CG_cells__m_edge_blk[0], &__CG_p_patch__CG_cells__m_edge_idx[0], &__CG_p_patch__CG_cells__m_end_index[0], &__CG_p_patch__CG_cells__m_start_index[0], &__CG_p_prog__m_w[0], &cfl_clipping[((91 * __CG_global_data__m_nproma) * ((_for_it_22 - i_startblk_var_146) + 1))], cfl_w_limit, dtime, &z_kin_hor_e[0], &z_w_concorr_me[0], &__CG_p_diag__m_w_concorr_c[0], &levmask[0], &maxvcfl[((91 * __CG_global_data__m_nproma) * ((_for_it_22 - i_startblk_var_146) + 1))], &vcflmax[0], &z_ekinh[0], &z_w_con_c_full[0], &z_w_con_c[((91 * __CG_global_data__m_nproma) * ((_for_it_22 - i_startblk_var_146) + 1))], &z_w_concorr_mc[((90 * __CG_global_data__m_nproma) * ((_for_it_22 - i_startblk_var_146) + 1))], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, OA_z_w_concorr_me_d_0, OA_z_w_concorr_me_d_1, OA_z_w_concorr_me_d_2, SOA_end_index_d_0_cells_p_patch_2, SOA_start_index_d_0_cells_p_patch_2, __CG_global_data__m_nproma, __CG_p_diag__m_SA_w_concorr_c_d_0, __CG_p_diag__m_SOA_w_concorr_c_d_0, __CG_p_diag__m_SOA_w_concorr_c_d_1, __CG_p_diag__m_SOA_w_concorr_c_d_2, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SA_wgtfac_c_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_metrics__m_SOA_wgtfac_c_d_0, __CG_p_metrics__m_SOA_wgtfac_c_d_1, __CG_p_metrics__m_SOA_wgtfac_c_d_2, __CG_p_patch__m_nblks_c, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, _for_it_22, i_endblk_var_147, i_startblk_var_146, nflatlev_jg, nrdmax_jg);
    }
    #pragma omp parallel for simd
    for (auto _for_it_46 = (Max(3, (nrdmax_jg - 2)) - 1); _for_it_46 < 87; _for_it_46 += 1) {
        loop_body_0_6_21(__state, &levmask[0], &levelmask[0], __CG_p_patch__m_nblks_c, _for_it_46, i_endblk_var_147, i_startblk_var_146);
    }
    i_startblk_var_146 = __CG_p_patch__CG_edges__m_start_block[(10 - SOA_start_block_d_0_edges_p_patch_4)];
    i_endblk_var_147 = __CG_p_patch__CG_edges__m_end_block[((- SOA_end_block_d_0_edges_p_patch_4) - 8)];

    #pragma omp parallel for
    for (auto _for_it_47 = (i_startblk_var_146 - 1); _for_it_47 < i_endblk_var_147; _for_it_47 += 1) {
        loop_body_0_7_0(__state, &__CG_p_diag__m_vn_ie[0], &__CG_p_diag__m_vt[0], &__CG_p_int__m_c_lin_e[0], &__CG_p_int__m_geofac_grdiv[0], &__CG_p_metrics__m_coeff_gradekin[0], &__CG_p_metrics__m_ddqz_z_full_e[0], &__CG_p_patch__CG_edges__m_area_edge[0], &__CG_p_patch__CG_edges__m_cell_blk[0], &__CG_p_patch__CG_edges__m_cell_idx[0], &__CG_p_patch__CG_edges__m_end_index[0], &__CG_p_patch__CG_edges__m_f_e[0], &__CG_p_patch__CG_edges__m_inv_primal_edge_length[0], &__CG_p_patch__CG_edges__m_quad_blk[0], &__CG_p_patch__CG_edges__m_quad_idx[0], &__CG_p_patch__CG_edges__m_start_index[0], &__CG_p_patch__CG_edges__m_tangent_orientation[0], &__CG_p_patch__CG_edges__m_vertex_blk[0], &__CG_p_patch__CG_edges__m_vertex_idx[0], &__CG_p_prog__m_vn[0], cfl_w_limit, dtime, &levelmask[0], ntnd, scalfac_exdiff, &z_ekinh[0], &z_kin_hor_e[0], &z_w_con_c_full[0], &zeta[0], &__CG_p_diag__m_ddt_vn_apc_pc[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, SOA_end_index_d_0_edges_p_patch_4, SOA_start_index_d_0_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_int__m_SOA_geofac_grdiv_d_0, __CG_p_int__m_SOA_geofac_grdiv_d_1, __CG_p_int__m_SOA_geofac_grdiv_d_2, __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_1, __CG_p_metrics__m_SOA_coeff_gradekin_d_2, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_47, i_endblk_var_147, i_startblk_var_146, nrdmax_jg);
    }
    i_startblk_var_146 = __CG_p_patch__CG_cells__m_start_block[(4 - SOA_start_block_d_0_cells_p_patch_2)];
    i_endblk_var_147 = __CG_p_patch__CG_cells__m_end_block[((- SOA_end_block_d_0_cells_p_patch_2) - 4)];
    tmp_call_18 = -1e309;
    {

        _red_tmp_tmp_call_18 = -1.7976931348623157e+308;  // seed

    }
    {

        {  // reduce
            (&_red_tmp_tmp_call_18)[0] = ::dace::reduce::max((vcflmax + (i_startblk_var_146 - 1)), (long)(((i_endblk_var_147 - i_startblk_var_146) + 1)), (long)(1), (&_red_tmp_tmp_call_18)[0]);
        }

    }
    tmp_call_18 = _red_tmp_tmp_call_18;
    {

        max_vcfl_dyn_var_152 = max(0.0, tmp_call_18);  // T_l652_c652
        __CG_p_diag__m_max_vcfl_dyn[__CG_p_diag__m_max_vcfl_dyn_idx(0)] = max_vcfl_dyn_var_152;  // T_l653_c653

    }
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](z_w_con_c_full, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](zeta, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](z_ekinh, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](vcflmax, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<int>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](levmask, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<int>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](levelmask, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](z_w_con_c, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<int>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](cfl_clipping, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](z_w_concorr_mc, std::align_val_t(64));
    static_assert(std::is_trivially_destructible<double>::value, "aligned heap deallocation skips destructors");
    ::operator delete[](maxvcfl, std::align_val_t(64));
}

DACE_EXPORTED void __program_velocity_no_nproma_if_prop_lvn_only_1_istep_1(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, int * __restrict__ __CG_global_data__m_nflatlev, int * __restrict__ __CG_global_data__m_nrdmax, double * __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, double * __restrict__ __CG_p_diag__m_ddt_w_adv_pc, double * __restrict__ __CG_p_diag__m_max_vcfl_dyn, double * __restrict__ __CG_p_diag__m_vn_ie, double * __restrict__ __CG_p_diag__m_vt, double * __restrict__ __CG_p_diag__m_w_concorr_c, double * __restrict__ __CG_p_int__m_c_lin_e, double * __restrict__ __CG_p_int__m_cells_aw_verts, double * __restrict__ __CG_p_int__m_e_bln_c_s, double * __restrict__ __CG_p_int__m_geofac_grdiv, double * __restrict__ __CG_p_int__m_geofac_n2s, double * __restrict__ __CG_p_int__m_geofac_rot, double * __restrict__ __CG_p_int__m_rbf_vec_coeff_e, double * __restrict__ __CG_p_metrics__m_coeff1_dwdz, double * __restrict__ __CG_p_metrics__m_coeff2_dwdz, double * __restrict__ __CG_p_metrics__m_coeff_gradekin, double * __restrict__ __CG_p_metrics__m_ddqz_z_full_e, double * __restrict__ __CG_p_metrics__m_ddqz_z_half, double * __restrict__ __CG_p_metrics__m_ddxn_z_full, double * __restrict__ __CG_p_metrics__m_ddxt_z_full, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_mc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_mc, double * __restrict__ __CG_p_metrics__m_wgtfac_c, double * __restrict__ __CG_p_metrics__m_wgtfac_e, double * __restrict__ __CG_p_metrics__m_wgtfacq_e, int * __restrict__ __CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, double * __restrict__ __CG_p_patch__CG_cells__m_area, int * __restrict__ __CG_p_patch__CG_cells__m_edge_blk, int * __restrict__ __CG_p_patch__CG_cells__m_edge_idx, int * __restrict__ __CG_p_patch__CG_cells__m_end_block, int * __restrict__ __CG_p_patch__CG_cells__m_end_index, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_blk, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_idx, int * __restrict__ __CG_p_patch__CG_cells__m_start_block, int * __restrict__ __CG_p_patch__CG_cells__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_area_edge, int * __restrict__ __CG_p_patch__CG_edges__m_cell_blk, int * __restrict__ __CG_p_patch__CG_edges__m_cell_idx, int * __restrict__ __CG_p_patch__CG_edges__m_end_block, int * __restrict__ __CG_p_patch__CG_edges__m_end_index, double * __restrict__ __CG_p_patch__CG_edges__m_f_e, double * __restrict__ __CG_p_patch__CG_edges__m_fn_e, double * __restrict__ __CG_p_patch__CG_edges__m_ft_e, double * __restrict__ __CG_p_patch__CG_edges__m_inv_dual_edge_length, double * __restrict__ __CG_p_patch__CG_edges__m_inv_primal_edge_length, int * __restrict__ __CG_p_patch__CG_edges__m_quad_blk, int * __restrict__ __CG_p_patch__CG_edges__m_quad_idx, int * __restrict__ __CG_p_patch__CG_edges__m_start_block, int * __restrict__ __CG_p_patch__CG_edges__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_tangent_orientation, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, int * __restrict__ __CG_p_patch__CG_verts__m_cell_blk, int * __restrict__ __CG_p_patch__CG_verts__m_cell_idx, int * __restrict__ __CG_p_patch__CG_verts__m_edge_blk, int * __restrict__ __CG_p_patch__CG_verts__m_edge_idx, int * __restrict__ __CG_p_patch__CG_verts__m_end_block, int * __restrict__ __CG_p_patch__CG_verts__m_end_index, int * __restrict__ __CG_p_patch__CG_verts__m_start_block, int * __restrict__ __CG_p_patch__CG_verts__m_start_index, double * __restrict__ __CG_p_prog__m_vn, double * __restrict__ __CG_p_prog__m_w, double * __restrict__ z_kin_hor_e, double * __restrict__ z_vt_ie, double * __restrict__ z_w_concorr_me, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_i_am_accel_node, int __CG_global_data__m_lextra_diffu, int __CG_global_data__m_nproma, int __CG_global_data__m_timer_intp, int __CG_global_data__m_timer_solve_nh_veltend, int __CG_global_data__m_timers_level, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, double dt_linintp_ubc, double dtime, int ldeepatmo, int ntnd)
{
    __program_velocity_no_nproma_if_prop_lvn_only_1_istep_1_internal(__state, __CG_global_data__m_nflatlev, __CG_global_data__m_nrdmax, __CG_p_diag__m_ddt_vn_apc_pc, __CG_p_diag__m_ddt_w_adv_pc, __CG_p_diag__m_max_vcfl_dyn, __CG_p_diag__m_vn_ie, __CG_p_diag__m_vt, __CG_p_diag__m_w_concorr_c, __CG_p_int__m_c_lin_e, __CG_p_int__m_cells_aw_verts, __CG_p_int__m_e_bln_c_s, __CG_p_int__m_geofac_grdiv, __CG_p_int__m_geofac_n2s, __CG_p_int__m_geofac_rot, __CG_p_int__m_rbf_vec_coeff_e, __CG_p_metrics__m_coeff1_dwdz, __CG_p_metrics__m_coeff2_dwdz, __CG_p_metrics__m_coeff_gradekin, __CG_p_metrics__m_ddqz_z_full_e, __CG_p_metrics__m_ddqz_z_half, __CG_p_metrics__m_ddxn_z_full, __CG_p_metrics__m_ddxt_z_full, __CG_p_metrics__m_deepatmo_gradh_ifc, __CG_p_metrics__m_deepatmo_gradh_mc, __CG_p_metrics__m_deepatmo_invr_ifc, __CG_p_metrics__m_deepatmo_invr_mc, __CG_p_metrics__m_wgtfac_c, __CG_p_metrics__m_wgtfac_e, __CG_p_metrics__m_wgtfacq_e, __CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, __CG_p_patch__CG_cells__m_area, __CG_p_patch__CG_cells__m_edge_blk, __CG_p_patch__CG_cells__m_edge_idx, __CG_p_patch__CG_cells__m_end_block, __CG_p_patch__CG_cells__m_end_index, __CG_p_patch__CG_cells__m_neighbor_blk, __CG_p_patch__CG_cells__m_neighbor_idx, __CG_p_patch__CG_cells__m_start_block, __CG_p_patch__CG_cells__m_start_index, __CG_p_patch__CG_edges__m_area_edge, __CG_p_patch__CG_edges__m_cell_blk, __CG_p_patch__CG_edges__m_cell_idx, __CG_p_patch__CG_edges__m_end_block, __CG_p_patch__CG_edges__m_end_index, __CG_p_patch__CG_edges__m_f_e, __CG_p_patch__CG_edges__m_fn_e, __CG_p_patch__CG_edges__m_ft_e, __CG_p_patch__CG_edges__m_inv_dual_edge_length, __CG_p_patch__CG_edges__m_inv_primal_edge_length, __CG_p_patch__CG_edges__m_quad_blk, __CG_p_patch__CG_edges__m_quad_idx, __CG_p_patch__CG_edges__m_start_block, __CG_p_patch__CG_edges__m_start_index, __CG_p_patch__CG_edges__m_tangent_orientation, __CG_p_patch__CG_edges__m_vertex_blk, __CG_p_patch__CG_edges__m_vertex_idx, __CG_p_patch__CG_verts__m_cell_blk, __CG_p_patch__CG_verts__m_cell_idx, __CG_p_patch__CG_verts__m_edge_blk, __CG_p_patch__CG_verts__m_edge_idx, __CG_p_patch__CG_verts__m_end_block, __CG_p_patch__CG_verts__m_end_index, __CG_p_patch__CG_verts__m_start_block, __CG_p_patch__CG_verts__m_start_index, __CG_p_prog__m_vn, __CG_p_prog__m_w, z_kin_hor_e, z_vt_ie, z_w_concorr_me, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, A_z_kin_hor_e_d_2, A_z_vt_ie_d_0, A_z_vt_ie_d_1, A_z_vt_ie_d_2, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1, A_z_w_concorr_me_d_2, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, OA_z_vt_ie_d_0, OA_z_vt_ie_d_1, OA_z_vt_ie_d_2, OA_z_w_concorr_me_d_0, OA_z_w_concorr_me_d_1, OA_z_w_concorr_me_d_2, SA_area_d_0_cells_p_patch_2, SA_area_d_1_cells_p_patch_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_blk_d_1_verts_p_patch_5, SA_cell_blk_d_2_edges_p_patch_4, SA_cell_blk_d_2_verts_p_patch_5, SA_cell_idx_d_1_edges_p_patch_4, SA_cell_idx_d_1_verts_p_patch_5, SA_cell_idx_d_2_edges_p_patch_4, SA_cell_idx_d_2_verts_p_patch_5, SA_edge_blk_d_2_cells_p_patch_2, SA_edge_blk_d_2_verts_p_patch_5, SA_edge_idx_d_2_cells_p_patch_2, SA_edge_idx_d_2_verts_p_patch_5, SA_end_block_d_0_cells_p_patch_2, SA_end_block_d_0_edges_p_patch_4, SA_end_block_d_0_verts_p_patch_5, SA_end_index_d_0_cells_p_patch_2, SA_end_index_d_0_edges_p_patch_4, SA_end_index_d_0_verts_p_patch_5, SA_neighbor_blk_d_2_cells_p_patch_2, SA_neighbor_idx_d_2_cells_p_patch_2, SA_quad_blk_d_2_edges_p_patch_4, SA_quad_idx_d_2_edges_p_patch_4, SA_start_block_d_0_cells_p_patch_2, SA_start_block_d_0_edges_p_patch_4, SA_start_block_d_0_verts_p_patch_5, SA_start_index_d_0_cells_p_patch_2, SA_start_index_d_0_edges_p_patch_4, SA_start_index_d_0_verts_p_patch_5, SA_vertex_blk_d_2_edges_p_patch_4, SA_vertex_idx_d_2_edges_p_patch_4, SOA_area_d_0_cells_p_patch_2, SOA_area_d_1_cells_p_patch_2, SOA_end_block_d_0_cells_p_patch_2, SOA_end_block_d_0_edges_p_patch_4, SOA_end_block_d_0_verts_p_patch_5, SOA_end_index_d_0_cells_p_patch_2, SOA_end_index_d_0_edges_p_patch_4, SOA_end_index_d_0_verts_p_patch_5, SOA_start_block_d_0_cells_p_patch_2, SOA_start_block_d_0_edges_p_patch_4, SOA_start_block_d_0_verts_p_patch_5, SOA_start_index_d_0_cells_p_patch_2, SOA_start_index_d_0_edges_p_patch_4, SOA_start_index_d_0_verts_p_patch_5, __CG_global_data__m_i_am_accel_node, __CG_global_data__m_lextra_diffu, __CG_global_data__m_nproma, __CG_global_data__m_timer_intp, __CG_global_data__m_timer_solve_nh_veltend, __CG_global_data__m_timers_level, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vn_ie_d_2, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SA_vt_d_2, __CG_p_diag__m_SA_w_concorr_c_d_0, __CG_p_diag__m_SA_w_concorr_c_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_diag__m_SOA_w_concorr_c_d_0, __CG_p_diag__m_SOA_w_concorr_c_d_1, __CG_p_diag__m_SOA_w_concorr_c_d_2, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SA_c_lin_e_d_2, __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1, __CG_p_int__m_SA_cells_aw_verts_d_2, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SA_e_bln_c_s_d_2, __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1, __CG_p_int__m_SA_geofac_grdiv_d_2, __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1, __CG_p_int__m_SA_geofac_n2s_d_2, __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1, __CG_p_int__m_SA_geofac_rot_d_2, __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_int__m_SOA_cells_aw_verts_d_0, __CG_p_int__m_SOA_cells_aw_verts_d_1, __CG_p_int__m_SOA_cells_aw_verts_d_2, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_int__m_SOA_geofac_grdiv_d_0, __CG_p_int__m_SOA_geofac_grdiv_d_1, __CG_p_int__m_SOA_geofac_grdiv_d_2, __CG_p_int__m_SOA_geofac_n2s_d_0, __CG_p_int__m_SOA_geofac_n2s_d_1, __CG_p_int__m_SOA_geofac_n2s_d_2, __CG_p_int__m_SOA_geofac_rot_d_0, __CG_p_int__m_SOA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_2, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, __CG_p_metrics__m_SA_coeff1_dwdz_d_0, __CG_p_metrics__m_SA_coeff1_dwdz_d_2, __CG_p_metrics__m_SA_coeff2_dwdz_d_0, __CG_p_metrics__m_SA_coeff2_dwdz_d_2, __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1, __CG_p_metrics__m_SA_coeff_gradekin_d_2, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SA_ddqz_z_half_d_2, __CG_p_metrics__m_SA_ddxn_z_full_d_0, __CG_p_metrics__m_SA_ddxn_z_full_d_2, __CG_p_metrics__m_SA_ddxt_z_full_d_0, __CG_p_metrics__m_SA_ddxt_z_full_d_2, __CG_p_metrics__m_SA_wgtfac_c_d_0, __CG_p_metrics__m_SA_wgtfac_c_d_2, __CG_p_metrics__m_SA_wgtfac_e_d_0, __CG_p_metrics__m_SA_wgtfac_e_d_2, __CG_p_metrics__m_SA_wgtfacq_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_1, __CG_p_metrics__m_SA_wgtfacq_e_d_2, __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, __CG_p_metrics__m_SOA_coeff_gradekin_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_1, __CG_p_metrics__m_SOA_coeff_gradekin_d_2, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_metrics__m_SOA_ddxn_z_full_d_0, __CG_p_metrics__m_SOA_ddxn_z_full_d_1, __CG_p_metrics__m_SOA_ddxn_z_full_d_2, __CG_p_metrics__m_SOA_ddxt_z_full_d_0, __CG_p_metrics__m_SOA_ddxt_z_full_d_1, __CG_p_metrics__m_SOA_ddxt_z_full_d_2, __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, __CG_p_metrics__m_SOA_wgtfac_c_d_0, __CG_p_metrics__m_SOA_wgtfac_c_d_1, __CG_p_metrics__m_SOA_wgtfac_c_d_2, __CG_p_metrics__m_SOA_wgtfac_e_d_0, __CG_p_metrics__m_SOA_wgtfac_e_d_1, __CG_p_metrics__m_SOA_wgtfac_e_d_2, __CG_p_metrics__m_SOA_wgtfacq_e_d_0, __CG_p_metrics__m_SOA_wgtfacq_e_d_1, __CG_p_metrics__m_SOA_wgtfacq_e_d_2, __CG_p_patch__m_nblks_c, __CG_p_patch__m_nblks_e, __CG_p_patch__m_nblks_v, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SA_vn_d_2, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SA_w_d_2, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, dt_linintp_ubc, dtime, ldeepatmo, ntnd);
}

DACE_EXPORTED velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__dace_init_velocity_no_nproma_if_prop_lvn_only_1_istep_1(int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2)
{

    int __result = 0;
    velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state = new velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t();

    if (__result) {
        delete __state;
        return nullptr;
    }

    if (__result) {
        delete __state;
        return nullptr;
    }

    return __state;
}

DACE_EXPORTED int __dace_exit_velocity_no_nproma_if_prop_lvn_only_1_istep_1(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state)
{

    int __err = 0;
    delete __state;
    return __err;
}
