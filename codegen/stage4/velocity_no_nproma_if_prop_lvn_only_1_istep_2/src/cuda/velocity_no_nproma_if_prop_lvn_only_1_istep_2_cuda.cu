
#include <cuda_runtime.h>
#include <dace/dace.h>


struct velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t {
    dace::cuda::Context *gpu_context;
};



DACE_EXPORTED int __dace_init_cuda_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2);
DACE_EXPORTED int __dace_exit_cuda_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state);
DACE_EXPORTED bool __dace_gpu_set_stream_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int streamid, gpuStream_t stream);
DACE_EXPORTED void __dace_gpu_set_all_streams_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, gpuStream_t stream);

DACE_DFI void loop_body_1_2_5(const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int _for_it_4_0, int _for_it_5_0) {
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

        {
            double ptr_int_0_in_geofac_rot_0 = gpu___CG_p_int__m_geofac_rot[((((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (1 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1)];
            double ptr_int_1_in_geofac_rot_0 = gpu___CG_p_int__m_geofac_rot[((((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (2 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1)];
            double ptr_int_2_in_geofac_rot_0 = gpu___CG_p_int__m_geofac_rot[((((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (3 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1)];
            double ptr_int_3_in_geofac_rot_0 = gpu___CG_p_int__m_geofac_rot[((((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (4 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1)];
            double ptr_int_4_in_geofac_rot_0 = gpu___CG_p_int__m_geofac_rot[((((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (5 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1)];
            double ptr_int_5_in_geofac_rot_0 = gpu___CG_p_int__m_geofac_rot[((((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * (((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0) + 1)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (6 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0) + 1)];
            double vec_e_0_in_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_94_0) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1))) + tmp_index_92_0)];
            double vec_e_1_in_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_106_0) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1))) + tmp_index_104_0)];
            double vec_e_2_in_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_118_0) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1))) + tmp_index_116_0)];
            double vec_e_3_in_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_130_0) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1))) + tmp_index_128_0)];
            double vec_e_4_in_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_142_0) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1))) + tmp_index_140_0)];
            double vec_e_5_in_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_154_0) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0) + 1))) + tmp_index_152_0)];
            double rot_vec_out_0;

            ///////////////////
            // Tasklet code (T_l296_c296)
            rot_vec_out_0 = ((((((ptr_int_0_in_geofac_rot_0 * vec_e_0_in_0) + (ptr_int_1_in_geofac_rot_0 * vec_e_1_in_0)) + (ptr_int_2_in_geofac_rot_0 * vec_e_2_in_0)) + (ptr_int_3_in_geofac_rot_0 * vec_e_3_in_0)) + (ptr_int_4_in_geofac_rot_0 * vec_e_4_in_0)) + (ptr_int_5_in_geofac_rot_0 * vec_e_5_in_0));
            ///////////////////

            gpu_zeta[((((90 * __CG_global_data__m_nproma) * _for_it_3_0) + (__CG_global_data__m_nproma * _for_it_4_0)) + _for_it_5_0)] = rot_vec_out_0;
        }

    }
}

DACE_DFI void loop_body_12_3_5(const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, const double * __restrict__ gpu_z_kin_hor_e, double * __restrict__ gpu_z_ekinh, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_23, int _for_it_24) {
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

        {
            double p_int_0_in_e_bln_c_s_0 = gpu___CG_p_int__m_e_bln_c_s[((((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1)];
            double p_int_1_in_e_bln_c_s_0 = gpu___CG_p_int__m_e_bln_c_s[((((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1)];
            double p_int_2_in_e_bln_c_s_0 = gpu___CG_p_int__m_e_bln_c_s[((((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * (((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22) + 1)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24) + 1)];
            double z_kin_hor_e_0_in_0 = gpu_z_kin_hor_e[((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * tmp_index_409) + (A_z_kin_hor_e_d_0 * (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1))) + tmp_index_407)];
            double z_kin_hor_e_1_in_0 = gpu_z_kin_hor_e[((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * tmp_index_421) + (A_z_kin_hor_e_d_0 * (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1))) + tmp_index_419)];
            double z_kin_hor_e_2_in_0 = gpu_z_kin_hor_e[((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * tmp_index_433) + (A_z_kin_hor_e_d_0 * (((- OA_z_kin_hor_e_d_1) + _for_it_23) + 1))) + tmp_index_431)];
            double z_ekinh_out_0;

            ///////////////////
            // Tasklet code (T_l515_c515)
            z_ekinh_out_0 = (((p_int_0_in_e_bln_c_s_0 * z_kin_hor_e_0_in_0) + (p_int_1_in_e_bln_c_s_0 * z_kin_hor_e_1_in_0)) + (p_int_2_in_e_bln_c_s_0 * z_kin_hor_e_2_in_0));
            ///////////////////

            gpu_z_ekinh[((((90 * __CG_global_data__m_nproma) * _for_it_22) + (__CG_global_data__m_nproma * _for_it_23)) + _for_it_24)] = z_ekinh_out_0;
        }

    }
}

DACE_DFI void loop_body_12_1_14(const const double&  dtime, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int _for_it_35, int _for_it_37) {
    double tmp_call_8;
    int _if_cond_18;
    double vcfl;


    _if_cond_18 = gpu_cfl_clipping[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)];
    if ((_if_cond_18 == 1)) {

        vcfl = ((dtime * gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)]) / gpu___CG_p_metrics__m_ddqz_z_half[(((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1)]);
        {

            {
                int levmask_out_0;

                ///////////////////
                // Tasklet code (T_l556_c556)
                levmask_out_0 = 1;
                ///////////////////

                gpu_levmask[((__CG_p_patch__m_nblks_c * _for_it_35) + _for_it_22)] = levmask_out_0;
            }
            {
                double tmp_call_8_out;

                ///////////////////
                // Tasklet code (T_l558_c558)
                tmp_call_8_out = abs(vcfl);
                ///////////////////

                tmp_call_8 = tmp_call_8_out;
            }
            {
                double maxvcfl_0_in = gpu_maxvcfl[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)];
                double tmp_call_8_0_in = tmp_call_8;
                double maxvcfl_out;

                ///////////////////
                // Tasklet code (T_l558_c558)
                maxvcfl_out = max(maxvcfl_0_in, tmp_call_8_0_in);
                ///////////////////

                gpu_maxvcfl[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)] = maxvcfl_out;
            }

        }
        if (((vcfl < -0.85) == true)) {
            {

                {
                    double dtime_0_in = dtime;
                    double p_metrics_0_in_ddqz_z_half_0 = gpu___CG_p_metrics__m_ddqz_z_half[(((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1)];
                    double z_w_con_c_out_0;

                    ///////////////////
                    // Tasklet code (T_l560_c560)
                    z_w_con_c_out_0 = ((-0.85 * p_metrics_0_in_ddqz_z_half_0) / dtime_0_in);
                    ///////////////////

                    gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)] = z_w_con_c_out_0;
                }

            }
        } else {
            if (((vcfl > 0.85) == true)) {
                {

                    {
                        double dtime_0_in = dtime;
                        double p_metrics_0_in_ddqz_z_half_0 = gpu___CG_p_metrics__m_ddqz_z_half[(((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35) + 1)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37) + 1)];
                        double z_w_con_c_out_0;

                        ///////////////////
                        // Tasklet code (T_l562_c562)
                        z_w_con_c_out_0 = ((0.85 * p_metrics_0_in_ddqz_z_half_0) / dtime_0_in);
                        ///////////////////

                        gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_35) + _for_it_37)] = z_w_con_c_out_0;
                    }

                }
            }
        }
    }
}

