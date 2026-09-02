
#include <cuda_runtime.h>
#include <dace/dace.h>


struct velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t {
    dace::cuda::Context *gpu_context;
    double * __restrict__ __0_gpu___CG_p_int__m_geofac_grdiv;
    int * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_cell_idx;
    int * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_quad_blk;
    int * __restrict__ __0_gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask;
    int * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_cell_blk;
    double * __restrict__ __0_gpu___CG_p_int__m_c_lin_e;
    double * __restrict__ __0_gpu___CG_p_prog__m_vn;
    int * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_vertex_idx;
    double * __restrict__ __0_gpu___CG_p_diag__m_vn_ie;
    double * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_area_edge;
    double * __restrict__ __0_gpu___CG_p_diag__m_ddt_vn_apc_pc;
    double * __restrict__ __0_gpu___CG_p_metrics__m_ddqz_z_half;
    double * __restrict__ __0_gpu___CG_p_diag__m_w_concorr_c;
    double * __restrict__ __0_gpu___CG_p_int__m_cells_aw_verts;
    int * __restrict__ __0_gpu___CG_p_patch__CG_verts__m_edge_idx;
    double * __restrict__ __0_gpu___CG_p_int__m_geofac_rot;
    double * __restrict__ __0_gpu_z_vt_ie;
    int * __restrict__ __0_gpu___CG_p_patch__CG_cells__m_neighbor_blk;
    int * __restrict__ __0_gpu___CG_p_patch__CG_verts__m_cell_blk;
    double * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_f_e;
    int * __restrict__ __0_gpu___CG_p_patch__CG_verts__m_edge_blk;
    double * __restrict__ __0_gpu___CG_p_int__m_e_bln_c_s;
    double * __restrict__ __0_gpu___CG_p_metrics__m_coeff1_dwdz;
    double * __restrict__ __0_gpu___CG_p_diag__m_vt;
    double * __restrict__ __0_gpu___CG_p_metrics__m_coeff_gradekin;
    int * __restrict__ __0_gpu___CG_p_patch__CG_verts__m_cell_idx;
    double * __restrict__ __0_gpu___CG_p_patch__CG_cells__m_area;
    double * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_tangent_orientation;
    double * __restrict__ __0_gpu___CG_p_diag__m_ddt_w_adv_pc;
    int * __restrict__ __0_gpu___CG_p_patch__CG_cells__m_neighbor_idx;
    double * __restrict__ __0_gpu___CG_p_metrics__m_ddqz_z_full_e;
    int * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_quad_idx;
    double * __restrict__ __0_gpu_z_kin_hor_e;
    int * __restrict__ __0_gpu___CG_p_patch__CG_cells__m_edge_idx;
    double * __restrict__ __0_gpu___CG_p_prog__m_w;
    int * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_vertex_blk;
    double * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length;
    int * __restrict__ __0_gpu___CG_p_patch__CG_cells__m_edge_blk;
    double * __restrict__ __0_gpu___CG_p_int__m_geofac_n2s;
    double * __restrict__ __0_gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length;
    double * __restrict__ __0_gpu___CG_p_metrics__m_coeff2_dwdz;
    double * __restrict__ __0_gpu_z_w_con_c_full;
    double * __restrict__ __0_gpu_z_v_grad_w;
    double * __restrict__ __0_gpu_z_w_v;
    double * __restrict__ __0_gpu_zeta;
    double * __restrict__ __0_gpu_z_ekinh;
    double * __restrict__ __0_gpu_vcflmax;
    int * __restrict__ __0_gpu_levmask;
    int * __restrict__ __0_gpu_levelmask;
    double * __restrict__ __0_gpu_z_w_con_c;
    int * __restrict__ __0_gpu_cfl_clipping;
    double * __restrict__ __0_gpu_maxvcfl;
};

#include "reductions_kernel.cuh"
#include "reductions_device.cuh"


DACE_EXPORTED int __dace_init_cuda(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2);
DACE_EXPORTED int __dace_exit_cuda(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state);
DACE_EXPORTED int __dace_gpu_last_error(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state);
DACE_EXPORTED void __dace_gpu_drain_error(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state);
DACE_EXPORTED bool __dace_gpu_set_stream(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int streamid, gpuStream_t stream);
DACE_EXPORTED void __dace_gpu_set_all_streams(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, gpuStream_t stream);