DACE_DFI void reduce_31_3_2(const int * __restrict__ _in, int* __restrict__  _out, int i_endblk_var_147, int i_startblk_var_146) {

    {

        {
            int _i0 = (blockIdx.y * 16 + threadIdx.y);
            if (_i0 < ((i_endblk_var_147 - i_startblk_var_146) + 1)) {
                {
                    int __inp = _in[_i0];
                    int __out;

                    ///////////////////
                    // Tasklet code (identity)
                    __out = __inp;
                    ///////////////////

                    dace::wcr_fixed<dace::ReductionType::Bitwise_Or, int>::reduce_atomic(_out, __out);
                }
            }
        }

    }
}

DACE_DFI void loop_body_0_5_18(const int * __restrict__ gpu_levmask, int * __restrict__ gpu_levelmask, int __CG_p_patch__m_nblks_c, int _for_it_46, int i_endblk_var_147, int i_startblk_var_146) {
    int _red_tmp_tmp_call_13;
    int tmp_call_13;


    tmp_call_13 = 0;
    {

        {
            int _out;

            ///////////////////
            // Tasklet code (seed)
            _out = 0;
            ///////////////////

            _red_tmp_tmp_call_13 = _out;
        }

    }
    {

        reduce_31_3_2(&gpu_levmask[(((__CG_p_patch__m_nblks_c * _for_it_46) + i_startblk_var_146) - 1)], &_red_tmp_tmp_call_13, i_endblk_var_147, i_startblk_var_146);

    }
    tmp_call_13 = _red_tmp_tmp_call_13;
    {

        {
            int levelmask_out_0;

            ///////////////////
            // Tasklet code (T_l600_c600)
            levelmask_out_0 = tmp_call_13;
            ///////////////////

            gpu_levelmask[_for_it_46] = levelmask_out_0;
        }

    }
}

DACE_DFI void loop_body_33_3_16(const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, const const int&  ntnd, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int _for_it_48, int _for_it_49) {
    int tmp_index_679;
    int64_t tmp_index_698;
    int64_t tmp_index_700;
    int64_t tmp_index_710;
    int64_t tmp_index_712;
    int64_t tmp_index_724;
    int64_t tmp_index_726;
    int64_t tmp_index_733;
    int64_t tmp_index_735;
    int64_t tmp_index_745;
    int64_t tmp_index_747;
    int64_t tmp_index_757;
    int64_t tmp_index_759;


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

        {
            double p_diag_0_in_vt_0 = gpu___CG_p_diag__m_vt[(((((__CG_p_diag__m_SA_vt_d_0 * (((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_48) + 1)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * (((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_47) + 1))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_49) + 1)];
            double p_diag_1_in_vn_ie_0 = gpu___CG_p_diag__m_vn_ie[(((((__CG_p_diag__m_SA_vn_ie_d_0 * (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 1)) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47) + 1))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49) + 1)];
            double p_diag_2_in_vn_ie_0 = gpu___CG_p_diag__m_vn_ie[(((((__CG_p_diag__m_SA_vn_ie_d_0 * (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 2)) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * (((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47) + 1))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49) + 1)];
            double p_int_0_in_c_lin_e_0 = gpu___CG_p_int__m_c_lin_e[((((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (1 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49) + 1)];
            double p_int_1_in_c_lin_e_0 = gpu___CG_p_int__m_c_lin_e[((((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (2 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49) + 1)];
            double p_metrics_0_in_coeff_gradekin_0 = gpu___CG_p_metrics__m_coeff_gradekin[((((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1)];
            double p_metrics_1_in_coeff_gradekin_0 = gpu___CG_p_metrics__m_coeff_gradekin[((((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1)];
            double p_metrics_2_in_coeff_gradekin_0 = gpu___CG_p_metrics__m_coeff_gradekin[((((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1)];
            double p_metrics_3_in_coeff_gradekin_0 = gpu___CG_p_metrics__m_coeff_gradekin[((((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * (((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47) + 1)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49) + 1)];
            double p_metrics_4_in_ddqz_z_full_e_0 = gpu___CG_p_metrics__m_ddqz_z_full_e[(((((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_48) + 1)) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_49) + 1)];
            double p_patch_0_in_edges_f_e_0 = gpu___CG_p_patch__CG_edges__m_f_e[((__CG_global_data__m_nproma * _for_it_47) + _for_it_49)];
            double z_ekinh_0_in_0 = gpu_z_ekinh[(((__CG_global_data__m_nproma * _for_it_48) + ((90 * __CG_global_data__m_nproma) * tmp_index_700)) + tmp_index_698)];
            double z_ekinh_1_in_0 = gpu_z_ekinh[(((__CG_global_data__m_nproma * _for_it_48) + ((90 * __CG_global_data__m_nproma) * tmp_index_712)) + tmp_index_710)];
            double z_kin_hor_e_0_in_0 = gpu_z_kin_hor_e[((((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * (((- OA_z_kin_hor_e_d_2) + _for_it_47) + 1)) + (A_z_kin_hor_e_d_0 * (((- OA_z_kin_hor_e_d_1) + _for_it_48) + 1))) - OA_z_kin_hor_e_d_0) + _for_it_49) + 1)];
            double z_w_con_c_full_0_in_0 = gpu_z_w_con_c_full[(((__CG_global_data__m_nproma * _for_it_48) + ((90 * __CG_global_data__m_nproma) * tmp_index_747)) + tmp_index_745)];
            double z_w_con_c_full_1_in_0 = gpu_z_w_con_c_full[(((__CG_global_data__m_nproma * _for_it_48) + ((90 * __CG_global_data__m_nproma) * tmp_index_759)) + tmp_index_757)];
            double zeta_0_in_0 = gpu_zeta[(((__CG_global_data__m_nproma * _for_it_48) + ((90 * __CG_global_data__m_nproma) * tmp_index_726)) + tmp_index_724)];
            double zeta_1_in_0 = gpu_zeta[(((__CG_global_data__m_nproma * _for_it_48) + ((90 * __CG_global_data__m_nproma) * tmp_index_735)) + tmp_index_733)];
            double p_diag_out_ddt_vn_apc_pc_0;

            ///////////////////
            // Tasklet code (T_l611_c611)
            p_diag_out_ddt_vn_apc_pc_0 = ((((((- p_diag_0_in_vt_0) * ((p_patch_0_in_edges_f_e_0 + (0.5 * zeta_0_in_0)) + (0.5 * zeta_1_in_0))) - (p_metrics_2_in_coeff_gradekin_0 * z_ekinh_0_in_0)) + (p_metrics_3_in_coeff_gradekin_0 * z_ekinh_1_in_0)) - (z_kin_hor_e_0_in_0 * (p_metrics_0_in_coeff_gradekin_0 - p_metrics_1_in_coeff_gradekin_0))) - (((p_diag_1_in_vn_ie_0 - p_diag_2_in_vn_ie_0) * ((p_int_0_in_c_lin_e_0 * z_w_con_c_full_0_in_0) + (p_int_1_in_c_lin_e_0 * z_w_con_c_full_1_in_0))) / p_metrics_4_in_ddqz_z_full_e_0));
            ///////////////////

            gpu___CG_p_diag__m_ddt_vn_apc_pc[((((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * tmp_index_679) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_48) + 1))) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1))) - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_49) + 1)] = p_diag_out_ddt_vn_apc_pc_0;
        }

    }
}

DACE_DFI void loop_body_33_3_29(const const double&  cfl_w_limit, const const double&  dtime, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, const const int&  ntnd, const const double&  scalfac_exdiff, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, int _for_it_52, int _for_it_53) {
    double tmp_arg_19;
    double tmp_arg_18;
    double tmp_call_15;
    double tmp_call_17;
    double w_con_e;
    double _if_cond_29;
    double tmp_call_16;
    double difcoef0;
    int _if_cond_28;
    int64_t tmp_index_881;
    int64_t tmp_index_883;
    int64_t tmp_index_893;
    int64_t tmp_index_895;
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
    int64_t tmp_index_976;
    int64_t tmp_index_978;
    int64_t tmp_index_985;
    int64_t tmp_index_987;


    _if_cond_28 = (gpu_levelmask[_for_it_52] || gpu_levelmask[(_for_it_52 + 1)]);
    if ((_if_cond_28 == 1)) {

        tmp_index_881 = (gpu___CG_p_patch__CG_edges__m_cell_idx[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
        tmp_index_883 = (gpu___CG_p_patch__CG_edges__m_cell_blk[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)] - 1);
        tmp_index_893 = (gpu___CG_p_patch__CG_edges__m_cell_idx[(((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
        tmp_index_895 = (gpu___CG_p_patch__CG_edges__m_cell_blk[(((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * _for_it_47)) + _for_it_53)] - 1);
        {

            {
                double p_int_0_in_c_lin_e_0 = gpu___CG_p_int__m_c_lin_e[((((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (1 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53) + 1)];
                double p_int_1_in_c_lin_e_0 = gpu___CG_p_int__m_c_lin_e[((((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * (((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (2 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53) + 1)];
                double z_w_con_c_full_0_in_0 = gpu_z_w_con_c_full[(((__CG_global_data__m_nproma * _for_it_52) + ((90 * __CG_global_data__m_nproma) * tmp_index_883)) + tmp_index_881)];
                double z_w_con_c_full_1_in_0 = gpu_z_w_con_c_full[(((__CG_global_data__m_nproma * _for_it_52) + ((90 * __CG_global_data__m_nproma) * tmp_index_895)) + tmp_index_893)];
                double w_con_e_out;

                ///////////////////
                // Tasklet code (T_l640_c640)
                w_con_e_out = ((p_int_0_in_c_lin_e_0 * z_w_con_c_full_0_in_0) + (p_int_1_in_c_lin_e_0 * z_w_con_c_full_1_in_0));
                ///////////////////

                w_con_e = w_con_e_out;
            }
            {
                double w_con_e_0_in = w_con_e;
                double tmp_call_15_out;

                ///////////////////
                // Tasklet code (T_l0_c0)
                tmp_call_15_out = abs(w_con_e_0_in);
                ///////////////////

                tmp_call_15 = tmp_call_15_out;
            }
            {
                double cfl_w_limit_0_in = cfl_w_limit;
                double p_metrics_0_in_ddqz_z_full_e_0 = gpu___CG_p_metrics__m_ddqz_z_full_e[(((((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52) + 1)) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53) + 1)];
                double tmp_call_15_0_in = tmp_call_15;
                double _if_cond_29_out;

                ///////////////////
                // Tasklet code (T_l0_c0)
                _if_cond_29_out = (tmp_call_15_0_in > (cfl_w_limit_0_in * p_metrics_0_in_ddqz_z_full_e_0));
                ///////////////////

                _if_cond_29 = _if_cond_29_out;
            }

        }
        if ((_if_cond_29 == 1)) {
            {

                {
                    double w_con_e_0_in = w_con_e;
                    double tmp_call_17_out;

                    ///////////////////
                    // Tasklet code (T_l642_c642)
                    tmp_call_17_out = abs(w_con_e_0_in);
                    ///////////////////

                    tmp_call_17 = tmp_call_17_out;
                }

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

                {
                    double cfl_w_limit_0_in = cfl_w_limit;
                    double dtime_0_in = dtime;
                    double tmp_arg_18_out;

                    ///////////////////
                    // Tasklet code (T_l642_c642)
                    tmp_arg_18_out = (((- cfl_w_limit_0_in) * dtime_0_in) + 0.85);
                    ///////////////////

                    tmp_arg_18 = tmp_arg_18_out;
                }
                {
                    double cfl_w_limit_0_in = cfl_w_limit;
                    double dtime_0_in = dtime;
                    double dtime_1_in = dtime;
                    double p_metrics_0_in_ddqz_z_full_e_0 = gpu___CG_p_metrics__m_ddqz_z_full_e[(((((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52) + 1)) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * (((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47) + 1))) - __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53) + 1)];
                    double tmp_call_17_0_in = tmp_call_17;
                    double tmp_arg_19_out;

                    ///////////////////
                    // Tasklet code (T_l642_c642)
                    tmp_arg_19_out = (((- cfl_w_limit_0_in) * dtime_1_in) + ((dtime_0_in * tmp_call_17_0_in) / p_metrics_0_in_ddqz_z_full_e_0));
                    ///////////////////

                    tmp_arg_19 = tmp_arg_19_out;
                }
                {
                    double tmp_arg_18_0_in = tmp_arg_18;
                    double tmp_arg_19_0_in = tmp_arg_19;
                    double tmp_call_16_out;

                    ///////////////////
                    // Tasklet code (T_l642_c642)
                    tmp_call_16_out = min(tmp_arg_18_0_in, tmp_arg_19_0_in);
                    ///////////////////

                    tmp_call_16 = tmp_call_16_out;
                }
                {
                    double scalfac_exdiff_0_in = scalfac_exdiff;
                    double tmp_call_16_0_in = tmp_call_16;
                    double difcoef_out;

                    ///////////////////
                    // Tasklet code (T_l642_c642)
                    difcoef_out = (scalfac_exdiff_0_in * tmp_call_16_0_in);
                    ///////////////////

                    difcoef0 = difcoef_out;
                }
                {
                    double difcoef_0_in = difcoef0;
                    double p_diag_0_in_ddt_vn_apc_pc_0 = gpu___CG_p_diag__m_ddt_vn_apc_pc[((((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * tmp_index_909) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52) + 1))) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1))) - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53) + 1)];
                    double p_int_0_in_geofac_grdiv_0 = gpu___CG_p_int__m_geofac_grdiv[((((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (1 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1)];
                    double p_int_1_in_geofac_grdiv_0 = gpu___CG_p_int__m_geofac_grdiv[((((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (2 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1)];
                    double p_int_2_in_geofac_grdiv_0 = gpu___CG_p_int__m_geofac_grdiv[((((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (3 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1)];
                    double p_int_3_in_geofac_grdiv_0 = gpu___CG_p_int__m_geofac_grdiv[((((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (4 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1)];
                    double p_int_4_in_geofac_grdiv_0 = gpu___CG_p_int__m_geofac_grdiv[((((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * (((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47) + 1)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (5 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53) + 1)];
                    double p_patch_0_in_edges_area_edge_0 = gpu___CG_p_patch__CG_edges__m_area_edge[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)];
                    double p_patch_1_in_edges_tangent_orientation_0 = gpu___CG_p_patch__CG_edges__m_tangent_orientation[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)];
                    double p_patch_2_in_edges_inv_primal_edge_length_0 = gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length[((__CG_global_data__m_nproma * _for_it_47) + _for_it_53)];
                    double p_prog_0_in_vn_0 = gpu___CG_p_prog__m_vn[(((((__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * (((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_47) + 1))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_53) + 1)];
                    double p_prog_1_in_vn_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_929) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1))) + tmp_index_927)];
                    double p_prog_2_in_vn_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_941) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1))) + tmp_index_939)];
                    double p_prog_3_in_vn_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_953) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1))) + tmp_index_951)];
                    double p_prog_4_in_vn_0 = gpu___CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_965) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52) + 1))) + tmp_index_963)];
                    double zeta_0_in_0 = gpu_zeta[(((__CG_global_data__m_nproma * _for_it_52) + ((90 * __CG_global_data__m_nproma) * tmp_index_978)) + tmp_index_976)];
                    double zeta_1_in_0 = gpu_zeta[(((__CG_global_data__m_nproma * _for_it_52) + ((90 * __CG_global_data__m_nproma) * tmp_index_987)) + tmp_index_985)];
                    double p_diag_out_ddt_vn_apc_pc_0;

                    ///////////////////
                    // Tasklet code (T_l643_c643)
                    p_diag_out_ddt_vn_apc_pc_0 = (((difcoef_0_in * p_patch_0_in_edges_area_edge_0) * ((((((p_int_0_in_geofac_grdiv_0 * p_prog_0_in_vn_0) + (p_int_1_in_geofac_grdiv_0 * p_prog_1_in_vn_0)) + (p_int_2_in_geofac_grdiv_0 * p_prog_2_in_vn_0)) + (p_int_3_in_geofac_grdiv_0 * p_prog_3_in_vn_0)) + (p_int_4_in_geofac_grdiv_0 * p_prog_4_in_vn_0)) + ((p_patch_1_in_edges_tangent_orientation_0 * p_patch_2_in_edges_inv_primal_edge_length_0) * (zeta_0_in_0 - zeta_1_in_0)))) + p_diag_0_in_ddt_vn_apc_pc_0);
                    ///////////////////

                    gpu___CG_p_diag__m_ddt_vn_apc_pc[((((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * tmp_index_905) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52) + 1))) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * (((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47) + 1))) - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53) + 1)] = p_diag_out_ddt_vn_apc_pc_0;
                }

            }
        }
    }
}



int __dace_init_cuda_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2) {
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

    // Initialize cuda before we run the application
    float *dev_X;
    DACE_GPU_CHECK(cudaMalloc((void **) &dev_X, 1));
    DACE_GPU_CHECK(cudaFree(dev_X));

    

    __state->gpu_context = new dace::cuda::Context(1, 3);

    // Create cuda streams and events
    for(int i = 0; i < 1; ++i) {
        DACE_GPU_CHECK(cudaStreamCreateWithFlags(&__state->gpu_context->internal_streams[i], cudaStreamNonBlocking));
        __state->gpu_context->streams[i] = __state->gpu_context->internal_streams[i]; // Allow for externals to modify streams
    }
    for(int i = 0; i < 3; ++i) {
        DACE_GPU_CHECK(cudaEventCreateWithFlags(&__state->gpu_context->events[i], cudaEventDisableTiming));
    }

    

    return 0;
}

int __dace_exit_cuda_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state) {
    

    // Synchronize and check for CUDA errors
    int __err = static_cast<int>(__state->gpu_context->lasterror);
    

    // Destroy cuda streams and events
    for(int i = 0; i < 1; ++i) {
        DACE_GPU_CHECK(cudaStreamDestroy(__state->gpu_context->internal_streams[i]));
    }
    for(int i = 0; i < 3; ++i) {
        DACE_GPU_CHECK(cudaEventDestroy(__state->gpu_context->events[i]));
    }

    delete __state->gpu_context;
    return __err;
}

bool __dace_gpu_set_stream_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int streamid, gpuStream_t stream)
{
    if (streamid < 0 || streamid >= 1)
        return false;

    __state->gpu_context->streams[streamid] = stream;

    return true;
}

void __dace_gpu_set_all_streams_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, gpuStream_t stream)
{
    for (int i = 0; i < 1; ++i)
        __state->gpu_context->streams[i] = stream;
}

__global__ void  __launch_bounds__(512) single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endidx_var_121_0, int64_t i_startidx_var_120_0) {
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
                                loop_body_1_2_5(&gpu___CG_p_int__m_geofac_rot[0], &gpu___CG_p_patch__CG_verts__m_edge_blk[0], &gpu___CG_p_patch__CG_verts__m_edge_idx[0], &gpu___CG_p_prog__m_vn[0], &gpu_zeta[0], __CG_global_data__m_nproma, __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_0, __CG_p_int__m_SOA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_2, __CG_p_patch__m_nblks_c, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_3_0, _for_it_4_0, _for_it_5_0);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endidx_var_121_0, int64_t i_startidx_var_120_0);
void __dace_runkernel_single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_geofac_rot, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_verts__m_edge_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, double * __restrict__ gpu_zeta, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_3_0, int i_endidx_var_121_0, int64_t i_startidx_var_120_0)
{

    if (((int_ceil(((i_endidx_var_121_0 - i_startidx_var_120_0) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_int__m_geofac_rot, (void *)&gpu___CG_p_patch__CG_verts__m_edge_blk, (void *)&gpu___CG_p_patch__CG_verts__m_edge_idx, (void *)&gpu___CG_p_prog__m_vn, (void *)&gpu_zeta, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_int__m_SA_geofac_rot_d_0, (void *)&__CG_p_int__m_SA_geofac_rot_d_1, (void *)&__CG_p_int__m_SOA_geofac_rot_d_0, (void *)&__CG_p_int__m_SOA_geofac_rot_d_1, (void *)&__CG_p_int__m_SOA_geofac_rot_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&__CG_p_prog__m_SA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_1, (void *)&__CG_p_prog__m_SOA_vn_d_2, (void *)&_for_it_3_0, (void *)&i_endidx_var_121_0, (void *)&i_startidx_var_120_0 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_121_0 - i_startidx_var_120_0) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_1_2_8_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_121_0 - i_startidx_var_120_0) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148) {
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
                                loop_body_12_3_5(&gpu___CG_p_int__m_e_bln_c_s[0], &gpu___CG_p_patch__CG_cells__m_edge_blk[0], &gpu___CG_p_patch__CG_cells__m_edge_idx[0], &gpu_z_kin_hor_e[0], &gpu_z_ekinh[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, __CG_global_data__m_nproma, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_23, _for_it_24);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_int__m_e_bln_c_s, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_blk, const int * __restrict__ gpu___CG_p_patch__CG_cells__m_edge_idx, double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int __CG_global_data__m_nproma, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_int__m_e_bln_c_s, (void *)&gpu___CG_p_patch__CG_cells__m_edge_blk, (void *)&gpu___CG_p_patch__CG_cells__m_edge_idx, (void *)&gpu_z_ekinh, (void *)&gpu_z_kin_hor_e, (void *)&A_z_kin_hor_e_d_0, (void *)&A_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_0, (void *)&OA_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_2, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_int__m_SA_e_bln_c_s_d_0, (void *)&__CG_p_int__m_SA_e_bln_c_s_d_1, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_0, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_1, (void *)&__CG_p_int__m_SOA_e_bln_c_s_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_12_3_13_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148) {
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
                                {
                                    double p_prog_0_in_w_0 = gpu___CG_p_prog__m_w[(((((__CG_p_prog__m_SA_w_d_0 * (((- __CG_p_prog__m_SOA_w_d_1) + _for_it_29) + 1)) + ((91 * __CG_p_prog__m_SA_w_d_0) * (((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22) + 1))) - __CG_p_prog__m_SOA_w_d_0) + _for_it_30) + 1)];
                                    double z_w_con_c_out_0;

                                    ///////////////////
                                    // Tasklet code (T_l532_c532)
                                    z_w_con_c_out_0 = p_prog_0_in_w_0;
                                    ///////////////////

                                    gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_29) + _for_it_30)] = z_w_con_c_out_0;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_prog__m_w, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_prog__m_w, (void *)&gpu_z_w_con_c, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_prog__m_SA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_0, (void *)&__CG_p_prog__m_SOA_w_d_1, (void *)&__CG_p_prog__m_SOA_w_d_2, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_12_3_15_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2(double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int i_endidx_var_149, int64_t i_startidx_var_148) {
    {
        int b__for_it_31 = (((512 * blockIdx.x) + i_startidx_var_148) - 1);
        {
            {
                int _for_it_31 = (threadIdx.x + b__for_it_31);
                if (_for_it_31 >= b__for_it_31 && _for_it_31 < (Min((b__for_it_31 + 511), (i_endidx_var_149 - 1)) + 1)) {
                    {
                        double z_w_con_c_out_0;

                        ///////////////////
                        // Tasklet code (T_l536_c536)
                        z_w_con_c_out_0 = 0.0;
                        ///////////////////

                        gpu_z_w_con_c[((90 * __CG_global_data__m_nproma) + _for_it_31)] = z_w_con_c_out_0;
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 512)) <= 0)) {

        return;
    }

    void  *single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu_z_w_con_c, (void *)&__CG_global_data__m_nproma, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 512), 1, 1), dim3(512, 1, 1), single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_1_map_12_4_14_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 512), 1, 1, 512, 1, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ gpu___CG_p_diag__m_w_concorr_c, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148, int nflatlev_jg) {
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
                                {
                                    double p_diag_0_in_w_concorr_c_0 = gpu___CG_p_diag__m_w_concorr_c[(((((__CG_p_diag__m_SA_w_concorr_c_d_0 * (((- __CG_p_diag__m_SOA_w_concorr_c_d_1) + _for_it_32) + 1)) + ((91 * __CG_p_diag__m_SA_w_concorr_c_d_0) * (((- __CG_p_diag__m_SOA_w_concorr_c_d_2) + _for_it_22) + 1))) - __CG_p_diag__m_SOA_w_concorr_c_d_0) + _for_it_33) + 1)];
                                    double z_w_con_c_0_in_0 = gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_32) + _for_it_33)];
                                    double z_w_con_c_out_0;

                                    ///////////////////
                                    // Tasklet code (T_l540_c540)
                                    z_w_con_c_out_0 = ((- p_diag_0_in_w_concorr_c_0) + z_w_con_c_0_in_0);
                                    ///////////////////

                                    gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_32) + _for_it_33)] = z_w_con_c_out_0;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_diag__m_w_concorr_c, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148, int nflatlev_jg);
void __dace_runkernel_single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_diag__m_w_concorr_c, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148, int nflatlev_jg)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((90 - nflatlev_jg), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_diag__m_w_concorr_c, (void *)&gpu_z_w_con_c, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_w_concorr_c_d_0, (void *)&__CG_p_diag__m_SOA_w_concorr_c_d_0, (void *)&__CG_p_diag__m_SOA_w_concorr_c_d_1, (void *)&__CG_p_diag__m_SOA_w_concorr_c_d_2, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nflatlev_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((90 - nflatlev_jg), 16), 1), dim3(32, 16, 1), single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_2_map_12_4_17_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((90 - nflatlev_jg), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2(int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int _for_it_22, int nrdmax_jg) {
    {
        int b__for_it_34 = (((512 * blockIdx.x) + Max(3, (nrdmax_jg - 2))) - 1);
        {
            {
                int _for_it_34 = (threadIdx.x + b__for_it_34);
                if (_for_it_34 >= b__for_it_34 && _for_it_34 < (Min(86, (b__for_it_34 + 511)) + 1)) {
                    {
                        int levmask_out_0;

                        ///////////////////
                        // Tasklet code (T_l544_c544)
                        levmask_out_0 = 0;
                        ///////////////////

                        gpu_levmask[((__CG_p_patch__m_nblks_c * _for_it_34) + _for_it_22)] = levmask_out_0;
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int _for_it_22, int nrdmax_jg);
void __dace_runkernel_single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int _for_it_22, int nrdmax_jg)
{

    if (((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512)) <= 0)) {

        return;
    }

    void  *single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu_levmask, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512), 1, 1), dim3(512, 1, 1), single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_3_map_12_4_16_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil((88 - Max(3, (nrdmax_jg - 2))), 512), 1, 1, 512, 1, 1);
}
__global__ void  __launch_bounds__(512) init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2(double * __restrict__ gpu_maxvcfl, int __CG_global_data__m_nproma) {
    {
        {
            int b__i = (32 * blockIdx.x);
            int b__j = (16 * blockIdx.y);
            {
                {
                    {
                        int _i = (threadIdx.x + b__i);
                        int _j = (threadIdx.y + b__j);
                        if (_i >= b__i && _i < (Min((__CG_global_data__m_nproma - 1), (b__i + 31)) + 1)) {
                            if (_j >= b__j && _j < (Min(90, (b__j + 15)) + 1)) {
                                {
                                    double _out;

                                    ///////////////////
                                    // Tasklet code (zero)
                                    _out = 0;
                                    ///////////////////

                                    gpu_maxvcfl[((__CG_global_data__m_nproma * _j) + _i)] = _out;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu_maxvcfl, int __CG_global_data__m_nproma);
void __dace_runkernel_init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu_maxvcfl, int __CG_global_data__m_nproma)
{

    if (((int_ceil(__CG_global_data__m_nproma, 32)) <= 0)) {

        return;
    }

    void  *init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu_maxvcfl, (void *)&__CG_global_data__m_nproma };
    gpuError_t __err = cudaLaunchKernel((void*)init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(__CG_global_data__m_nproma, 32), 6, 1), dim3(32, 16, 1), init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "init_maxvcfl_12_1_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(__CG_global_data__m_nproma, 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg) {
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
                                loop_body_12_1_14(dtime, &gpu___CG_p_metrics__m_ddqz_z_half[0], &gpu_cfl_clipping[0], &gpu_levmask[0], &gpu_maxvcfl[0], &gpu_z_w_con_c[0], __CG_global_data__m_nproma, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_patch__m_nblks_c, _for_it_22, _for_it_35, _for_it_37);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg);
void __dace_runkernel_single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_half, const int * __restrict__ gpu_cfl_clipping, int * __restrict__ gpu_levmask, double * __restrict__ gpu_maxvcfl, double * __restrict__ gpu_z_w_con_c, int __CG_global_data__m_nproma, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_patch__m_nblks_c, int _for_it_22, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_metrics__m_ddqz_z_half, (void *)&gpu_cfl_clipping, (void *)&gpu_levmask, (void *)&gpu_maxvcfl, (void *)&gpu_z_w_con_c, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_metrics__m_SA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_half_d_2, (void *)&__CG_p_patch__m_nblks_c, (void *)&_for_it_22, (void *)&dtime, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1), dim3(32, 16, 1), single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_4_map_12_1_24_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((88 - Max(3, (nrdmax_jg - 2))), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ _in, double * __restrict__ _out, int __CG_global_data__m_nproma) {
    {
        {
            int b__i1 = (32 * blockIdx.x);
            int b__i0 = (16 * blockIdx.y);
            {
                {
                    {
                        int _i1 = (threadIdx.x + b__i1);
                        int _i0 = (threadIdx.y + b__i0);
                        if (_i1 >= b__i1 && _i1 < (Min((__CG_global_data__m_nproma - 1), (b__i1 + 31)) + 1)) {
                            if (_i0 >= b__i0 && _i0 < (Min(90, (b__i0 + 15)) + 1)) {
                                {
                                    double __inp = _in[((__CG_global_data__m_nproma * _i0) + _i1)];
                                    double __out;

                                    ///////////////////
                                    // Tasklet code (identity)
                                    __out = __inp;
                                    ///////////////////

                                    dace::wcr_fixed<dace::ReductionType::Max, double>::reduce_atomic(_out, __out);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ _in, double * __restrict__ _out, int __CG_global_data__m_nproma);
void __dace_runkernel_reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ _in, double * __restrict__ _out, int __CG_global_data__m_nproma)
{

    if (((int_ceil(__CG_global_data__m_nproma, 32)) <= 0)) {

        return;
    }

    void  *reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&_in, (void *)&_out, (void *)&__CG_global_data__m_nproma };
    gpuError_t __err = cudaLaunchKernel((void*)reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(__CG_global_data__m_nproma, 32), 6, 1), dim3(32, 16, 1), reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "reduce_values_21_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(__CG_global_data__m_nproma, 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ gpu_z_w_con_c, double * __restrict__ gpu_z_w_con_c_full, int __CG_global_data__m_nproma, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148) {
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
                                {
                                    double z_w_con_c_0_in_0 = gpu_z_w_con_c[((__CG_global_data__m_nproma * _for_it_38) + _for_it_39)];
                                    double z_w_con_c_1_in_0 = gpu_z_w_con_c[((__CG_global_data__m_nproma * (_for_it_38 + 1)) + _for_it_39)];
                                    double z_w_con_c_full_out_0;

                                    ///////////////////
                                    // Tasklet code (T_l569_c569)
                                    z_w_con_c_full_out_0 = ((0.5 * z_w_con_c_0_in_0) + (0.5 * z_w_con_c_1_in_0));
                                    ///////////////////

                                    gpu_z_w_con_c_full[((((90 * __CG_global_data__m_nproma) * _for_it_22) + (__CG_global_data__m_nproma * _for_it_38)) + _for_it_39)] = z_w_con_c_full_out_0;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu_z_w_con_c, double * __restrict__ gpu_z_w_con_c_full, int __CG_global_data__m_nproma, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148);
void __dace_runkernel_single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ gpu_z_w_con_c, double * __restrict__ gpu_z_w_con_c_full, int __CG_global_data__m_nproma, int _for_it_22, int i_endidx_var_149, int64_t i_startidx_var_148)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu_z_w_con_c, (void *)&gpu_z_w_con_c_full, (void *)&__CG_global_data__m_nproma, (void *)&_for_it_22, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148 };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_5_map_12_1_22_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2(int * __restrict__ gpu_levelmask, const int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg) {
    {
        int _for_it_46 = (((blockIdx.x * 32 + threadIdx.x) + Max(3, (nrdmax_jg - 2))) - 1);
        if (_for_it_46 >= (Max(3, (nrdmax_jg - 2)) - 1) && _for_it_46 < 87) {
            loop_body_0_5_18(&gpu_levmask[0], &gpu_levelmask[0], __CG_p_patch__m_nblks_c, _for_it_46, i_endblk_var_147, i_startblk_var_146);
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int * __restrict__ gpu_levelmask, const int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg);
void __dace_runkernel_single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, int * __restrict__ gpu_levelmask, const int * __restrict__ gpu_levmask, int __CG_p_patch__m_nblks_c, int i_endblk_var_147, int i_startblk_var_146, int nrdmax_jg)
{

    if (((int_ceil(int_ceil((88 - Max(3, (nrdmax_jg - 2))), 1), 32)) <= 0) || ((int_ceil(((i_endblk_var_147 - i_startblk_var_146) + 1), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu_levelmask, (void *)&gpu_levmask, (void *)&__CG_p_patch__m_nblks_c, (void *)&i_endblk_var_147, (void *)&i_startblk_var_146, (void *)&nrdmax_jg };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(int_ceil((88 - Max(3, (nrdmax_jg - 2))), 1), 32), int_ceil(((i_endblk_var_147 - i_startblk_var_146) + 1), 16), 1), dim3(32, 16, 1), single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[1]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_0_5_20_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(int_ceil((88 - Max(3, (nrdmax_jg - 2))), 1), 32), int_ceil(((i_endblk_var_147 - i_startblk_var_146) + 1), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2(double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int i_endidx_var_149, int64_t i_startidx_var_148, const int ntnd) {
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
                                loop_body_33_3_16(&gpu___CG_p_diag__m_vn_ie[0], &gpu___CG_p_diag__m_vt[0], &gpu___CG_p_int__m_c_lin_e[0], &gpu___CG_p_metrics__m_coeff_gradekin[0], &gpu___CG_p_metrics__m_ddqz_z_full_e[0], &gpu___CG_p_patch__CG_edges__m_cell_blk[0], &gpu___CG_p_patch__CG_edges__m_cell_idx[0], &gpu___CG_p_patch__CG_edges__m_f_e[0], &gpu___CG_p_patch__CG_edges__m_vertex_blk[0], &gpu___CG_p_patch__CG_edges__m_vertex_idx[0], &gpu_z_ekinh[0], &gpu_z_kin_hor_e[0], &gpu_z_w_con_c_full[0], &gpu_zeta[0], ntnd, &gpu___CG_p_diag__m_ddt_vn_apc_pc[0], A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_1, __CG_p_metrics__m_SOA_coeff_gradekin_d_2, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, _for_it_47, _for_it_48, _for_it_49);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int i_endidx_var_149, int64_t i_startidx_var_148, const int ntnd);
void __dace_runkernel_single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_diag__m_vn_ie, const double * __restrict__ gpu___CG_p_diag__m_vt, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_metrics__m_coeff_gradekin, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_f_e, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu_z_ekinh, const double * __restrict__ gpu_z_kin_hor_e, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int _for_it_47, int i_endidx_var_149, int64_t i_startidx_var_148, const int ntnd)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0)) {

        return;
    }

    void  *single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_diag__m_ddt_vn_apc_pc, (void *)&gpu___CG_p_diag__m_vn_ie, (void *)&gpu___CG_p_diag__m_vt, (void *)&gpu___CG_p_int__m_c_lin_e, (void *)&gpu___CG_p_metrics__m_coeff_gradekin, (void *)&gpu___CG_p_metrics__m_ddqz_z_full_e, (void *)&gpu___CG_p_patch__CG_edges__m_cell_blk, (void *)&gpu___CG_p_patch__CG_edges__m_cell_idx, (void *)&gpu___CG_p_patch__CG_edges__m_f_e, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_blk, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_idx, (void *)&gpu_z_ekinh, (void *)&gpu_z_kin_hor_e, (void *)&gpu_z_w_con_c_full, (void *)&gpu_zeta, (void *)&A_z_kin_hor_e_d_0, (void *)&A_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_0, (void *)&OA_z_kin_hor_e_d_1, (void *)&OA_z_kin_hor_e_d_2, (void *)&SA_cell_blk_d_1_edges_p_patch_4, (void *)&SA_cell_idx_d_1_edges_p_patch_4, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SA_vn_ie_d_0, (void *)&__CG_p_diag__m_SA_vt_d_0, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, (void *)&__CG_p_diag__m_SOA_vn_ie_d_0, (void *)&__CG_p_diag__m_SOA_vn_ie_d_1, (void *)&__CG_p_diag__m_SOA_vn_ie_d_2, (void *)&__CG_p_diag__m_SOA_vt_d_0, (void *)&__CG_p_diag__m_SOA_vt_d_1, (void *)&__CG_p_diag__m_SOA_vt_d_2, (void *)&__CG_p_int__m_SA_c_lin_e_d_0, (void *)&__CG_p_int__m_SA_c_lin_e_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_0, (void *)&__CG_p_int__m_SOA_c_lin_e_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_2, (void *)&__CG_p_metrics__m_SA_coeff_gradekin_d_0, (void *)&__CG_p_metrics__m_SA_coeff_gradekin_d_1, (void *)&__CG_p_metrics__m_SA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_coeff_gradekin_d_0, (void *)&__CG_p_metrics__m_SOA_coeff_gradekin_d_1, (void *)&__CG_p_metrics__m_SOA_coeff_gradekin_d_2, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, (void *)&__CG_p_patch__m_nblks_e, (void *)&_for_it_47, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&ntnd };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1), dim3(32, 16, 1), single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_0_map_33_3_34_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), 6, 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2(double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, const double cfl_w_limit, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg, const int ntnd, const double scalfac_exdiff) {
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
                                loop_body_33_3_29(cfl_w_limit, dtime, &gpu___CG_p_int__m_c_lin_e[0], &gpu___CG_p_int__m_geofac_grdiv[0], &gpu___CG_p_metrics__m_ddqz_z_full_e[0], &gpu___CG_p_patch__CG_edges__m_area_edge[0], &gpu___CG_p_patch__CG_edges__m_cell_blk[0], &gpu___CG_p_patch__CG_edges__m_cell_idx[0], &gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length[0], &gpu___CG_p_patch__CG_edges__m_quad_blk[0], &gpu___CG_p_patch__CG_edges__m_quad_idx[0], &gpu___CG_p_patch__CG_edges__m_tangent_orientation[0], &gpu___CG_p_patch__CG_edges__m_vertex_blk[0], &gpu___CG_p_patch__CG_edges__m_vertex_idx[0], &gpu___CG_p_prog__m_vn[0], &gpu_levelmask[0], &gpu_z_w_con_c_full[0], &gpu_zeta[0], ntnd, scalfac_exdiff, &gpu___CG_p_diag__m_ddt_vn_apc_pc[0], SA_cell_blk_d_1_edges_p_patch_4, SA_cell_idx_d_1_edges_p_patch_4, __CG_global_data__m_nproma, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_int__m_SOA_geofac_grdiv_d_0, __CG_p_int__m_SOA_geofac_grdiv_d_1, __CG_p_int__m_SOA_geofac_grdiv_d_2, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_patch__m_nblks_e, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, _for_it_47, _for_it_52, _for_it_53);
                            }
                        }
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, const double cfl_w_limit, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg, const int ntnd, const double scalfac_exdiff);
void __dace_runkernel_single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, double * __restrict__ gpu___CG_p_diag__m_ddt_vn_apc_pc, const double * __restrict__ gpu___CG_p_int__m_c_lin_e, const double * __restrict__ gpu___CG_p_int__m_geofac_grdiv, const double * __restrict__ gpu___CG_p_metrics__m_ddqz_z_full_e, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_area_edge, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_cell_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_quad_idx, const double * __restrict__ gpu___CG_p_patch__CG_edges__m_tangent_orientation, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_blk, const int * __restrict__ gpu___CG_p_patch__CG_edges__m_vertex_idx, const double * __restrict__ gpu___CG_p_prog__m_vn, const int * __restrict__ gpu_levelmask, const double * __restrict__ gpu_z_w_con_c_full, const double * __restrict__ gpu_zeta, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_idx_d_1_edges_p_patch_4, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_patch__m_nblks_e, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int _for_it_47, const double cfl_w_limit, const double dtime, int i_endidx_var_149, int64_t i_startidx_var_148, int nrdmax_jg, const int ntnd, const double scalfac_exdiff)
{

    if (((int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32)) <= 0) || ((int_ceil((87 - Max(3, (nrdmax_jg - 2))), 16)) <= 0)) {

        return;
    }

    void  *single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&gpu___CG_p_diag__m_ddt_vn_apc_pc, (void *)&gpu___CG_p_int__m_c_lin_e, (void *)&gpu___CG_p_int__m_geofac_grdiv, (void *)&gpu___CG_p_metrics__m_ddqz_z_full_e, (void *)&gpu___CG_p_patch__CG_edges__m_area_edge, (void *)&gpu___CG_p_patch__CG_edges__m_cell_blk, (void *)&gpu___CG_p_patch__CG_edges__m_cell_idx, (void *)&gpu___CG_p_patch__CG_edges__m_inv_primal_edge_length, (void *)&gpu___CG_p_patch__CG_edges__m_quad_blk, (void *)&gpu___CG_p_patch__CG_edges__m_quad_idx, (void *)&gpu___CG_p_patch__CG_edges__m_tangent_orientation, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_blk, (void *)&gpu___CG_p_patch__CG_edges__m_vertex_idx, (void *)&gpu___CG_p_prog__m_vn, (void *)&gpu_levelmask, (void *)&gpu_z_w_con_c_full, (void *)&gpu_zeta, (void *)&SA_cell_blk_d_1_edges_p_patch_4, (void *)&SA_cell_idx_d_1_edges_p_patch_4, (void *)&__CG_global_data__m_nproma, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, (void *)&__CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, (void *)&__CG_p_int__m_SA_c_lin_e_d_0, (void *)&__CG_p_int__m_SA_c_lin_e_d_1, (void *)&__CG_p_int__m_SA_geofac_grdiv_d_0, (void *)&__CG_p_int__m_SA_geofac_grdiv_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_0, (void *)&__CG_p_int__m_SOA_c_lin_e_d_1, (void *)&__CG_p_int__m_SOA_c_lin_e_d_2, (void *)&__CG_p_int__m_SOA_geofac_grdiv_d_0, (void *)&__CG_p_int__m_SOA_geofac_grdiv_d_1, (void *)&__CG_p_int__m_SOA_geofac_grdiv_d_2, (void *)&__CG_p_metrics__m_SA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, (void *)&__CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, (void *)&__CG_p_patch__m_nblks_e, (void *)&__CG_p_prog__m_SA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_0, (void *)&__CG_p_prog__m_SOA_vn_d_1, (void *)&__CG_p_prog__m_SOA_vn_d_2, (void *)&_for_it_47, (void *)&cfl_w_limit, (void *)&dtime, (void *)&i_endidx_var_149, (void *)&i_startidx_var_148, (void *)&nrdmax_jg, (void *)&ntnd, (void *)&scalfac_exdiff };
    gpuError_t __err = cudaLaunchKernel((void*)single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((87 - Max(3, (nrdmax_jg - 2))), 16), 1), dim3(32, 16, 1), single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "single_state_body_map_33_3_36_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endidx_var_149 - i_startidx_var_148) + 1), 32), int_ceil((87 - Max(3, (nrdmax_jg - 2))), 16), 1, 32, 16, 1);
}
__global__ void  __launch_bounds__(512) reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2(const double * __restrict__ _in, double * __restrict__ _out, int i_endblk_var_147, int i_startblk_var_146) {
    {
        int b__i0 = (512 * blockIdx.x);
        {
            {
                int _i0 = (threadIdx.x + b__i0);
                if (_i0 >= b__i0 && _i0 < (Min((b__i0 + 511), (i_endblk_var_147 - i_startblk_var_146)) + 1)) {
                    {
                        double __inp = _in[_i0];
                        double __out;

                        ///////////////////
                        // Tasklet code (identity)
                        __out = __inp;
                        ///////////////////

                        dace::wcr_fixed<dace::ReductionType::Max, double>::reduce_atomic(_out, __out);
                    }
                }
            }
        }
    }
}


DACE_EXPORTED void __dace_runkernel_reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ _in, double * __restrict__ _out, int i_endblk_var_147, int i_startblk_var_146);
void __dace_runkernel_reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2(velocity_no_nproma_if_prop_lvn_only_1_istep_2_state_t *__state, const double * __restrict__ _in, double * __restrict__ _out, int i_endblk_var_147, int i_startblk_var_146)
{

    if (((int_ceil(((i_endblk_var_147 - i_startblk_var_146) + 1), 512)) <= 0)) {

        return;
    }

    void  *reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args[] = { (void *)&_in, (void *)&_out, (void *)&i_endblk_var_147, (void *)&i_startblk_var_146 };
    gpuError_t __err = cudaLaunchKernel((void*)reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2, dim3(int_ceil(((i_endblk_var_147 - i_startblk_var_146) + 1), 512), 1, 1), dim3(512, 1, 1), reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2_args, 0, __state->gpu_context->streams[0]);
    DACE_KERNEL_LAUNCH_CHECK(__err, "reduce_values_11_0_5_velocity_no_nproma_if_prop_lvn_only_1_istep_2", int_ceil(((i_endblk_var_147 - i_startblk_var_146) + 1), 512), 1, 1, 512, 1, 1);
}