static DACE_HDFI constexpr int64_t gpu___CG_p_int__m_cells_aw_verts_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_cells_aw_verts_d_0, int64_t __CG_p_int__m_SA_cells_aw_verts_d_1) { return ((((__CG_p_int__m_SA_cells_aw_verts_d_0 * __CG_p_int__m_SA_cells_aw_verts_d_1) * __d2) + (__CG_p_int__m_SA_cells_aw_verts_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_prog__m_w_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_prog__m_SA_w_d_0) { return (((__CG_p_prog__m_SA_w_d_0 * __d1) + ((91 * __CG_p_prog__m_SA_w_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_w_v_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((91 * __CG_global_data__m_nproma) * __d2)) + __d0); }
DACE_DFI void loop_body_1_1_5(const const double * __restrict__ gpu___CG_p_int__m_cells_aw_verts, const const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_blk, const const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_idx, const const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_v, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_idx_d_1_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_0_0_0, int _for_it_1_0_0, int _for_it_2_0_0) {
    int tmp_index_48_0_0;
    int tmp_index_72_0_0;
    int tmp_index_50_0_0;
    int tmp_index_14_0_0;
    int tmp_index_24_0_0;
    int tmp_index_26_0_0;
    int tmp_index_62_0_0;
    int tmp_index_38_0_0;
    int tmp_index_60_0_0;
    int tmp_index_36_0_0;
    int tmp_index_74_0_0;
    int tmp_index_12_0_0;


    tmp_index_48_0_0 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_verts__m_cell_idx[((((3 * SA_cell_idx_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_72_0_0 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_verts__m_cell_idx[((((5 * SA_cell_idx_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_50_0_0 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_verts__m_cell_blk[((((3 * SA_cell_blk_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_14_0_0 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_verts__m_cell_blk[((__CG_global_data__m_nproma * _for_it_0_0_0) + _for_it_2_0_0)]);
    tmp_index_24_0_0 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_verts__m_cell_idx[(((SA_cell_idx_d_1_verts_p_patch_5 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_26_0_0 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_verts__m_cell_blk[(((SA_cell_blk_d_1_verts_p_patch_5 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_62_0_0 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_verts__m_cell_blk[((((4 * SA_cell_blk_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_38_0_0 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_verts__m_cell_blk[((((2 * SA_cell_blk_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_60_0_0 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_verts__m_cell_idx[((((4 * SA_cell_idx_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_36_0_0 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_verts__m_cell_idx[((((2 * SA_cell_idx_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_74_0_0 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_verts__m_cell_blk[((((5 * SA_cell_blk_d_1_verts_p_patch_5) * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_0_0_0)) + _for_it_2_0_0)]);
    tmp_index_12_0_0 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_verts__m_cell_idx[((__CG_global_data__m_nproma * _for_it_0_0_0) + _for_it_2_0_0)]);
    {

        gpu_z_w_v[gpu_z_w_v_idx(_for_it_2_0_0, _for_it_1_0_0, _for_it_0_0_0, __CG_global_data__m_nproma)] = ((((((gpu___CG_p_int__m_cells_aw_verts[gpu___CG_p_int__m_cells_aw_verts_idx((((- __CG_p_int__m_SOA_cells_aw_verts_d_0) + _for_it_2_0_0) + 1), (1 - __CG_p_int__m_SOA_cells_aw_verts_d_1), (((- __CG_p_int__m_SOA_cells_aw_verts_d_2) + _for_it_0_0_0) + 1), __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_12_0_0, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_1_0_0) + 1), tmp_index_14_0_0, __CG_p_prog__m_SA_w_d_0)]) + (gpu___CG_p_int__m_cells_aw_verts[gpu___CG_p_int__m_cells_aw_verts_idx((((- __CG_p_int__m_SOA_cells_aw_verts_d_0) + _for_it_2_0_0) + 1), (2 - __CG_p_int__m_SOA_cells_aw_verts_d_1), (((- __CG_p_int__m_SOA_cells_aw_verts_d_2) + _for_it_0_0_0) + 1), __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_24_0_0, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_1_0_0) + 1), tmp_index_26_0_0, __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_int__m_cells_aw_verts[gpu___CG_p_int__m_cells_aw_verts_idx((((- __CG_p_int__m_SOA_cells_aw_verts_d_0) + _for_it_2_0_0) + 1), (3 - __CG_p_int__m_SOA_cells_aw_verts_d_1), (((- __CG_p_int__m_SOA_cells_aw_verts_d_2) + _for_it_0_0_0) + 1), __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_36_0_0, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_1_0_0) + 1), tmp_index_38_0_0, __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_int__m_cells_aw_verts[gpu___CG_p_int__m_cells_aw_verts_idx((((- __CG_p_int__m_SOA_cells_aw_verts_d_0) + _for_it_2_0_0) + 1), (4 - __CG_p_int__m_SOA_cells_aw_verts_d_1), (((- __CG_p_int__m_SOA_cells_aw_verts_d_2) + _for_it_0_0_0) + 1), __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_48_0_0, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_1_0_0) + 1), tmp_index_50_0_0, __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_int__m_cells_aw_verts[gpu___CG_p_int__m_cells_aw_verts_idx((((- __CG_p_int__m_SOA_cells_aw_verts_d_0) + _for_it_2_0_0) + 1), (5 - __CG_p_int__m_SOA_cells_aw_verts_d_1), (((- __CG_p_int__m_SOA_cells_aw_verts_d_2) + _for_it_0_0_0) + 1), __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_60_0_0, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_1_0_0) + 1), tmp_index_62_0_0, __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_int__m_cells_aw_verts[gpu___CG_p_int__m_cells_aw_verts_idx((((- __CG_p_int__m_SOA_cells_aw_verts_d_0) + _for_it_2_0_0) + 1), (6 - __CG_p_int__m_SOA_cells_aw_verts_d_1), (((- __CG_p_int__m_SOA_cells_aw_verts_d_2) + _for_it_0_0_0) + 1), __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_72_0_0, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_1_0_0) + 1), tmp_index_74_0_0, __CG_p_prog__m_SA_w_d_0)]));  // T_l117_c117

    }
}

static DACE_HDFI constexpr int64_t gpu___CG_p_diag__m_vn_ie_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_diag__m_SA_vn_ie_d_0) { return (((__CG_p_diag__m_SA_vn_ie_d_0 * __d1) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_patch__CG_edges__m_tangent_orientation_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_vt_ie_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t A_z_vt_ie_d_0, int64_t A_z_vt_ie_d_1) { return ((((A_z_vt_ie_d_0 * A_z_vt_ie_d_1) * __d2) + (A_z_vt_ie_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_v_grad_w_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
DACE_DFI void loop_body_21_3_12(const const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const const double * __restrict__ gpu___CG_p_prog__m_w, const const double * __restrict__ gpu_z_vt_ie, const const double * __restrict__ gpu_z_w_v, double * __restrict__ gpu_z_v_grad_w, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_16, int _for_it_17, int _for_it_18) {
    int tmp_index_329;
    int tmp_index_331;
    int tmp_index_338;
    int tmp_index_340;
    int tmp_index_354;
    int tmp_index_356;
    int tmp_index_363;
    int tmp_index_365;


    tmp_index_329 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_16) + _for_it_18)]);
    tmp_index_331 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_16) + _for_it_18)]);
    tmp_index_338 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_16)) + _for_it_18)]);
    tmp_index_340 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_16)) + _for_it_18)]);
    tmp_index_354 = (gpu___CG_p_patch__CG_edges__m_vertex_idx[((__CG_global_data__m_nproma * _for_it_16) + _for_it_18)] - 1);
    tmp_index_356 = (gpu___CG_p_patch__CG_edges__m_vertex_blk[((__CG_global_data__m_nproma * _for_it_16) + _for_it_18)] - 1);
    tmp_index_363 = (gpu___CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_16)) + _for_it_18)] - 1);
    tmp_index_365 = (gpu___CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_16)) + _for_it_18)] - 1);
    {

        gpu_z_v_grad_w[gpu_z_v_grad_w_idx(_for_it_18, _for_it_17, _for_it_16, __CG_global_data__m_nproma)] = (((gpu___CG_p_diag__m_vn_ie[gpu___CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_18) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_17) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_16) + 1), __CG_p_diag__m_SA_vn_ie_d_0)] * gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length[gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length_idx(_for_it_18, _for_it_16, __CG_global_data__m_nproma)]) * (gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_329, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_17) + 1), tmp_index_331, __CG_p_prog__m_SA_w_d_0)] - gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_338, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_17) + 1), tmp_index_340, __CG_p_prog__m_SA_w_d_0)])) + (((gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length[gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length_idx(_for_it_18, _for_it_16, __CG_global_data__m_nproma)] * gpu___CG_p_patch__CG_edges__m_tangent_orientation[gpu___CG_p_patch__CG_edges__m_tangent_orientation_idx(_for_it_18, _for_it_16, __CG_global_data__m_nproma)]) * gpu_z_vt_ie[gpu_z_vt_ie_idx((((- OA_z_vt_ie_d_0) + _for_it_18) + 1), (((- OA_z_vt_ie_d_1) + _for_it_17) + 1), (((- OA_z_vt_ie_d_2) + _for_it_16) + 1), A_z_vt_ie_d_0, A_z_vt_ie_d_1)]) * (gpu_z_w_v[gpu_z_w_v_idx(tmp_index_354, _for_it_17, tmp_index_356, __CG_global_data__m_nproma)] - gpu_z_w_v[gpu_z_w_v_idx(tmp_index_363, _for_it_17, tmp_index_365, __CG_global_data__m_nproma)])));  // T_l488_c488

    }
}

static DACE_HDFI constexpr int64_t gpu___CG_p_int__m_geofac_rot_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_geofac_rot_d_0, int64_t __CG_p_int__m_SA_geofac_rot_d_1) { return ((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * __d2) + (__CG_p_int__m_SA_geofac_rot_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_prog__m_vn_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_prog__m_SA_vn_d_0) { return (((__CG_p_prog__m_SA_vn_d_0 * __d1) + ((90 * __CG_p_prog__m_SA_vn_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_zeta_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
DACE_DFI void loop_body_11_2_5(const const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int _for_it_4_0, int _for_it_5_0) {
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


    tmp_index_92_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_verts__m_edge_idx[((__CG_global_data__m_nproma * _for_it_3_0) + _for_it_5_0)]);
    tmp_index_94_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_verts__m_edge_blk[((__CG_global_data__m_nproma * _for_it_3_0) + _for_it_5_0)]);
    tmp_index_104_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_verts__m_edge_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_106_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_verts__m_edge_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_116_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_verts__m_edge_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_118_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_verts__m_edge_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_128_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_verts__m_edge_idx[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_130_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_verts__m_edge_blk[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_140_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_verts__m_edge_idx[((((4 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_142_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_verts__m_edge_blk[((((4 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_152_0 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_verts__m_edge_idx[((((5 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    tmp_index_154_0 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_verts__m_edge_blk[((((5 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_3_0)) + _for_it_5_0)]);
    {

        gpu_zeta[gpu_zeta_idx(_for_it_5_0, _for_it_4_0, _for_it_3_0, __CG_global_data__m_nproma)] = ((((((gpu___CG_p_int__m_geofac_rot[gpu___CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (1 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_92_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_94_0, __CG_p_prog__m_SA_vn_d_0)]) + (gpu___CG_p_int__m_geofac_rot[gpu___CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (2 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_104_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_106_0, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_rot[gpu___CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (3 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_116_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_118_0, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_rot[gpu___CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (4 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_128_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_130_0, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_rot[gpu___CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (5 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_140_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_142_0, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_rot[gpu___CG_p_int__m_geofac_rot_idx((((- __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1), (6 - __CG_p_int__m_SOA_geofac_rot_d_1), (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1), __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_152_0, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1), tmp_index_154_0, __CG_p_prog__m_SA_vn_d_0)]));  // T_l296_c296

    }
}

static DACE_HDFI constexpr int64_t gpu___CG_p_int__m_e_bln_c_s_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_e_bln_c_s_d_0, int64_t __CG_p_int__m_SA_e_bln_c_s_d_1) { return ((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * __d2) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_kin_hor_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t A_z_kin_hor_e_d_0, int64_t A_z_kin_hor_e_d_1) { return ((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * __d2) + (A_z_kin_hor_e_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_ekinh_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
DACE_DFI void loop_body_29_4_5(const const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, const const double * __restrict__ gpu_z_kin_hor_e, double * __restrict__ gpu_z_ekinh, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_23, int _for_it_24) {
    int tmp_index_407;
    int tmp_index_409;
    int tmp_index_419;
    int tmp_index_421;
    int tmp_index_431;
    int tmp_index_433;


    tmp_index_407 = ((- OA_z_kin_hor_e_d_0) + gpu___CG_p_patch__CG_cells__m_edge_idx[((__CG_global_data__m_nproma * _for_it_22) + _for_it_24)]);
    tmp_index_409 = ((- OA_z_kin_hor_e_d_2) + gpu___CG_p_patch__CG_cells__m_edge_blk[((__CG_global_data__m_nproma * _for_it_22) + _for_it_24)]);
    tmp_index_419 = ((- OA_z_kin_hor_e_d_0) + gpu___CG_p_patch__CG_cells__m_edge_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    tmp_index_421 = ((- OA_z_kin_hor_e_d_2) + gpu___CG_p_patch__CG_cells__m_edge_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    tmp_index_431 = ((- OA_z_kin_hor_e_d_0) + gpu___CG_p_patch__CG_cells__m_edge_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    tmp_index_433 = ((- OA_z_kin_hor_e_d_2) + gpu___CG_p_patch__CG_cells__m_edge_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_24)]);
    {

        gpu_z_ekinh[gpu_z_ekinh_idx(_for_it_24, _for_it_23, _for_it_22, __CG_global_data__m_nproma)] = (((gpu___CG_p_int__m_e_bln_c_s[gpu___CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1), (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * gpu_z_kin_hor_e[gpu_z_kin_hor_e_idx(tmp_index_407, (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1), tmp_index_409, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)]) + (gpu___CG_p_int__m_e_bln_c_s[gpu___CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1), (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * gpu_z_kin_hor_e[gpu_z_kin_hor_e_idx(tmp_index_419, (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1), tmp_index_421, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)])) + (gpu___CG_p_int__m_e_bln_c_s[gpu___CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1), (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * gpu_z_kin_hor_e[gpu_z_kin_hor_e_idx(tmp_index_431, (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1), tmp_index_433, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)]));  // T_l515_c515

    }
}

static DACE_HDFI constexpr int64_t gpu_z_w_con_c_v0_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_diag__m_w_concorr_c_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_diag__m_SA_w_concorr_c_d_0) { return (((__CG_p_diag__m_SA_w_concorr_c_d_0 * __d1) + ((91 * __CG_p_diag__m_SA_w_concorr_c_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_levmask_idx(int64_t __d0, int64_t __d1, int64_t __CG_p_patch__m_nblks_c) { return ((__CG_p_patch__m_nblks_c * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_metrics__m_ddqz_z_half_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_ddqz_z_half_d_0) { return (((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * __d1) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_cfl_clipping_v0_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu_maxvcfl_v0_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu_maxvcfl_v1_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_w_con_c_v1_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
DACE_DFI void loop_body_29_1_19(const const double&  dtime, const const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping_v1, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl_v1, double * __restrict__ gpu_z_w_con_c_v1, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_35, int _for_it_37) {
    double tmp_call_8;
    int _if_cond_18;
    double vcfl;


    _if_cond_18 = gpu_cfl_clipping_v1[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)];
    if ((_if_cond_18 == 1)) {

        vcfl = ((dtime * gpu_z_w_con_c_v1[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)]) / gpu___CG_p_metrics__m_ddqz_z_half[(((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1)]);
        {

            gpu_levmask[gpu_levmask_idx(_for_it_22, _for_it_35, __CG_p_patch__m_nblks_c)] = 1;  // T_l556_c556
            tmp_call_8 = abs(vcfl);  // T_l558_c558
            gpu_maxvcfl_v1[gpu_maxvcfl_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)] = max(gpu_maxvcfl_v1[gpu_maxvcfl_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)], tmp_call_8);  // T_l558_c558

        }
        if (((vcfl < -0.85) == true)) {
            {

                gpu_z_w_con_c_v1[gpu_z_w_con_c_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)] = ((-0.85 * gpu___CG_p_metrics__m_ddqz_z_half[gpu___CG_p_metrics__m_ddqz_z_half_idx((((- __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_ddqz_z_half_d_0)]) / dtime);  // T_l560_c560

            }
        } else {
            if (((vcfl > 0.85) == true)) {
                {

                    gpu_z_w_con_c_v1[gpu_z_w_con_c_v1_idx(_for_it_37, _for_it_35, __CG_global_data__m_nproma)] = ((0.85 * gpu___CG_p_metrics__m_ddqz_z_half[gpu___CG_p_metrics__m_ddqz_z_half_idx((((- __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_ddqz_z_half_d_0)]) / dtime);  // T_l562_c562

                }
            }

        }

    }

}

static DACE_HDFI constexpr int64_t gpu_z_w_con_c_full_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_global_data__m_nproma) { return (((__CG_global_data__m_nproma * __d1) + ((90 * __CG_global_data__m_nproma) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu_z_w_con_c_v2_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_metrics__m_coeff1_dwdz_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_coeff1_dwdz_d_0) { return (((__CG_p_metrics__m_SA_coeff1_dwdz_d_0 * __d1) + ((90 * __CG_p_metrics__m_SA_coeff1_dwdz_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_metrics__m_coeff2_dwdz_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_coeff2_dwdz_d_0) { return (((__CG_p_metrics__m_SA_coeff2_dwdz_d_0 * __d1) + ((90 * __CG_p_metrics__m_SA_coeff2_dwdz_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_diag__m_ddt_w_adv_pc_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __d3, int64_t __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int64_t __CG_p_diag__m_SA_ddt_w_adv_pc_d_2) { return ((((((91 * __CG_p_diag__m_SA_ddt_w_adv_pc_d_0) * __CG_p_diag__m_SA_ddt_w_adv_pc_d_2) * __d3) + (__CG_p_diag__m_SA_ddt_w_adv_pc_d_0 * __d1)) + ((91 * __CG_p_diag__m_SA_ddt_w_adv_pc_d_0) * __d2)) + __d0); }
DACE_DFI void loop_body_39_2_6(const const double * __restrict__ gpu___CG_p_metrics__m_coeff1_dwdz, const const double * __restrict__ gpu___CG_p_metrics__m_coeff2_dwdz, const const double * __restrict__ gpu___CG_p_prog__m_w, const double * __restrict__ gpu_z_w_con_c_v2, const const int&  ntnd, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int _for_it_40, int _for_it_41) {
    int tmp_index_540;


    tmp_index_540 = ((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + ntnd);
    {

        gpu___CG_p_diag__m_ddt_w_adv_pc[gpu___CG_p_diag__m_ddt_w_adv_pc_idx((((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + _for_it_41) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + _for_it_40) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + _for_it_22) + 1), tmp_index_540, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2)] = ((- gpu_z_w_con_c_v2[gpu_z_w_con_c_v2_idx(_for_it_41, _for_it_40, __CG_global_data__m_nproma)]) * (((gpu___CG_p_metrics__m_coeff1_dwdz[gpu___CG_p_metrics__m_coeff1_dwdz_idx((((- __CG_p_metrics__m_SOA_coeff1_dwdz_d_0) + _for_it_41) + 1), (((- __CG_p_metrics__m_SOA_coeff1_dwdz_d_1) + _for_it_40) + 1), (((- __CG_p_metrics__m_SOA_coeff1_dwdz_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_coeff1_dwdz_d_0)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx((((- __CG_p_prog__m_SOA_w_d_0) + _for_it_41) + 1), ((- __CG_p_prog__m_SOA_w_d_1) + _for_it_40), (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1), __CG_p_prog__m_SA_w_d_0)]) - (gpu___CG_p_metrics__m_coeff2_dwdz[gpu___CG_p_metrics__m_coeff2_dwdz_idx((((- __CG_p_metrics__m_SOA_coeff2_dwdz_d_0) + _for_it_41) + 1), (((- __CG_p_metrics__m_SOA_coeff2_dwdz_d_1) + _for_it_40) + 1), (((- __CG_p_metrics__m_SOA_coeff2_dwdz_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_coeff2_dwdz_d_0)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx((((- __CG_p_prog__m_SOA_w_d_0) + _for_it_41) + 1), (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_40) + 2), (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1), __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx((((- __CG_p_prog__m_SOA_w_d_0) + _for_it_41) + 1), (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_40) + 1), (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1), __CG_p_prog__m_SA_w_d_0)] * (gpu___CG_p_metrics__m_coeff2_dwdz[gpu___CG_p_metrics__m_coeff2_dwdz_idx((((- __CG_p_metrics__m_SOA_coeff2_dwdz_d_0) + _for_it_41) + 1), (((- __CG_p_metrics__m_SOA_coeff2_dwdz_d_1) + _for_it_40) + 1), (((- __CG_p_metrics__m_SOA_coeff2_dwdz_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_coeff2_dwdz_d_0)] - gpu___CG_p_metrics__m_coeff1_dwdz[gpu___CG_p_metrics__m_coeff1_dwdz_idx((((- __CG_p_metrics__m_SOA_coeff1_dwdz_d_0) + _for_it_41) + 1), (((- __CG_p_metrics__m_SOA_coeff1_dwdz_d_1) + _for_it_40) + 1), (((- __CG_p_metrics__m_SOA_coeff1_dwdz_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_coeff1_dwdz_d_0)]))));  // T_l578_c578

    }
}

DACE_DFI void loop_body_39_2_12(const const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, const const double * __restrict__ gpu_z_v_grad_w, const const int&  ntnd, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_42, int _for_it_43) {
    int tmp_index_567;
    int tmp_index_571;
    int tmp_index_581;
    int tmp_index_583;
    int tmp_index_593;
    int tmp_index_595;
    int tmp_index_605;
    int tmp_index_607;


    tmp_index_567 = ((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + ntnd);
    tmp_index_571 = ((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + ntnd);
    tmp_index_581 = (gpu___CG_p_patch__CG_cells__m_edge_idx[((__CG_global_data__m_nproma * _for_it_22) + _for_it_43)] - 1);
    tmp_index_583 = (gpu___CG_p_patch__CG_cells__m_edge_blk[((__CG_global_data__m_nproma * _for_it_22) + _for_it_43)] - 1);
    tmp_index_593 = (gpu___CG_p_patch__CG_cells__m_edge_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_43)] - 1);
    tmp_index_595 = (gpu___CG_p_patch__CG_cells__m_edge_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_43)] - 1);
    tmp_index_605 = (gpu___CG_p_patch__CG_cells__m_edge_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_43)] - 1);
    tmp_index_607 = (gpu___CG_p_patch__CG_cells__m_edge_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_43)] - 1);
    {

        gpu___CG_p_diag__m_ddt_w_adv_pc[gpu___CG_p_diag__m_ddt_w_adv_pc_idx((((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + _for_it_43) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + _for_it_42) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + _for_it_22) + 1), tmp_index_567, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2)] = (((gpu___CG_p_diag__m_ddt_w_adv_pc[gpu___CG_p_diag__m_ddt_w_adv_pc_idx((((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + _for_it_43) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + _for_it_42) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + _for_it_22) + 1), tmp_index_571, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2)] + (gpu___CG_p_int__m_e_bln_c_s[gpu___CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_43) + 1), (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * gpu_z_v_grad_w[gpu_z_v_grad_w_idx(tmp_index_581, _for_it_42, tmp_index_583, __CG_global_data__m_nproma)])) + (gpu___CG_p_int__m_e_bln_c_s[gpu___CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_43) + 1), (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * gpu_z_v_grad_w[gpu_z_v_grad_w_idx(tmp_index_593, _for_it_42, tmp_index_595, __CG_global_data__m_nproma)])) + (gpu___CG_p_int__m_e_bln_c_s[gpu___CG_p_int__m_e_bln_c_s_idx((((- __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_43) + 1), (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1), (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1)] * gpu_z_v_grad_w[gpu_z_v_grad_w_idx(tmp_index_605, _for_it_42, tmp_index_607, __CG_global_data__m_nproma)]));  // T_l583_c583

    }
}

static DACE_HDFI constexpr int64_t gpu_z_w_con_c_v3_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_patch__CG_cells__m_area_idx(int64_t __d0, int64_t __d1, int64_t SA_area_d_0_cells_p_patch_2) { return ((SA_area_d_0_cells_p_patch_2 * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_int__m_geofac_n2s_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_geofac_n2s_d_0, int64_t __CG_p_int__m_SA_geofac_n2s_d_1) { return ((((__CG_p_int__m_SA_geofac_n2s_d_0 * __CG_p_int__m_SA_geofac_n2s_d_1) * __d2) + (__CG_p_int__m_SA_geofac_n2s_d_0 * __d1)) + __d0); }
DACE_DFI void loop_body_39_2_25(const const double&  cfl_w_limit, const const double&  dtime, const const double * __restrict__ gpu___CG_p_int__m_geofac_n2s, const const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const const int * __restrict__ gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, const const double * __restrict__ gpu___CG_p_patch__CG_cells__m_area, const const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_blk, const const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_idx, const const double * __restrict__ gpu___CG_p_prog__m_w, const int * __restrict__ gpu_cfl_clipping_v2, const int * __restrict__ gpu_levmask, const double * __restrict__ gpu_z_w_con_c_v3, const const int&  ntnd, const const double&  scalfac_exdiff, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, int SA_area_d_0_cells_p_patch_2, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int _for_it_44, int _for_it_45) {
    double tmp_call_10;
    double tmp_call_11;
    double difcoef0;
    double tmp_arg_13;
    double tmp_arg_14;
    int _if_cond_24;
    bool _if_cond_25;
    int tmp_index_622;
    int tmp_index_626;
    int tmp_index_641;
    int tmp_index_643;
    int tmp_index_653;
    int tmp_index_655;
    int tmp_index_665;
    int tmp_index_667;


    _if_cond_24 = gpu_levmask[((__CG_p_patch__m_nblks_c * _for_it_44) + _for_it_22)];
    if ((_if_cond_24 == 1)) {

        _if_cond_25 = (gpu_cfl_clipping_v2[((__CG_global_data__m_nproma * _for_it_44) + _for_it_45)] && gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask[((__CG_global_data__m_nproma * _for_it_22) + _for_it_45)]);
        if ((_if_cond_25 == 1)) {

            tmp_index_622 = ((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + ntnd);
            tmp_index_626 = ((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + ntnd);
            tmp_index_641 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_cells__m_neighbor_idx[((__CG_global_data__m_nproma * _for_it_22) + _for_it_45)]);
            tmp_index_643 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_cells__m_neighbor_blk[((__CG_global_data__m_nproma * _for_it_22) + _for_it_45)]);
            tmp_index_653 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_cells__m_neighbor_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_45)]);
            tmp_index_655 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_cells__m_neighbor_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_45)]);
            tmp_index_665 = ((- __CG_p_prog__m_SOA_w_d_0) + gpu___CG_p_patch__CG_cells__m_neighbor_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_45)]);
            tmp_index_667 = ((- __CG_p_prog__m_SOA_w_d_2) + gpu___CG_p_patch__CG_cells__m_neighbor_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * _for_it_22)) + _for_it_45)]);
            {

                tmp_call_11 = abs(gpu_z_w_con_c_v3[gpu_z_w_con_c_v3_idx(_for_it_45, _for_it_44, __CG_global_data__m_nproma)]);  // T_l591_c591
                tmp_arg_13 = (((- cfl_w_limit) * dtime) + 0.85);  // T_l591_c591
                tmp_arg_14 = (((- cfl_w_limit) * dtime) + ((dtime * tmp_call_11) / gpu___CG_p_metrics__m_ddqz_z_half[gpu___CG_p_metrics__m_ddqz_z_half_idx((((- __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_45) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_44) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_ddqz_z_half_d_0)]));  // T_l591_c591
                tmp_call_10 = min(tmp_arg_13, tmp_arg_14);  // T_l591_c591
                difcoef0 = (scalfac_exdiff * tmp_call_10);  // T_l591_c591
                gpu___CG_p_diag__m_ddt_w_adv_pc[gpu___CG_p_diag__m_ddt_w_adv_pc_idx((((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + _for_it_45) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + _for_it_44) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + _for_it_22) + 1), tmp_index_622, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2)] = (((difcoef0 * gpu___CG_p_patch__CG_cells__m_area[gpu___CG_p_patch__CG_cells__m_area_idx((((- SOA_area_d_0_cells_p_patch_2) + _for_it_45) + 1), (((- SOA_area_d_1_cells_p_patch_2) + _for_it_22) + 1), SA_area_d_0_cells_p_patch_2)]) * ((((gpu___CG_p_int__m_geofac_n2s[gpu___CG_p_int__m_geofac_n2s_idx((((- __CG_p_int__m_SOA_geofac_n2s_d_0) + _for_it_45) + 1), (1 - __CG_p_int__m_SOA_geofac_n2s_d_1), (((- __CG_p_int__m_SOA_geofac_n2s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx((((- __CG_p_prog__m_SOA_w_d_0) + _for_it_45) + 1), (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_44) + 1), (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1), __CG_p_prog__m_SA_w_d_0)]) + (gpu___CG_p_int__m_geofac_n2s[gpu___CG_p_int__m_geofac_n2s_idx((((- __CG_p_int__m_SOA_geofac_n2s_d_0) + _for_it_45) + 1), (2 - __CG_p_int__m_SOA_geofac_n2s_d_1), (((- __CG_p_int__m_SOA_geofac_n2s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_641, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_44) + 1), tmp_index_643, __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_int__m_geofac_n2s[gpu___CG_p_int__m_geofac_n2s_idx((((- __CG_p_int__m_SOA_geofac_n2s_d_0) + _for_it_45) + 1), (3 - __CG_p_int__m_SOA_geofac_n2s_d_1), (((- __CG_p_int__m_SOA_geofac_n2s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_653, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_44) + 1), tmp_index_655, __CG_p_prog__m_SA_w_d_0)])) + (gpu___CG_p_int__m_geofac_n2s[gpu___CG_p_int__m_geofac_n2s_idx((((- __CG_p_int__m_SOA_geofac_n2s_d_0) + _for_it_45) + 1), (4 - __CG_p_int__m_SOA_geofac_n2s_d_1), (((- __CG_p_int__m_SOA_geofac_n2s_d_2) + _for_it_22) + 1), __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1)] * gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx(tmp_index_665, (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_44) + 1), tmp_index_667, __CG_p_prog__m_SA_w_d_0)]))) + gpu___CG_p_diag__m_ddt_w_adv_pc[gpu___CG_p_diag__m_ddt_w_adv_pc_idx((((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + _for_it_45) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + _for_it_44) + 1), (((- __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + _for_it_22) + 1), tmp_index_626, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2)]);  // T_l592_c592

            }
        }

    }

}

static DACE_HDFI constexpr int64_t gpu_levelmask_idx(int64_t __d0) { return __d0; }
DACE_DFI void loop_body_0_5_31(const int * __restrict__ gpu_levmask, int * __restrict__ gpu_levelmask, int __CG_p_patch__m_nblks_c, int _for_it_46, int i_endblk_var_147, int i_startblk_var_146) {
    int _red_tmp_tmp_call_13;
    int tmp_call_13;


    tmp_call_13 = 0;
    {

        _red_tmp_tmp_call_13 = 0;  // seed

    }
    {

        {  // any_to_scalar_device
            _red_tmp_tmp_call_13 = reduce_any_device(&(gpu_levmask + (((__CG_p_patch__m_nblks_c * _for_it_46) + i_startblk_var_146) - 1))[0], (int)(((i_endblk_var_147 - i_startblk_var_146) + 1)));
        }

    }
    tmp_call_13 = _red_tmp_tmp_call_13;
    {

        gpu_levelmask[gpu_levelmask_idx(_for_it_46)] = tmp_call_13;  // T_l600_c600

    }
}

static DACE_HDFI constexpr int64_t gpu___CG_p_diag__m_vt_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_diag__m_SA_vt_d_0) { return (((__CG_p_diag__m_SA_vt_d_0 * __d1) + ((90 * __CG_p_diag__m_SA_vt_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_patch__CG_edges__m_f_e_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_metrics__m_coeff_gradekin_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_coeff_gradekin_d_0, int64_t __CG_p_metrics__m_SA_coeff_gradekin_d_1) { return ((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * __d2) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_int__m_c_lin_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_c_lin_e_d_0, int64_t __CG_p_int__m_SA_c_lin_e_d_1) { return ((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * __d2) + (__CG_p_int__m_SA_c_lin_e_d_0 * __d1)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_metrics__m_ddqz_z_full_e_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) { return (((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * __d1) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * __d2)) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_diag__m_ddt_vn_apc_pc_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __d3, int64_t __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int64_t __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) { return ((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * __d3) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * __d1)) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __d2)) + __d0); }
DACE_DFI void loop_body_65_3_16(const const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const const double * __restrict__ gpu___CG_p_diag__m_vt, const const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const const double * __restrict__ gpu_z_ekinh, const const double * __restrict__ gpu_z_kin_hor_e, const const double * __restrict__ gpu_z_w_con_c_full, const const double * __restrict__ gpu_zeta, const const int&  ntnd, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int _for_it_48, int _for_it_49) {
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
    tmp_index_698 = (gpu___CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_700 = (gpu___CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_710 = (gpu___CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_712 = (gpu___CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_724 = (gpu___CG_p_patch__CG_edges__m_vertex_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_726 = (gpu___CG_p_patch__CG_edges__m_vertex_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_733 = (gpu___CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_735 = (gpu___CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_745 = (gpu___CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_747 = (gpu___CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)] - 1);
    tmp_index_757 = (gpu___CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    tmp_index_759 = (gpu___CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_49)] - 1);
    {

        gpu___CG_p_diag__m_ddt_vn_apc_pc[gpu___CG_p_diag__m_ddt_vn_apc_pc_idx((((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_48) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1), tmp_index_679, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2)] = ((((((- gpu___CG_p_diag__m_vt[gpu___CG_p_diag__m_vt_idx((((- __CG_p_diag__m_SOA_vt_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_48) + 1), (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_47) + 1), __CG_p_diag__m_SA_vt_d_0)]) * ((gpu___CG_p_patch__CG_edges__m_f_e[gpu___CG_p_patch__CG_edges__m_f_e_idx(_for_it_49, _for_it_47, __CG_global_data__m_nproma)] + (0.5 * gpu_zeta[gpu_zeta_idx(tmp_index_724, _for_it_48, tmp_index_726, __CG_global_data__m_nproma)])) + (0.5 * gpu_zeta[gpu_zeta_idx(tmp_index_733, _for_it_48, tmp_index_735, __CG_global_data__m_nproma)]))) - (gpu___CG_p_metrics__m_coeff_gradekin[gpu___CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)] * gpu_z_ekinh[gpu_z_ekinh_idx(tmp_index_698, _for_it_48, tmp_index_700, __CG_global_data__m_nproma)])) + (gpu___CG_p_metrics__m_coeff_gradekin[gpu___CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)] * gpu_z_ekinh[gpu_z_ekinh_idx(tmp_index_710, _for_it_48, tmp_index_712, __CG_global_data__m_nproma)])) - (gpu_z_kin_hor_e[gpu_z_kin_hor_e_idx((((- OA_z_kin_hor_e_d_0) + _for_it_49) + 1), (((- OA_z_kin_hor_e_d_1) + _for_it_48) + 1), (((- OA_z_kin_hor_e_d_2) + _for_it_47) + 1), A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1)] * (gpu___CG_p_metrics__m_coeff_gradekin[gpu___CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)] - gpu___CG_p_metrics__m_coeff_gradekin[gpu___CG_p_metrics__m_coeff_gradekin_idx((((- __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1), (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1), (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1)]))) - (((gpu___CG_p_diag__m_vn_ie[gpu___CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47) + 1), __CG_p_diag__m_SA_vn_ie_d_0)] - gpu___CG_p_diag__m_vn_ie[gpu___CG_p_diag__m_vn_ie_idx((((- __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49) + 1), (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 2), (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47) + 1), __CG_p_diag__m_SA_vn_ie_d_0)]) * ((gpu___CG_p_int__m_c_lin_e[gpu___CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49) + 1), (1 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * gpu_z_w_con_c_full[gpu_z_w_con_c_full_idx(tmp_index_745, _for_it_48, tmp_index_747, __CG_global_data__m_nproma)]) + (gpu___CG_p_int__m_c_lin_e[gpu___CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49) + 1), (2 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * gpu_z_w_con_c_full[gpu_z_w_con_c_full_idx(tmp_index_757, _for_it_48, tmp_index_759, __CG_global_data__m_nproma)]))) / gpu___CG_p_metrics__m_ddqz_z_full_e[gpu___CG_p_metrics__m_ddqz_z_full_e_idx((((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_49) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_48) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_ddqz_z_full_e_d_0)]));  // T_l611_c611

    }
}

static DACE_HDFI constexpr int64_t gpu___CG_p_patch__CG_edges__m_area_edge_idx(int64_t __d0, int64_t __d1, int64_t __CG_global_data__m_nproma) { return ((__CG_global_data__m_nproma * __d1) + __d0); }
static DACE_HDFI constexpr int64_t gpu___CG_p_int__m_geofac_grdiv_idx(int64_t __d0, int64_t __d1, int64_t __d2, int64_t __CG_p_int__m_SA_geofac_grdiv_d_0, int64_t __CG_p_int__m_SA_geofac_grdiv_d_1) { return ((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * __d2) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * __d1)) + __d0); }
DACE_DFI void loop_body_65_3_29(const const double&  cfl_w_limit, const const double&  dtime, const const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const const double * __restrict__ gpu___CG_p_prog__m_vn, const const int * __restrict__ gpu_levelmask, const const double * __restrict__ gpu_z_w_con_c_full, const const double * __restrict__ gpu_zeta, const const int&  ntnd, const const double&  scalfac_exdiff, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, int _for_it_52, int _for_it_53) {
    double tmp_call_16;
    double difcoef1;
    double tmp_arg_19;
    double tmp_arg_18;
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


    _if_cond_28 = (gpu_levelmask[_for_it_52] || gpu_levelmask[(_for_it_52 + 1)]);
    if ((_if_cond_28 == 1)) {

        tmp_index_881 = (gpu___CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
        tmp_index_883 = (gpu___CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
        tmp_index_893 = (gpu___CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
        tmp_index_895 = (gpu___CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
        {

            w_con_e = ((gpu___CG_p_int__m_c_lin_e[gpu___CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53) + 1), (1 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * gpu_z_w_con_c_full[gpu_z_w_con_c_full_idx(tmp_index_881, _for_it_52, tmp_index_883, __CG_global_data__m_nproma)]) + (gpu___CG_p_int__m_c_lin_e[gpu___CG_p_int__m_c_lin_e_idx((((- __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53) + 1), (2 - __CG_p_int__m_SOA_c_lin_e_d_1), (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1)] * gpu_z_w_con_c_full[gpu_z_w_con_c_full_idx(tmp_index_893, _for_it_52, tmp_index_895, __CG_global_data__m_nproma)]));  // T_l640_c640
            tmp_call_15 = abs(w_con_e);  // T_l0_c0
            _if_cond_29 = (tmp_call_15 > (cfl_w_limit * gpu___CG_p_metrics__m_ddqz_z_full_e[gpu___CG_p_metrics__m_ddqz_z_full_e_idx((((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_ddqz_z_full_e_d_0)]));  // T_l0_c0

        }
        if ((_if_cond_29 == 1)) {
            {

                tmp_call_17 = abs(w_con_e);  // T_l642_c642

            }
            tmp_index_905 = ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + ntnd);
            tmp_index_909 = ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + ntnd);
            tmp_index_927 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_edges__m_quad_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)]);
            tmp_index_929 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_edges__m_quad_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)]);
            tmp_index_939 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_edges__m_quad_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_941 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_edges__m_quad_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_951 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_edges__m_quad_idx[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_953 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_edges__m_quad_blk[((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_963 = ((- __CG_p_prog__m_SOA_vn_d_0) + gpu___CG_p_patch__CG_edges__m_quad_idx[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_965 = ((- __CG_p_prog__m_SOA_vn_d_2) + gpu___CG_p_patch__CG_edges__m_quad_blk[((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)]);
            tmp_index_976 = (gpu___CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
            tmp_index_978 = (gpu___CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
            tmp_index_985 = (gpu___CG_p_patch__CG_edges__m_vertex_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
            tmp_index_987 = (gpu___CG_p_patch__CG_edges__m_vertex_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
            {

                tmp_arg_18 = (((- cfl_w_limit) * dtime) + 0.85);  // T_l642_c642
                tmp_arg_19 = (((- cfl_w_limit) * dtime) + ((dtime * tmp_call_17) / gpu___CG_p_metrics__m_ddqz_z_full_e[gpu___CG_p_metrics__m_ddqz_z_full_e_idx((((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1), __CG_p_metrics__m_SA_ddqz_z_full_e_d_0)]));  // T_l642_c642
                tmp_call_16 = min(tmp_arg_18, tmp_arg_19);  // T_l642_c642
                difcoef1 = (scalfac_exdiff * tmp_call_16);  // T_l642_c642
                gpu___CG_p_diag__m_ddt_vn_apc_pc[gpu___CG_p_diag__m_ddt_vn_apc_pc_idx((((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1), tmp_index_905, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2)] = (((difcoef1 * gpu___CG_p_patch__CG_edges__m_area_edge[gpu___CG_p_patch__CG_edges__m_area_edge_idx(_for_it_53, _for_it_47, __CG_global_data__m_nproma)]) * ((((((gpu___CG_p_int__m_geofac_grdiv[gpu___CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (1 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx((((- __CG_p_prog__m_SOA_vn_d_0) + _for_it_53) + 1), (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_47) + 1), __CG_p_prog__m_SA_vn_d_0)]) + (gpu___CG_p_int__m_geofac_grdiv[gpu___CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (2 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_927, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_929, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_grdiv[gpu___CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (3 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_939, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_941, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_grdiv[gpu___CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (4 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_951, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_953, __CG_p_prog__m_SA_vn_d_0)])) + (gpu___CG_p_int__m_geofac_grdiv[gpu___CG_p_int__m_geofac_grdiv_idx((((- __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1), (5 - __CG_p_int__m_SOA_geofac_grdiv_d_1), (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1), __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1)] * gpu___CG_p_prog__m_vn[gpu___CG_p_prog__m_vn_idx(tmp_index_963, (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1), tmp_index_965, __CG_p_prog__m_SA_vn_d_0)])) + ((gpu___CG_p_patch__CG_edges__m_tangent_orientation[gpu___CG_p_patch__CG_edges__m_tangent_orientation_idx(_for_it_53, _for_it_47, __CG_global_data__m_nproma)] * gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length[gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length_idx(_for_it_53, _for_it_47, __CG_global_data__m_nproma)]) * (gpu_zeta[gpu_zeta_idx(tmp_index_976, _for_it_52, tmp_index_978, __CG_global_data__m_nproma)] - gpu_zeta[gpu_zeta_idx(tmp_index_985, _for_it_52, tmp_index_987, __CG_global_data__m_nproma)])))) + gpu___CG_p_diag__m_ddt_vn_apc_pc[gpu___CG_p_diag__m_ddt_vn_apc_pc_idx((((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52) + 1), (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1), tmp_index_909, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2)]);  // T_l643_c643

            }
        }

    }

}



int __dace_init_cuda(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2) {
    int count;

    // Check that we are able to run cuda code
    if (cudaGetDeviceCount(&count) != cudaSuccess)
    {
        printf("ERROR: GPU drivers are not configured or cuda-capable device "
               "not found\n");
        return 1;
    }
    if (count == 0)
    {
        printf("ERROR: No cuda-capable devices found\n");
        return 2;
    }

    // One GPU per process, selected here and never changed, so the memory pool, every kernel and
    // every library handle share it. Which physical GPU is the process's business: the visible-
    // devices variable renumbers what it exposes, so a rank's own GPU is device 0. An ordinal
    // fixed at codegen time cannot do that -- every rank shares one build.
    const int __dace_device = 0;
    if (cudaSetDevice(__dace_device) != cudaSuccess)
    {
        printf("ERROR: could not select cuda device 0 out of %d visible\n", count);
        return 4;
    }

    __dace_gpu_drain_error(__state);

    // Initialize cuda before we run the application
    float *dev_X;
    DACE_GPU_CHECK(cudaMalloc((void **) &dev_X, 1));
    DACE_GPU_CHECK(cudaFree(dev_X));

    __state->gpu_context = new dace::cuda::Context(1, 1);

    // After the context exists: DACE_GPU_CHECK records into it.
    

    // Create cuda streams and events
    for(int i = 0; i < 1; ++i) {
        DACE_GPU_CHECK(cudaStreamCreateWithFlags(&__state->gpu_context->internal_streams[i], cudaStreamNonBlocking));
        __state->gpu_context->streams[i] = __state->gpu_context->internal_streams[i]; // Allow for externals to modify streams
    }
    for(int i = 0; i < 1; ++i) {
        DACE_GPU_CHECK(cudaEventCreateWithFlags(&__state->gpu_context->events[i], cudaEventDisableTiming));
    }

    reduce_gpu_init();


    return 0;
}

int __dace_exit_cuda(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state) {
    reduce_gpu_finalize();


    // Synchronize and check for CUDA errors
    int __err = static_cast<int>(__state->gpu_context->lasterror);
    if (__err == 0)
        __err = static_cast<int>(cudaDeviceSynchronize());

    // Destroy cuda streams and events
    for(int i = 0; i < 1; ++i) {
        DACE_GPU_CHECK(cudaStreamDestroy(__state->gpu_context->internal_streams[i]));
    }
    for(int i = 0; i < 1; ++i) {
        DACE_GPU_CHECK(cudaEventDestroy(__state->gpu_context->events[i]));
    }

    delete __state->gpu_context;
    return __err;
}

// Discard a pending error left by another GPU user in this process, so the next checked call does
// not report it as its own. Sticky errors survive this and are reported normally.
// Must not touch __state->gpu_context: init calls this before the context exists.
void __dace_gpu_drain_error(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state) {
    (void)__state;
    gpuError_t __pre_existing = cudaGetLastError();
    if (__pre_existing != (gpuError_t)0) {
        printf("WARNING: a GPU error was already pending on entry to a DaCe program and has been "
               "discarded: %s (%d). It was not caused by this SDFG.\n",
               gpuGetErrorString(__pre_existing), __pre_existing);
    }
}

// Returns what the generated code recorded, not the runtime's shared slot, and clears it.
int __dace_gpu_last_error(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state) {
    int __err = static_cast<int>(__state->gpu_context->lasterror);
    __state->gpu_context->lasterror = (gpuError_t)0;
    return __err;
}

bool __dace_gpu_set_stream(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int streamid, gpuStream_t stream)
{
    if (streamid < 0 || streamid >= 1)
        return false;

    __state->gpu_context->streams[streamid] = stream;

    return true;
}

void __dace_gpu_set_all_streams(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, gpuStream_t stream)
{
    for (int i = 0; i < 1; ++i)
        __state->gpu_context->streams[i] = stream;
}

__global__ void  __launch_bounds__(512) single_state_body_map_1_1_8(const double * __restrict__ gpu___CG_p_int__m_cells_aw_verts, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_idx, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_v, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_idx_d_1_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_0_0_0, int i_endidx_var_47_0_0, int64_t i_startidx_var_46_0_0) {
    {
        {
            int b__for_it_2_0_0 = (((32 * blockIdx.x) + i_startidx_var_46_0_0) - 1);
            int b__for_it_1_0_0 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_2_0_0 = (threadIdx.x + b__for_it_2_0_0);
                        int _for_it_1_0_0 = (threadIdx.y + b__for_it_1_0_0);
                        if (_for_it_2_0_0 >= b__for_it_2_0_0 && _for_it_2_0_0 < (Min((b__for_it_2_0_0 + 31), (i_endidx_var_47_0_0 - 1)) + 1)) {
                            if (_for_it_1_0_0 >= b__for_it_1_0_0 && _for_it_1_0_0 < (Min(90, (b__for_it_1_0_0 + 15)) + 1)) {
                                loop_body_1_1_5(&gpu___CG_p_int__m_cells_aw_verts[0], &gpu___CG_p_patch__CG_verts__m_cell_blk[0], &gpu___CG_p_patch__CG_verts__m_cell_idx[0], &gpu___CG_p_prog__m_w[0], &gpu_z_w_v[0], SA_cell_blk_d_1_verts_p_patch_5, SA_cell_idx_d_1_verts_p_patch_5, __CG_global_data__m_nproma, __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1, __CG_p_int__m_SOA_cells_aw_verts_d_0, __CG_p_int__m_SOA_cells_aw_verts_d_1, __CG_p_int__m_SOA_cells_aw_verts_d_2, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, _for_it_0_0_0, _for_it_1_0_0, _for_it_2_0_0);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_1_1_8(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_cells_aw_verts, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_idx, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_v, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_idx_d_1_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_0_0_0, int i_endidx_var_47_0_0, int64_t i_startidx_var_46_0_0);
void __dace_runkernel_single_state_body_map_1_1_8(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_cells_aw_verts, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_cell_idx, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_v, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_idx_d_1_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_0_0_0, int i_endidx_var_47_0_0, int64_t i_startidx_var_46_0_0)
{

    if (((int_ceil(((i_endidx_var_47_0_0 - i_startidx_var_46_0_0) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_1_1_8_args[] = { (void *)&gpu___CG_p_int__m_cells_aw_verts, (void *)&gpu___CG_p_patch__CG_verts__m_cell_blk, (void *)&gpu___CG_p_patch__CG_verts__m_cell_idx, (void *)&gpu___CG_p_prog__m_w, (void *)&gpu_z_w_v, (void *)&SA_cell_blk_d_1_verts_p_patch_5, (void *)&SA_cell_idx_d_1_verts_p_patch_5, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_int__m_SA_cells_aw_verts_d_0, (void *)&__CG_p_int__m_SA_cells_aw_verts_d_1, (void *)&__CG_p_int__m_SOA_cells_aw_verts_d_0, (void *)&__CG_p_int__m_SOA_cells_aw_verts_d_1, (void *)&__CG_p_int__m_SOA_cells_aw_verts_d_2, (void *)&__CG_p_prog__m_SA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_1, (void *)&__CG_p_prog__m_SOA_w_d_2, (void *)&_for_it_0_0_0, (void *)&i_endidx_var_47_0_0, (void *)&i_startidx_var_46_0_0 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_1_1_8, dim3(int_ceil(((i_endidx_var_47_0_0 - i_startidx_var_46_0_0) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_1_1_8_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_1_1_8", int_ceil(((i_endidx_var_47_0_0 - i_startidx_var_46_0_0) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_21_3_15(const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_v_grad_w, const double * __restrict__ gpu_z_vt_ie, const double * __restrict__ gpu_z_w_v, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_16, int i_endidx_var_149, int64_t i_startidx_var_148) {
    {
        {
            int b__for_it_18 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_17 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_18 = (threadIdx.x + b__for_it_18);
                        int _for_it_17 = (threadIdx.y + b__for_it_17);
                        if (_for_it_18 >= b__for_it_18 && _for_it_18 < (Min((b__for_it_18 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_17 >= b__for_it_17 && _for_it_17 < (Min(89, (b__for_it_17 + 15)) + 1)) {
                                loop_body_21_3_12(&gpu___CG_p_diag__m_vn_ie[0], &gpu___CG_p_patch__CG_edges__m_cell_blk[0], &gpu___CG_p_patch__CG_edges__m_cell_idx[0], &gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length[0], &gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length[0], &gpu___CG_p_patch__CG_edges__m_tangent_orientation[0], &gpu___CG_p_patch__CG_edges__m_vertex_blk[0], &gpu___CG_p_patch__CG_edges__m_vertex_idx[0], &gpu___CG_p_prog__m_w[0], &gpu_z_vt_ie[0], &gpu_z_w_v[0], &gpu_z_v_grad_w[0], A_z_vt_ie_d_0, A_z_vt_ie_d_1, OA_z_vt_ie_d_0, OA_z_vt_ie_d_1, OA_z_vt_ie_d_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, _for_it_16, _for_it_17, _for_it_18);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_21_3_15(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_v_grad_w, const double * __restrict__ gpu_z_vt_ie, const double * __restrict__ gpu_z_w_v, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_16, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_map_21_3_15(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_v_grad_w, const double * __restrict__ gpu_z_vt_ie, const double * __restrict__ gpu_z_w_v, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_16, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_21_3_15_args[] = { (void *)&gpu___CG_p_diag__m_vn_ie, (void *)&gpu___CG_p_patch__CG_edges__m_cell_blk, (void *)&gpu___CG_p_patch__CG_edges__m_cell_idx, (void *)&gpu___CG_p_patch__CG_edges__m_inv_dual_edge_length, (void *)&gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, (void *)&gpu___CG_p_patch__CG_edges__m_tangent_orientation, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_blk, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_idx, (void *)&gpu___CG_p_prog__m_w, (void *)&gpu_z_v_grad_w, (void *)&gpu_z_vt_ie, (void *)&gpu_z_w_v, (void *)&A_z_vt_ie_d_0, (void *)&A_z_vt_ie_d_1, (void *)&OA_z_vt_ie_d_0, (void *)&OA_z_vt_ie_d_1, (void *)&OA_z_vt_ie_d_2, (void *)&SA_cell_blk_d_1_edges_p_patch_4, (void *)&SA_cell_idx_d_1_edges_p_patch_4, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_vn_ie_d_0, (void *)&__CG_p_diag__m_SOA_vn_ie_d_0, (void *)&__CG_p_diag__m_SOA_vn_ie_d_1, (void *)&__CG_p_diag__m_SOA_vn_ie_d_2, (void *)&__CG_p_patch__m_nblks_e, (void *)&__CG_p_prog__m_SA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_1, (void *)&__CG_p_prog__m_SOA_w_d_2, (void *)&_for_it_16, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_21_3_15, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_21_3_15_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_21_3_15", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_11_2_8(const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endidx_var_121_0, int64_t i_startidx_var_120_0) {
    {
        {
            int b__for_it_5_0 = (((32 * blockIdx.x) + i_startidx_var_120_0) - 1);
            int b__for_it_4_0 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_5_0 = (threadIdx.x + b__for_it_5_0);
                        int _for_it_4_0 = (threadIdx.y + b__for_it_4_0);
                        if (_for_it_5_0 >= b__for_it_5_0 && _for_it_5_0 < (Min((b__for_it_5_0 + 31), (i_endidx_var_121_0 - 1)) + 1)) {
                            if (_for_it_4_0 >= b__for_it_4_0 && _for_it_4_0 < (Min(89, (b__for_it_4_0 + 15)) + 1)) {
                                loop_body_11_2_5(&gpu___CG_p_int__m_geofac_rot[0], &gpu___CG_p_patch__CG_verts__m_edge_blk[0], &gpu___CG_p_patch__CG_verts__m_edge_idx[0], &gpu___CG_p_prog__m_vn[0], &gpu_zeta[0], __CG_global_data__m_nproma, __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_0, __CG_p_int__m_SOA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_2, __CG_p_patch__m_nblks_c, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_3_0, _for_it_4_0, _for_it_5_0);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_11_2_8(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endidx_var_121_0, int64_t i_startidx_var_120_0);
void __dace_runkernel_single_state_body_map_11_2_8(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endidx_var_121_0, int64_t i_startidx_var_120_0)
{

    if (((int_ceil(((i_endidx_var_121_0 - i_startidx_var_120_0) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_11_2_8_args[] = { (void *)&gpu___CG_p_int__m_geofac_rot, (void *)&gpu___CG_p_patch__CG_verts__m_edge_blk, (void *)&gpu___CG_p_patch__CG_verts__m_edge_idx, (void *)&gpu___CG_p_prog__m_vn, (void *)&gpu_zeta, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_int__m_SA_geofac_rot_d_0, (void *)&__CG_p_int__m_SA_geofac_rot_d_1, (void *)&__CG_p_int__m_SOA_geofac_rot_d_0, (void *)&__CG_p_int__m_SOA_geofac_rot_d_1, (void *)&__CG_p_int__m_SOA_geofac_rot_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&__CG_p_prog__m_SA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_1, (void *)&__CG_p_prog__m_SOA_vn_d_2, (void *)&_for_it_3_0, (void *)&i_endidx_var_121_0, (void *)&i_startidx_var_120_0 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_11_2_8, dim3(int_ceil(((i_endidx_var_121_0 - i_startidx_var_120_0) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_11_2_8_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_11_2_8", int_ceil(((i_endidx_var_121_0 - i_startidx_var_120_0) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_29_4_13(const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148) {
    {
        {
            int b__for_it_24 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_23 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_24 = (threadIdx.x + b__for_it_24);
                        int _for_it_23 = (threadIdx.y + b__for_it_23);
                        if (_for_it_24 >= b__for_it_24 && _for_it_24 < (Min((b__for_it_24 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_23 >= b__for_it_23 && _for_it_23 < (Min(89, (b__for_it_23 + 15)) + 1)) {
                                loop_body_29_4_5(&gpu___CG_p_int__m_e_bln_c_s[0], &gpu___CG_p_patch__CG_cells__m_edge_blk[0], &gpu___CG_p_patch__CG_cells__m_edge_idx[0], &gpu_z_kin_hor_e[0], &gpu_z_ekinh[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, __CG_global_data__m_nproma, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_23, _for_it_24);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_29_4_13(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_map_29_4_13(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_29_4_13_args[] = { (void *)&gpu___CG_p_int__m_e_bln_c_s, (void *)&gpu___CG_p_patch__CG_cells__m_edge_blk, (void *)&gpu___CG_p_patch__CG_cells__m_edge_idx, (void *)&gpu_z_ekinh, (void *)&gpu_z_kin_hor_e, (void *)&A_z_kin_hor_e_d_0, (void *)&A_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_0, (void *)&OA_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_2, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_int__m_SA_e_bln_c_s_d_0, (void *)&__CG_p_int__m_SA_e_bln_c_s_d_1, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_0, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_1, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_29_4_13, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_29_4_13_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_29_4_13", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_29_4_15(const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148) {
    {
        {
            int b__for_it_30 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_29 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_30 = (threadIdx.x + b__for_it_30);
                        int _for_it_29 = (threadIdx.y + b__for_it_29);
                        if (_for_it_30 >= b__for_it_30 && _for_it_30 < (Min((b__for_it_30 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_29 >= b__for_it_29 && _for_it_29 < (Min(89, (b__for_it_29 + 15)) + 1)) {
                                gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_30, _for_it_29, __CG_global_data__m_nproma)] = gpu___CG_p_prog__m_w[gpu___CG_p_prog__m_w_idx((((- __CG_p_prog__m_SOA_w_d_0) + _for_it_30) + 1), (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_29) + 1), (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1), __CG_p_prog__m_SA_w_d_0)];  // T_l532_c532
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_29_4_15(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_0_map_29_4_15(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_29_4_15_args[] = { (void *)&gpu___CG_p_prog__m_w, (void *)&gpu_z_w_con_c_v0, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_prog__m_SA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_1, (void *)&__CG_p_prog__m_SOA_w_d_2, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_29_4_15, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_0_map_29_4_15_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_29_4_15", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_1_map_29_5_14(double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int i_endidx_var_149, int64_t i_startidx_var_148) {
    {
        int b__for_it_31 = (((512 * blockIdx.x) + i_startidx_var_148) - 1);
        {
            {
                int _for_it_31 = (threadIdx.x + b__for_it_31);
                if (_for_it_31 >= b__for_it_31 && _for_it_31 < (Min((b__for_it_31 + 511), (i_endidx_var_149 - 1)) + 1)) {
                    gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_31, 90, __CG_global_data__m_nproma)] = 0.0;  // T_l536_c536
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_1_map_29_5_14(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_1_map_29_5_14(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 512)) <= 0)) {

        return;
    }

    void  *single_state_body_1_map_29_5_14_args[] = { (void *)&gpu_z_w_con_c_v0, (void *)&__CG_global_data__m_nproma, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_1_map_29_5_14, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 512), 1, 1), dim3(512, 1, 1), single_state_body_1_map_29_5_14_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_1_map_29_5_14", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 512), 1, 1, 512, 1, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_2_map_29_5_17(const double * __restrict__ gpu___CG_p_diag__m_w_concorr_c, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148, int nflatlev_jg) {
    {
        {
            int b__for_it_33 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_32 = ((16 * blockIdx.y) + nflatlev_jg);
            {
                {
                    {
                        int _for_it_33 = (threadIdx.x + b__for_it_33);
                        int _for_it_32 = (threadIdx.y + b__for_it_32);
                        if (_for_it_33 >= b__for_it_33 && _for_it_33 < (Min((b__for_it_33 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_32 >= b__for_it_32 && _for_it_32 < (Min(89, (b__for_it_32 + 15)) + 1)) {
                                gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_33, _for_it_32, __CG_global_data__m_nproma)] = ((- gpu___CG_p_diag__m_w_concorr_c[gpu___CG_p_diag__m_w_concorr_c_idx((((- __CG_p_diag__m_SOA_w_concorr_c_d_0) + _for_it_33) + 1), (((- __CG_p_diag__m_SOA_w_concorr_c_d_1) + _for_it_32) + 1), (((- __CG_p_diag__m_SOA_w_concorr_c_d_2) + _for_it_22) + 1), __CG_p_diag__m_SA_w_concorr_c_d_0)]) + gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_33, _for_it_32, __CG_global_data__m_nproma)]);  // T_l540_c540
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_2_map_29_5_17(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_diag__m_w_concorr_c, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148, int nflatlev_jg);
void __dace_runkernel_single_state_body_2_map_29_5_17(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_diag__m_w_concorr_c, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148, int nflatlev_jg)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((90 - nflatlev_jg), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_2_map_29_5_17_args[] = { (void *)&gpu___CG_p_diag__m_w_concorr_c, (void *)&gpu_z_w_con_c_v0, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_w_concorr_c_d_0, (void *)&__CG_p_diag__m_SOA_w_concorr_c_d_0, (void *)&__CG_p_diag__m_SOA_w_concorr_c_d_1, (void *)&__CG_p_diag__m_SOA_w_concorr_c_d_2, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nflatlev_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_2_map_29_5_17, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((90 - nflatlev_jg), 16), 1), dim3(32, 16, 1), single_state_body_2_map_29_5_17_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_2_map_29_5_17", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((90 - nflatlev_jg), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_3_map_29_5_16(int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int _for_it_22, int nrdmax_jg) {
    {
        int b__for_it_34 = (((512 * blockIdx.x) + Max(3, (nrdmax_jg - 2))) - 1);
        {
            {
                int _for_it_34 = (threadIdx.x + b__for_it_34);
                if (_for_it_34 >= b__for_it_34 && _for_it_34 < (Min(86, (b__for_it_34 + 511)) + 1)) {
                    gpu_levmask[gpu_levmask_idx(_for_it_22, _for_it_34, __CG_p_patch__m_nblks_c)] = 0;  // T_l544_c544
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_3_map_29_5_16(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int _for_it_22, int nrdmax_jg);
void __dace_runkernel_single_state_body_3_map_29_5_16(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int _for_it_22, int nrdmax_jg)
{

    if (((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512)) <= 0)) {

        return;
    }

    void  *single_state_body_3_map_29_5_16_args[] = { (void *)&gpu_levmask, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_3_map_29_5_16, dim3(int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512), 1, 1), dim3(512, 1, 1), single_state_body_3_map_29_5_16_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_3_map_29_5_16", int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512), 1, 1, 512, 1, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_4_map_29_1_31(const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, int * __restrict__ gpu_cfl_clipping_v0, const double * __restrict__ gpu_z_w_con_c_v0, double tmp_call_7, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int _for_it_22, const double cfl_w_limit, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg) {
    {
        {
            int b__for_it_36 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_35 = (((16 * blockIdx.y) + Max(3, (nrdmax_jg - 2))) - 1);
            {
                {
                    {
                        int _for_it_36 = (threadIdx.x + b__for_it_36);
                        int _for_it_35 = (threadIdx.y + b__for_it_35);
                        if (_for_it_36 >= b__for_it_36 && _for_it_36 < (Min((b__for_it_36 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_35 >= b__for_it_35 && _for_it_35 < (Min(86, (b__for_it_35 + 15)) + 1)) {
                                tmp_call_7 = abs(gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_36, _for_it_35, __CG_global_data__m_nproma)]);  // T_l550_c550
                                gpu_cfl_clipping_v0[gpu_cfl_clipping_v0_idx(_for_it_36, _for_it_35, __CG_global_data__m_nproma)] = (tmp_call_7 > (cfl_w_limit * gpu___CG_p_metrics__m_ddqz_z_half[gpu___CG_p_metrics__m_ddqz_z_half_idx((((- __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_36) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1), (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1), __CG_p_metrics__m_SA_ddqz_z_half_d_0)]));  // T_l550_c550
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_4_map_29_1_31(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, int * __restrict__ gpu_cfl_clipping_v0, const double * __restrict__ gpu_z_w_con_c_v0, double tmp_call_7, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int _for_it_22, const double cfl_w_limit, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg);
void __dace_runkernel_single_state_body_4_map_29_1_31(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, int * __restrict__ gpu_cfl_clipping_v0, const double * __restrict__ gpu_z_w_con_c_v0, double tmp_call_7, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int _for_it_22, const double cfl_w_limit, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_4_map_29_1_31_args[] = { (void *)&gpu___CG_p_metrics__m_ddqz_z_half, (void *)&gpu_cfl_clipping_v0, (void *)&gpu_z_w_con_c_v0, (void *)&tmp_call_7, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_metrics__m_SA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_2, (void *)&_for_it_22, (void *)&cfl_w_limit, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_4_map_29_1_31, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1), dim3(32, 16, 1), single_state_body_4_map_29_1_31_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_4_map_29_1_31", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) init_maxvcfl_29_1_27(double * __restrict__ gpu_maxvcfl_v0, int __CG_global_data__m_nproma) {
    {
        {
            int b__j = (32 * blockIdx.x);
            int b__i = (16 * blockIdx.y);
            {
                {
                    {
                        int _j = (threadIdx.x + b__j);
                        int _i = (threadIdx.y + b__i);
                        if (_j >= b__j && _j < (Min(90, (b__j + 31)) + 1)) {
                            if (_i >= b__i && _i < (Min((__CG_global_data__m_nproma - 1), (b__i + 15)) + 1)) {
                                gpu_maxvcfl_v0[gpu_maxvcfl_v0_idx(_i, _j, __CG_global_data__m_nproma)] = 0;  // zero
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_init_maxvcfl_29_1_27(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu_maxvcfl_v0, int __CG_global_data__m_nproma);
void __dace_runkernel_init_maxvcfl_29_1_27(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu_maxvcfl_v0, int __CG_global_data__m_nproma)
{

    if (((int_ceil(__CG_global_data__m_nproma, 16)) <= 0)) {

        return;
    }

    void  *init_maxvcfl_29_1_27_args[] = { (void *)&gpu_maxvcfl_v0, (void *)&__CG_global_data__m_nproma };
    gpuError_t __err = cudaLaunchKernel((void*)init_maxvcfl_29_1_27, dim3(3, int_ceil(__CG_global_data__m_nproma, 16), 1), dim3(32, 16, 1), init_maxvcfl_29_1_27_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "init_maxvcfl_29_1_27", 3, int_ceil(__CG_global_data__m_nproma, 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_4_map_29_1_33(const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping_v0, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl_v0, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg) {
    {
        {
            int b__for_it_37 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_35 = (((16 * blockIdx.y) + Max(3, (nrdmax_jg - 2))) - 1);
            {
                {
                    {
                        int _for_it_37 = (threadIdx.x + b__for_it_37);
                        int _for_it_35 = (threadIdx.y + b__for_it_35);
                        if (_for_it_37 >= b__for_it_37 && _for_it_37 < (Min((b__for_it_37 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_35 >= b__for_it_35 && _for_it_35 < (Min(86, (b__for_it_35 + 15)) + 1)) {
                                loop_body_29_1_19(dtime, &gpu___CG_p_metrics__m_ddqz_z_half[0], &gpu_cfl_clipping_v0[0], &gpu_levmask[0], &gpu_maxvcfl_v0[0], &gpu_z_w_con_c_v0[0], __CG_global_data__m_nproma, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_35, _for_it_37);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_4_map_29_1_33(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping_v0, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl_v0, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg);
void __dace_runkernel_single_state_body_4_map_29_1_33(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping_v0, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl_v0, double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_4_map_29_1_33_args[] = { (void *)&gpu___CG_p_metrics__m_ddqz_z_half, (void *)&gpu_cfl_clipping_v0, (void *)&gpu_levmask, (void *)&gpu_maxvcfl_v0, (void *)&gpu_z_w_con_c_v0, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_metrics__m_SA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&dtime, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_4_map_29_1_33, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1), dim3(32, 16, 1), single_state_body_4_map_29_1_33_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_4_map_29_1_33", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_5_map_29_1_29(double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148) {
    {
        {
            int b__for_it_39 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_38 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_39 = (threadIdx.x + b__for_it_39);
                        int _for_it_38 = (threadIdx.y + b__for_it_38);
                        if (_for_it_39 >= b__for_it_39 && _for_it_39 < (Min((b__for_it_39 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_38 >= b__for_it_38 && _for_it_38 < (Min(89, (b__for_it_38 + 15)) + 1)) {
                                gpu_z_w_con_c_full[gpu_z_w_con_c_full_idx(_for_it_39, _for_it_38, _for_it_22, __CG_global_data__m_nproma)] = ((0.5 * gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_39, _for_it_38, __CG_global_data__m_nproma)]) + (0.5 * gpu_z_w_con_c_v0[gpu_z_w_con_c_v0_idx(_for_it_39, (_for_it_38 + 1), __CG_global_data__m_nproma)]));  // T_l569_c569
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_5_map_29_1_29(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_5_map_29_1_29(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_5_map_29_1_29_args[] = { (void *)&gpu_z_w_con_c_full, (void *)&gpu_z_w_con_c_v0, (void *)&__CG_global_data__m_nproma, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_5_map_29_1_29, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_5_map_29_1_29_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_5_map_29_1_29", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_39_2_32(double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_metrics__m_coeff1_dwdz, const double * __restrict__ gpu___CG_p_metrics__m_coeff2_dwdz, const double * __restrict__ gpu___CG_p_prog__m_w, const double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_2, int64_t i_startidx_2, const int ntnd) {
    {
        {
            int b__for_it_41 = (((32 * blockIdx.x) + i_startidx_2) - 1);
            int b__for_it_40 = ((16 * blockIdx.y) + 1);
            {
                {
                    {
                        int _for_it_41 = (threadIdx.x + b__for_it_41);
                        int _for_it_40 = (threadIdx.y + b__for_it_40);
                        if (_for_it_41 >= b__for_it_41 && _for_it_41 < (Min((b__for_it_41 + 31), (i_endidx_2 - 1)) + 1)) {
                            if (_for_it_40 >= b__for_it_40 && _for_it_40 < (Min(89, (b__for_it_40 + 15)) + 1)) {
                                loop_body_39_2_6(&gpu___CG_p_metrics__m_coeff1_dwdz[0], &gpu___CG_p_metrics__m_coeff2_dwdz[0], &gpu___CG_p_prog__m_w[0], &gpu_z_w_con_c_v0[0], ntnd, &gpu___CG_p_diag__m_ddt_w_adv_pc[0], __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, __CG_p_metrics__m_SA_coeff1_dwdz_d_0, __CG_p_metrics__m_SA_coeff2_dwdz_d_0, __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, _for_it_22, _for_it_40, _for_it_41);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_39_2_32(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_metrics__m_coeff1_dwdz, const double * __restrict__ gpu___CG_p_metrics__m_coeff2_dwdz, const double * __restrict__ gpu___CG_p_prog__m_w, const double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_2, int64_t i_startidx_2, const int ntnd);
void __dace_runkernel_single_state_body_map_39_2_32(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_metrics__m_coeff1_dwdz, const double * __restrict__ gpu___CG_p_metrics__m_coeff2_dwdz, const double * __restrict__ gpu___CG_p_prog__m_w, const double * __restrict__ gpu_z_w_con_c_v0, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_2, int64_t i_startidx_2, const int ntnd)
{

    if (((int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_39_2_32_args[] = { (void *)&gpu___CG_p_diag__m_ddt_w_adv_pc, (void *)&gpu___CG_p_metrics__m_coeff1_dwdz, (void *)&gpu___CG_p_metrics__m_coeff2_dwdz, (void *)&gpu___CG_p_prog__m_w, (void *)&gpu_z_w_con_c_v0, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_w_adv_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_w_adv_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, (void *)&__CG_p_metrics__m_SA_coeff1_dwdz_d_0, (void *)&__CG_p_metrics__m_SA_coeff2_dwdz_d_0, (void *)&__CG_p_metrics__m_SOA_coeff1_dwdz_d_0, (void *)&__CG_p_metrics__m_SOA_coeff1_dwdz_d_1, (void *)&__CG_p_metrics__m_SOA_coeff1_dwdz_d_2, (void *)&__CG_p_metrics__m_SOA_coeff2_dwdz_d_0, (void *)&__CG_p_metrics__m_SOA_coeff2_dwdz_d_1, (void *)&__CG_p_metrics__m_SOA_coeff2_dwdz_d_2, (void *)&__CG_p_prog__m_SA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_1, (void *)&__CG_p_prog__m_SOA_w_d_2, (void *)&_for_it_22, (void *)&i_endidx_2, (void *)&i_startidx_2, (void *)&ntnd };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_39_2_32, dim3(int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_39_2_32_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_39_2_32", int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_39_2_34(double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, const double * __restrict__ gpu_z_v_grad_w, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_2, int64_t i_startidx_2, const int ntnd) {
    {
        {
            int b__for_it_43 = (((32 * blockIdx.x) + i_startidx_2) - 1);
            int b__for_it_42 = ((16 * blockIdx.y) + 1);
            {
                {
                    {
                        int _for_it_43 = (threadIdx.x + b__for_it_43);
                        int _for_it_42 = (threadIdx.y + b__for_it_42);
                        if (_for_it_43 >= b__for_it_43 && _for_it_43 < (Min((b__for_it_43 + 31), (i_endidx_2 - 1)) + 1)) {
                            if (_for_it_42 >= b__for_it_42 && _for_it_42 < (Min(89, (b__for_it_42 + 15)) + 1)) {
                                loop_body_39_2_12(&gpu___CG_p_int__m_e_bln_c_s[0], &gpu___CG_p_patch__CG_cells__m_edge_blk[0], &gpu___CG_p_patch__CG_cells__m_edge_idx[0], &gpu_z_v_grad_w[0], ntnd, &gpu___CG_p_diag__m_ddt_w_adv_pc[0], __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_42, _for_it_43);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_39_2_34(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, const double * __restrict__ gpu_z_v_grad_w, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_2, int64_t i_startidx_2, const int ntnd);
void __dace_runkernel_single_state_body_0_map_39_2_34(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, const double * __restrict__ gpu_z_v_grad_w, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_2, int64_t i_startidx_2, const int ntnd)
{

    if (((int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_39_2_34_args[] = { (void *)&gpu___CG_p_diag__m_ddt_w_adv_pc, (void *)&gpu___CG_p_int__m_e_bln_c_s, (void *)&gpu___CG_p_patch__CG_cells__m_edge_blk, (void *)&gpu___CG_p_patch__CG_cells__m_edge_idx, (void *)&gpu_z_v_grad_w, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_w_adv_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_w_adv_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, (void *)&__CG_p_int__m_SA_e_bln_c_s_d_0, (void *)&__CG_p_int__m_SA_e_bln_c_s_d_1, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_0, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_1, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&i_endidx_2, (void *)&i_startidx_2, (void *)&ntnd };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_39_2_34, dim3(int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_0_map_39_2_34_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_39_2_34", int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_1_map_39_2_36(double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_int__m_geofac_n2s, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, const double * __restrict__ gpu___CG_p_patch__CG_cells__m_area, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_idx, const double * __restrict__ gpu___CG_p_prog__m_w, const int * __restrict__ gpu_cfl_clipping_v0, const int * __restrict__ gpu_levmask, const double * __restrict__ gpu_z_w_con_c_v0, int SA_area_d_0_cells_p_patch_2, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, const double cfl_w_limit, const double dtime, int i_endidx_2, int64_t i_startidx_2, int nrdmax_jg, const int ntnd, const double scalfac_exdiff) {
    {
        {
            int b__for_it_45 = (((32 * blockIdx.x) + i_startidx_2) - 1);
            int b__for_it_44 = (((16 * blockIdx.y) + Max(3, (nrdmax_jg - 2))) - 1);
            {
                {
                    {
                        int _for_it_45 = (threadIdx.x + b__for_it_45);
                        int _for_it_44 = (threadIdx.y + b__for_it_44);
                        if (_for_it_45 >= b__for_it_45 && _for_it_45 < (Min((b__for_it_45 + 31), (i_endidx_2 - 1)) + 1)) {
                            if (_for_it_44 >= b__for_it_44 && _for_it_44 < (Min(86, (b__for_it_44 + 15)) + 1)) {
                                loop_body_39_2_25(cfl_w_limit, dtime, &gpu___CG_p_int__m_geofac_n2s[0], &gpu___CG_p_metrics__m_ddqz_z_half[0], &gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask[0], &gpu___CG_p_patch__CG_cells__m_area[0], &gpu___CG_p_patch__CG_cells__m_neighbor_blk[0], &gpu___CG_p_patch__CG_cells__m_neighbor_idx[0], &gpu___CG_p_prog__m_w[0], &gpu_cfl_clipping_v0[0], &gpu_levmask[0], &gpu_z_w_con_c_v0[0], ntnd, scalfac_exdiff, &gpu___CG_p_diag__m_ddt_w_adv_pc[0], SA_area_d_0_cells_p_patch_2, SOA_area_d_0_cells_p_patch_2, SOA_area_d_1_cells_p_patch_2, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1, __CG_p_int__m_SOA_geofac_n2s_d_0, __CG_p_int__m_SOA_geofac_n2s_d_1, __CG_p_int__m_SOA_geofac_n2s_d_2, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_patch__m_nblks_c, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, _for_it_22, _for_it_44, _for_it_45);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_1_map_39_2_36(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_int__m_geofac_n2s, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, const double * __restrict__ gpu___CG_p_patch__CG_cells__m_area, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_idx, const double * __restrict__ gpu___CG_p_prog__m_w, const int * __restrict__ gpu_cfl_clipping_v0, const int * __restrict__ gpu_levmask, const double * __restrict__ gpu_z_w_con_c_v0, int SA_area_d_0_cells_p_patch_2, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, const double cfl_w_limit, const double dtime, int i_endidx_2, int64_t i_startidx_2, int nrdmax_jg, const int ntnd, const double scalfac_exdiff);
void __dace_runkernel_single_state_body_1_map_39_2_36(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_w_adv_pc, const double * __restrict__ gpu___CG_p_int__m_geofac_n2s, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, const double * __restrict__ gpu___CG_p_patch__CG_cells__m_area, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_neighbor_idx, const double * __restrict__ gpu___CG_p_prog__m_w, const int * __restrict__ gpu_cfl_clipping_v0, const int * __restrict__ gpu_levmask, const double * __restrict__ gpu_z_w_con_c_v0, int SA_area_d_0_cells_p_patch_2, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, const double cfl_w_limit, const double dtime, int i_endidx_2, int64_t i_startidx_2, int nrdmax_jg, const int ntnd, const double scalfac_exdiff)
{

    if (((int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32)) <= 0) || ((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_1_map_39_2_36_args[] = { (void *)&gpu___CG_p_diag__m_ddt_w_adv_pc, (void *)&gpu___CG_p_int__m_geofac_n2s, (void *)&gpu___CG_p_metrics__m_ddqz_z_half, (void *)&gpu___CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, (void *)&gpu___CG_p_patch__CG_cells__m_area, (void *)&gpu___CG_p_patch__CG_cells__m_neighbor_blk, (void *)&gpu___CG_p_patch__CG_cells__m_neighbor_idx, (void *)&gpu___CG_p_prog__m_w, (void *)&gpu_cfl_clipping_v0, (void *)&gpu_levmask, (void *)&gpu_z_w_con_c_v0, (void *)&SA_area_d_0_cells_p_patch_2, (void *)&SOA_area_d_0_cells_p_patch_2, (void *)&SOA_area_d_1_cells_p_patch_2, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_w_adv_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_w_adv_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, (void *)&__CG_p_int__m_SA_geofac_n2s_d_0, (void *)&__CG_p_int__m_SA_geofac_n2s_d_1, (void *)&__CG_p_int__m_SOA_geofac_n2s_d_0, (void *)&__CG_p_int__m_SOA_geofac_n2s_d_1, (void *)&__CG_p_int__m_SOA_geofac_n2s_d_2, (void *)&__CG_p_metrics__m_SA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&__CG_p_prog__m_SA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_1, (void *)&__CG_p_prog__m_SOA_w_d_2, (void *)&_for_it_22, (void *)&cfl_w_limit, (void *)&dtime, (void *)&i_endidx_2, (void *)&i_startidx_2, (void *)&nrdmax_jg, (void *)&ntnd, (void *)&scalfac_exdiff };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_1_map_39_2_36, dim3(int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1), dim3(32, 16, 1), single_state_body_1_map_39_2_36_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_1_map_39_2_36", int_ceil(((i_endidx_2 - i_startidx_2) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_0_5_41(int * __restrict__ gpu_levelmask, const int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg) {
    {
        int b__for_it_46 = (((512 * blockIdx.x) + Max(3, (nrdmax_jg - 2))) - 1);
        {
            {
                int _for_it_46 = (threadIdx.x + b__for_it_46);
                if (_for_it_46 >= b__for_it_46 && _for_it_46 < (Min(86, (b__for_it_46 + 511)) + 1)) {
                    loop_body_0_5_31(&gpu_levmask[0], &gpu_levelmask[0], __CG_p_patch__m_nblks_c, _for_it_46, i_endblk_var_147, i_startblk_var_146);
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_0_5_41(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int * __restrict__ gpu_levelmask, const int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg);
void __dace_runkernel_single_state_body_0_map_0_5_41(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, int * __restrict__ gpu_levelmask, const int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg)
{

    if (((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_0_5_41_args[] = { (void *)&gpu_levelmask, (void *)&gpu_levmask, (void *)&__CG_p_patch__m_nblks_c, (void *)&i_endblk_var_147, (void *)&i_startblk_var_146, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_0_5_41, dim3(int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512), 1, 1), dim3(512, 1, 1), single_state_body_0_map_0_5_41_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_0_5_41", int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512), 1, 1, 512, 1, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_65_3_34(double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int i_endidx_var_149, int64_t i_startidx_var_148, const int ntnd) {
    {
        {
            int b__for_it_49 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_48 = (16 * blockIdx.y);
            {
                {
                    {
                        int _for_it_49 = (threadIdx.x + b__for_it_49);
                        int _for_it_48 = (threadIdx.y + b__for_it_48);
                        if (_for_it_49 >= b__for_it_49 && _for_it_49 < (Min((b__for_it_49 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_48 >= b__for_it_48 && _for_it_48 < (Min(89, (b__for_it_48 + 15)) + 1)) {
                                loop_body_65_3_16(&gpu___CG_p_diag__m_vn_ie[0], &gpu___CG_p_diag__m_vt[0], &gpu___CG_p_int__m_c_lin_e[0], &gpu___CG_p_metrics__m_coeff_gradekin[0], &gpu___CG_p_metrics__m_ddqz_z_full_e[0], &gpu___CG_p_patch__CG_edges__m_cell_blk[0], &gpu___CG_p_patch__CG_edges__m_cell_idx[0], &gpu___CG_p_patch__CG_edges__m_f_e[0], &gpu___CG_p_patch__CG_edges__m_vertex_blk[0], &gpu___CG_p_patch__CG_edges__m_vertex_idx[0], &gpu_z_ekinh[0], &gpu_z_kin_hor_e[0], &gpu_z_w_con_c_full[0], &gpu_zeta[0], ntnd, &gpu___CG_p_diag__m_ddt_vn_apc_pc[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_1, __CG_p_metrics__m_SOA_coeff_gradekin_d_2, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, _for_it_47, _for_it_48, _for_it_49);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_65_3_34(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int i_endidx_var_149, int64_t i_startidx_var_148, const int ntnd);
void __dace_runkernel_single_state_body_0_map_65_3_34(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int i_endidx_var_149, int64_t i_startidx_var_148, const int ntnd)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_65_3_34_args[] = { (void *)&gpu___CG_p_diag__m_ddt_vn_apc_pc, (void *)&gpu___CG_p_diag__m_vn_ie, (void *)&gpu___CG_p_diag__m_vt, (void *)&gpu___CG_p_int__m_c_lin_e, (void *)&gpu___CG_p_metrics__m_coeff_gradekin, (void *)&gpu___CG_p_metrics__m_ddqz_z_full_e, (void *)&gpu___CG_p_patch__CG_edges__m_cell_blk, (void *)&gpu___CG_p_patch__CG_edges__m_cell_idx, (void *)&gpu___CG_p_patch__CG_edges__m_f_e, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_blk, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_idx, (void *)&gpu_z_ekinh, (void *)&gpu_z_kin_hor_e, (void *)&gpu_z_w_con_c_full, (void *)&gpu_zeta, (void *)&A_z_kin_hor_e_d_0, (void *)&A_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_0, (void *)&OA_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_2, (void *)&SA_cell_blk_d_1_edges_p_patch_4, (void *)&SA_cell_idx_d_1_edges_p_patch_4, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SA_vn_ie_d_0, (void *)&__CG_p_diag__m_SA_vt_d_0, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, (void *)&__CG_p_diag__m_SOA_vn_ie_d_0, (void *)&__CG_p_diag__m_SOA_vn_ie_d_1, (void *)&__CG_p_diag__m_SOA_vn_ie_d_2, (void *)&__CG_p_diag__m_SOA_vt_d_0, (void *)&__CG_p_diag__m_SOA_vt_d_1, (void *)&__CG_p_diag__m_SOA_vt_d_2, (void *)&__CG_p_int__m_SA_c_lin_e_d_0, (void *)&__CG_p_int__m_SA_c_lin_e_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_0, (void *)&__CG_p_int__m_SOA_c_lin_e_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_2, (void *)&__CG_p_metrics__m_SA_coeff_gradekin_d_0, (void *)&__CG_p_metrics__m_SA_coeff_gradekin_d_1, (void *)&__CG_p_metrics__m_SA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_coeff_gradekin_d_0, (void *)&__CG_p_metrics__m_SOA_coeff_gradekin_d_1, (void *)&__CG_p_metrics__m_SOA_coeff_gradekin_d_2, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, (void *)&__CG_p_patch__m_nblks_e, (void *)&_for_it_47, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&ntnd };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_65_3_34, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_0_map_65_3_34_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_65_3_34", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_65_3_36(double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, const double cfl_w_limit, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg, const int ntnd, const double scalfac_exdiff) {
    {
        {
            int b__for_it_53 = (((32 * blockIdx.x) + i_startidx_var_148) - 1);
            int b__for_it_52 = (((16 * blockIdx.y) + Max(3, (nrdmax_jg - 2))) - 1);
            {
                {
                    {
                        int _for_it_53 = (threadIdx.x + b__for_it_53);
                        int _for_it_52 = (threadIdx.y + b__for_it_52);
                        if (_for_it_53 >= b__for_it_53 && _for_it_53 < (Min((b__for_it_53 + 31), (i_endidx_var_149 - 1)) + 1)) {
                            if (_for_it_52 >= b__for_it_52 && _for_it_52 < (Min(85, (b__for_it_52 + 15)) + 1)) {
                                loop_body_65_3_29(cfl_w_limit, dtime, &gpu___CG_p_int__m_c_lin_e[0], &gpu___CG_p_int__m_geofac_grdiv[0], &gpu___CG_p_metrics__m_ddqz_z_full_e[0], &gpu___CG_p_patch__CG_edges__m_area_edge[0], &gpu___CG_p_patch__CG_edges__m_cell_blk[0], &gpu___CG_p_patch__CG_edges__m_cell_idx[0], &gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length[0], &gpu___CG_p_patch__CG_edges__m_quad_blk[0], &gpu___CG_p_patch__CG_edges__m_quad_idx[0], &gpu___CG_p_patch__CG_edges__m_tangent_orientation[0], &gpu___CG_p_patch__CG_edges__m_vertex_blk[0], &gpu___CG_p_patch__CG_edges__m_vertex_idx[0], &gpu___CG_p_prog__m_vn[0], &gpu_levelmask[0], &gpu_z_w_con_c_full[0], &gpu_zeta[0], ntnd, scalfac_exdiff, &gpu___CG_p_diag__m_ddt_vn_apc_pc[0], SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_int__m_SOA_geofac_grdiv_d_0, __CG_p_int__m_SOA_geofac_grdiv_d_1, __CG_p_int__m_SOA_geofac_grdiv_d_2, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_47, _for_it_52, _for_it_53);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_65_3_36(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, const double cfl_w_limit, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg, const int ntnd, const double scalfac_exdiff);
void __dace_runkernel_single_state_body_map_65_3_36(velocity_no_nproma_if_prop_lvn_only_0_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, const double cfl_w_limit, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg, const int ntnd, const double scalfac_exdiff)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((87 - Max(3, (nrdmax_jg - 2))), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_map_65_3_36_args[] = { (void *)&gpu___CG_p_diag__m_ddt_vn_apc_pc, (void *)&gpu___CG_p_int__m_c_lin_e, (void *)&gpu___CG_p_int__m_geofac_grdiv, (void *)&gpu___CG_p_metrics__m_ddqz_z_full_e, (void *)&gpu___CG_p_patch__CG_edges__m_area_edge, (void *)&gpu___CG_p_patch__CG_edges__m_cell_blk, (void *)&gpu___CG_p_patch__CG_edges__m_cell_idx, (void *)&gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, (void *)&gpu___CG_p_patch__CG_edges__m_quad_blk, (void *)&gpu___CG_p_patch__CG_edges__m_quad_idx, (void *)&gpu___CG_p_patch__CG_edges__m_tangent_orientation, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_blk, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_idx, (void *)&gpu___CG_p_prog__m_vn, (void *)&gpu_levelmask, (void *)&gpu_z_w_con_c_full, (void *)&gpu_zeta, (void *)&SA_cell_blk_d_1_edges_p_patch_4, (void *)&SA_cell_idx_d_1_edges_p_patch_4, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, (void *)&__CG_p_int__m_SA_c_lin_e_d_0, (void *)&__CG_p_int__m_SA_c_lin_e_d_1, (void *)&__CG_p_int__m_SA_geofac_grdiv_d_0, (void *)&__CG_p_int__m_SA_geofac_grdiv_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_0, (void *)&__CG_p_int__m_SOA_c_lin_e_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_2, (void *)&__CG_p_int__m_SOA_geofac_grdiv_d_0, (void *)&__CG_p_int__m_SOA_geofac_grdiv_d_1, (void *)&__CG_p_int__m_SOA_geofac_grdiv_d_2, (void *)&__CG_p_metrics__m_SA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, (void *)&__CG_p_patch__m_nblks_e, (void *)&__CG_p_prog__m_SA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_1, (void *)&__CG_p_prog__m_SOA_vn_d_2, (void *)&_for_it_47, (void *)&cfl_w_limit, (void *)&dtime, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nrdmax_jg, (void *)&ntnd, (void *)&scalfac_exdiff };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_65_3_36, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((87 - Max(3, (nrdmax_jg - 2))), 16), 1), dim3(32, 16, 1), single_state_body_map_65_3_36_args, 0, nullptr);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_65_3_36", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((87 - Max(3, (nrdmax_jg - 2))), 16), 1, 32, 16, 1);
}

