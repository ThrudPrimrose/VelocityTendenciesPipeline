/* DaCe AUTO-GENERATED FILE. DO NOT MODIFY */
#include <dace/dace.h>
#include "../../include/hash.h"

struct velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t {

};

void __program_velocity_no_nproma_if_prop_lvn_only_1_istep_1_internal(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t*__state, int * __restrict__ __CG_global_data__m_nflatlev, int * __restrict__ __CG_global_data__m_nrdmax, double * __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, double * __restrict__ __CG_p_diag__m_ddt_w_adv_pc, double * __restrict__ __CG_p_diag__m_max_vcfl_dyn, double * __restrict__ __CG_p_diag__m_vn_ie, double * __restrict__ __CG_p_diag__m_vt, double * __restrict__ __CG_p_diag__m_w_concorr_c, double * __restrict__ __CG_p_int__m_c_lin_e, double * __restrict__ __CG_p_int__m_cells_aw_verts, double * __restrict__ __CG_p_int__m_e_bln_c_s, double * __restrict__ __CG_p_int__m_geofac_grdiv, double * __restrict__ __CG_p_int__m_geofac_n2s, double * __restrict__ __CG_p_int__m_geofac_rot, double * __restrict__ __CG_p_int__m_rbf_vec_coeff_e, double * __restrict__ __CG_p_metrics__m_coeff1_dwdz, double * __restrict__ __CG_p_metrics__m_coeff2_dwdz, double * __restrict__ __CG_p_metrics__m_coeff_gradekin, double * __restrict__ __CG_p_metrics__m_ddqz_z_full_e, double * __restrict__ __CG_p_metrics__m_ddqz_z_half, double * __restrict__ __CG_p_metrics__m_ddxn_z_full, double * __restrict__ __CG_p_metrics__m_ddxt_z_full, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_mc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_mc, double * __restrict__ __CG_p_metrics__m_wgtfac_c, double * __restrict__ __CG_p_metrics__m_wgtfac_e, double * __restrict__ __CG_p_metrics__m_wgtfacq_e, int * __restrict__ __CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, double * __restrict__ __CG_p_patch__CG_cells__m_area, int * __restrict__ __CG_p_patch__CG_cells__m_edge_blk, int * __restrict__ __CG_p_patch__CG_cells__m_edge_idx, int * __restrict__ __CG_p_patch__CG_cells__m_end_block, int * __restrict__ __CG_p_patch__CG_cells__m_end_index, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_blk, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_idx, int * __restrict__ __CG_p_patch__CG_cells__m_start_block, int * __restrict__ __CG_p_patch__CG_cells__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_area_edge, int * __restrict__ __CG_p_patch__CG_edges__m_cell_blk, int * __restrict__ __CG_p_patch__CG_edges__m_cell_idx, int * __restrict__ __CG_p_patch__CG_edges__m_end_block, int * __restrict__ __CG_p_patch__CG_edges__m_end_index, double * __restrict__ __CG_p_patch__CG_edges__m_f_e, double * __restrict__ __CG_p_patch__CG_edges__m_fn_e, double * __restrict__ __CG_p_patch__CG_edges__m_ft_e, double * __restrict__ __CG_p_patch__CG_edges__m_inv_dual_edge_length, double * __restrict__ __CG_p_patch__CG_edges__m_inv_primal_edge_length, int * __restrict__ __CG_p_patch__CG_edges__m_quad_blk, int * __restrict__ __CG_p_patch__CG_edges__m_quad_idx, int * __restrict__ __CG_p_patch__CG_edges__m_start_block, int * __restrict__ __CG_p_patch__CG_edges__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_tangent_orientation, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, int * __restrict__ __CG_p_patch__CG_verts__m_cell_blk, int * __restrict__ __CG_p_patch__CG_verts__m_cell_idx, int * __restrict__ __CG_p_patch__CG_verts__m_edge_blk, int * __restrict__ __CG_p_patch__CG_verts__m_edge_idx, int * __restrict__ __CG_p_patch__CG_verts__m_end_block, int * __restrict__ __CG_p_patch__CG_verts__m_end_index, int * __restrict__ __CG_p_patch__CG_verts__m_start_block, int * __restrict__ __CG_p_patch__CG_verts__m_start_index, double * __restrict__ __CG_p_prog__m_vn, double * __restrict__ __CG_p_prog__m_w, double * __restrict__ z_kin_hor_e, double * __restrict__ z_vt_ie, double * __restrict__ z_w_concorr_me, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_i_am_accel_node, int __CG_global_data__m_lextra_diffu, int __CG_global_data__m_nproma, int __CG_global_data__m_timer_intp, int __CG_global_data__m_timer_solve_nh_veltend, int __CG_global_data__m_timers_level, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, double dt_linintp_ubc, double dtime, int istep, int ldeepatmo, int lvn_only, int ntnd)
{
    double *z_w_concorr_mc;
    z_w_concorr_mc = new double DACE_ALIGN(64)[(90 * __CG_global_data__m_nproma)];
    double *z_w_con_c;
    z_w_con_c = new double DACE_ALIGN(64)[(91 * __CG_global_data__m_nproma)];
    double *z_w_con_c_full;
    z_w_con_c_full = new double DACE_ALIGN(64)[(((90 * __CG_global_data__m_nproma) * (__CG_p_patch__m_nblks_c - 1)) + (90 * __CG_global_data__m_nproma))];
    double *zeta;
    zeta = new double DACE_ALIGN(64)[(((90 * __CG_global_data__m_nproma) * (__CG_p_patch__m_nblks_v - 1)) + (90 * __CG_global_data__m_nproma))];
    double *z_ekinh;
    z_ekinh = new double DACE_ALIGN(64)[(((90 * __CG_global_data__m_nproma) * (__CG_p_patch__m_nblks_c - 1)) + (90 * __CG_global_data__m_nproma))];
    double cfl_w_limit;
    double vcfl;
    double maxvcfl;
    double *vcflmax;
    vcflmax = new double DACE_ALIGN(64)[__CG_p_patch__m_nblks_c];
    double w_con_e;
    double scalfac_exdiff;
    int nrdmax_jg;
    int nflatlev_jg;
    int *levmask;
    levmask = new int DACE_ALIGN(64)[(90 * __CG_p_patch__m_nblks_c)];
    int *levelmask;
    levelmask = new int DACE_ALIGN(64)[90];
    int *cfl_clipping;
    cfl_clipping = new int DACE_ALIGN(64)[(91 * __CG_global_data__m_nproma)];
    double tmp_call_17;
    int _if_cond_16;
    double _if_cond_29;
    int i_startblk_var_118_0;
    int i_endblk_var_119_0;
    int i_startblk_var_146;
    int i_endblk_var_147;
    int tmp_arg_15;
    double tmp_call_18;
    int _for_it_22;
    int i_startidx_in_var_79_1;
    int i_endidx_in_var_80_1;
    int tmp_arg_9;
    int tmp_arg_10;
    int _for_it_23;
    int _for_it_24;
    int tmp_index_407;
    int tmp_index_409;
    int tmp_index_419;
    int tmp_index_421;
    int tmp_index_431;
    int tmp_index_433;
    int _for_it_29;
    int _for_it_30;
    int _for_it_31;
    int _for_it_32;
    int _for_it_33;
    int _for_it_34;
    int _for_it_35;
    int clip_count;
    int _for_it_36;
    int _for_it_37;
    int _if_cond_18;
    double _if_cond_19;
    double _if_cond_20;
    int _for_it_38;
    int _for_it_39;
    int i_startidx_var_148;
    int i_endidx_var_149;
    int _for_it_25;
    int _for_it_26;
    int tmp_index_445;
    int tmp_index_447;
    int tmp_index_457;
    int tmp_index_459;
    int tmp_index_469;
    int tmp_index_471;
    int _for_it_27;
    int _for_it_28;
    int _for_it_46;
    int tmp_call_13;
    int tmp_parfor_0;
    int _for_it_47;
    int i_startidx_in_var_91_0;
    int i_endidx_in_var_92_0;
    int tmp_arg_17;
    int _for_it_52;
    int _if_cond_28;
    int _for_it_53;
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
    int _for_it_48;
    int _for_it_49;
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
    int _for_it_3_0;
    int i_startidx_in_var_103_0_0;
    int i_endidx_in_var_104_0_0;
    int _for_it_4_0;
    int _for_it_5_0;
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
    int i_startidx_var_120_0;
    int i_endidx_var_121_0;
    int _for_it_6;
    int i_startidx_in_var_91_3;
    int i_endidx_in_var_92_3;
    int _for_it_7;
    int _for_it_8;
    int tmp_index_178;
    int tmp_index_180;
    int tmp_index_190;
    int tmp_index_192;
    int tmp_index_202;
    int tmp_index_204;
    int tmp_index_214;
    int tmp_index_216;
    int _for_it_9;
    int _for_it_10;
    int _for_it_13;
    int _for_it_14;
    int _for_it_15;

    {
        int _anchor_0;
        int _anchor_1;
        int _anchor_2;
        int _anchor_3;
        int _anchor_4;
        int _anchor_5;
        int _anchor_6;

        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_0)
            _out = (((((((((((((((((((((((((((((((A_z_kin_hor_e_d_0 + A_z_kin_hor_e_d_1) + A_z_kin_hor_e_d_2) + A_z_vt_ie_d_0) + A_z_vt_ie_d_1) + A_z_vt_ie_d_2) + A_z_w_concorr_me_d_0) + A_z_w_concorr_me_d_1) + A_z_w_concorr_me_d_2) + OA_z_kin_hor_e_d_0) + OA_z_kin_hor_e_d_1) + OA_z_kin_hor_e_d_2) + OA_z_vt_ie_d_0) + OA_z_vt_ie_d_1) + OA_z_vt_ie_d_2) + OA_z_w_concorr_me_d_0) + OA_z_w_concorr_me_d_1) + OA_z_w_concorr_me_d_2) + SA_area_d_0_cells_p_patch_2) + SA_area_d_1_cells_p_patch_2) + SA_cell_blk_d_1_edges_p_patch_4) + SA_cell_blk_d_1_verts_p_patch_5) + SA_cell_blk_d_2_edges_p_patch_4) + SA_cell_blk_d_2_verts_p_patch_5) + SA_cell_idx_d_1_edges_p_patch_4) + SA_cell_idx_d_1_verts_p_patch_5) + SA_cell_idx_d_2_edges_p_patch_4) + SA_cell_idx_d_2_verts_p_patch_5) + SA_edge_blk_d_2_cells_p_patch_2) + SA_edge_blk_d_2_verts_p_patch_5) + SA_edge_idx_d_2_cells_p_patch_2) + SA_edge_idx_d_2_verts_p_patch_5);
            ///////////////////

            _anchor_0 = _out;
        }
        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_1)
            _out = (((((((((((((((((((((((((((((((SA_end_block_d_0_cells_p_patch_2 + SA_end_block_d_0_edges_p_patch_4) + SA_end_block_d_0_verts_p_patch_5) + SA_end_index_d_0_cells_p_patch_2) + SA_end_index_d_0_edges_p_patch_4) + SA_end_index_d_0_verts_p_patch_5) + SA_neighbor_blk_d_2_cells_p_patch_2) + SA_neighbor_idx_d_2_cells_p_patch_2) + SA_quad_blk_d_2_edges_p_patch_4) + SA_quad_idx_d_2_edges_p_patch_4) + SA_start_block_d_0_cells_p_patch_2) + SA_start_block_d_0_edges_p_patch_4) + SA_start_block_d_0_verts_p_patch_5) + SA_start_index_d_0_cells_p_patch_2) + SA_start_index_d_0_edges_p_patch_4) + SA_start_index_d_0_verts_p_patch_5) + SA_vertex_blk_d_2_edges_p_patch_4) + SA_vertex_idx_d_2_edges_p_patch_4) + SOA_area_d_0_cells_p_patch_2) + SOA_area_d_1_cells_p_patch_2) + SOA_end_block_d_0_cells_p_patch_2) + SOA_end_block_d_0_edges_p_patch_4) + SOA_end_block_d_0_verts_p_patch_5) + SOA_end_index_d_0_cells_p_patch_2) + SOA_end_index_d_0_edges_p_patch_4) + SOA_end_index_d_0_verts_p_patch_5) + SOA_start_block_d_0_cells_p_patch_2) + SOA_start_block_d_0_edges_p_patch_4) + SOA_start_block_d_0_verts_p_patch_5) + SOA_start_index_d_0_cells_p_patch_2) + SOA_start_index_d_0_edges_p_patch_4) + SOA_start_index_d_0_verts_p_patch_5);
            ///////////////////

            _anchor_1 = _out;
        }
        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_2)
            _out = (((((((((((((((((((((((((((((((__CG_global_data__m_nproma + __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) + __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) + __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3) + __CG_p_diag__m_SA_ddt_w_adv_pc_d_0) + __CG_p_diag__m_SA_ddt_w_adv_pc_d_2) + __CG_p_diag__m_SA_ddt_w_adv_pc_d_3) + __CG_p_diag__m_SA_vn_ie_d_0) + __CG_p_diag__m_SA_vn_ie_d_2) + __CG_p_diag__m_SA_vt_d_0) + __CG_p_diag__m_SA_vt_d_2) + __CG_p_diag__m_SA_w_concorr_c_d_0) + __CG_p_diag__m_SA_w_concorr_c_d_2) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2) + __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3) + __CG_p_diag__m_SOA_vn_ie_d_0) + __CG_p_diag__m_SOA_vn_ie_d_1) + __CG_p_diag__m_SOA_vn_ie_d_2) + __CG_p_diag__m_SOA_vt_d_0) + __CG_p_diag__m_SOA_vt_d_1) + __CG_p_diag__m_SOA_vt_d_2) + __CG_p_diag__m_SOA_w_concorr_c_d_0) + __CG_p_diag__m_SOA_w_concorr_c_d_1) + __CG_p_diag__m_SOA_w_concorr_c_d_2) + __CG_p_int__m_SA_c_lin_e_d_0) + __CG_p_int__m_SA_c_lin_e_d_1);
            ///////////////////

            _anchor_2 = _out;
        }
        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_3)
            _out = (((((((((((((((((((((((((((((((__CG_p_int__m_SA_c_lin_e_d_2 + __CG_p_int__m_SA_cells_aw_verts_d_0) + __CG_p_int__m_SA_cells_aw_verts_d_1) + __CG_p_int__m_SA_cells_aw_verts_d_2) + __CG_p_int__m_SA_e_bln_c_s_d_0) + __CG_p_int__m_SA_e_bln_c_s_d_1) + __CG_p_int__m_SA_e_bln_c_s_d_2) + __CG_p_int__m_SA_geofac_grdiv_d_0) + __CG_p_int__m_SA_geofac_grdiv_d_1) + __CG_p_int__m_SA_geofac_grdiv_d_2) + __CG_p_int__m_SA_geofac_n2s_d_0) + __CG_p_int__m_SA_geofac_n2s_d_1) + __CG_p_int__m_SA_geofac_n2s_d_2) + __CG_p_int__m_SA_geofac_rot_d_0) + __CG_p_int__m_SA_geofac_rot_d_1) + __CG_p_int__m_SA_geofac_rot_d_2) + __CG_p_int__m_SA_rbf_vec_coeff_e_d_0) + __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) + __CG_p_int__m_SA_rbf_vec_coeff_e_d_2) + __CG_p_int__m_SOA_c_lin_e_d_0) + __CG_p_int__m_SOA_c_lin_e_d_1) + __CG_p_int__m_SOA_c_lin_e_d_2) + __CG_p_int__m_SOA_cells_aw_verts_d_0) + __CG_p_int__m_SOA_cells_aw_verts_d_1) + __CG_p_int__m_SOA_cells_aw_verts_d_2) + __CG_p_int__m_SOA_e_bln_c_s_d_0) + __CG_p_int__m_SOA_e_bln_c_s_d_1) + __CG_p_int__m_SOA_e_bln_c_s_d_2) + __CG_p_int__m_SOA_geofac_grdiv_d_0) + __CG_p_int__m_SOA_geofac_grdiv_d_1) + __CG_p_int__m_SOA_geofac_grdiv_d_2) + __CG_p_int__m_SOA_geofac_n2s_d_0);
            ///////////////////

            _anchor_3 = _out;
        }
        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_4)
            _out = (((((((((((((((((((((((((((((((__CG_p_int__m_SOA_geofac_n2s_d_1 + __CG_p_int__m_SOA_geofac_n2s_d_2) + __CG_p_int__m_SOA_geofac_rot_d_0) + __CG_p_int__m_SOA_geofac_rot_d_1) + __CG_p_int__m_SOA_geofac_rot_d_2) + __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0) + __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + __CG_p_metrics__m_SA_coeff1_dwdz_d_0) + __CG_p_metrics__m_SA_coeff1_dwdz_d_2) + __CG_p_metrics__m_SA_coeff2_dwdz_d_0) + __CG_p_metrics__m_SA_coeff2_dwdz_d_2) + __CG_p_metrics__m_SA_coeff_gradekin_d_0) + __CG_p_metrics__m_SA_coeff_gradekin_d_1) + __CG_p_metrics__m_SA_coeff_gradekin_d_2) + __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) + __CG_p_metrics__m_SA_ddqz_z_full_e_d_2) + __CG_p_metrics__m_SA_ddqz_z_half_d_0) + __CG_p_metrics__m_SA_ddqz_z_half_d_2) + __CG_p_metrics__m_SA_ddxn_z_full_d_0) + __CG_p_metrics__m_SA_ddxn_z_full_d_2) + __CG_p_metrics__m_SA_ddxt_z_full_d_0) + __CG_p_metrics__m_SA_ddxt_z_full_d_2) + __CG_p_metrics__m_SA_wgtfac_c_d_0) + __CG_p_metrics__m_SA_wgtfac_c_d_2) + __CG_p_metrics__m_SA_wgtfac_e_d_0) + __CG_p_metrics__m_SA_wgtfac_e_d_2) + __CG_p_metrics__m_SA_wgtfacq_e_d_0) + __CG_p_metrics__m_SA_wgtfacq_e_d_1) + __CG_p_metrics__m_SA_wgtfacq_e_d_2) + __CG_p_metrics__m_SOA_coeff1_dwdz_d_0) + __CG_p_metrics__m_SOA_coeff1_dwdz_d_1);
            ///////////////////

            _anchor_4 = _out;
        }
        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_5)
            _out = (((((((((((((((((((((((((((((((__CG_p_metrics__m_SOA_coeff1_dwdz_d_2 + __CG_p_metrics__m_SOA_coeff2_dwdz_d_0) + __CG_p_metrics__m_SOA_coeff2_dwdz_d_1) + __CG_p_metrics__m_SOA_coeff2_dwdz_d_2) + __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + __CG_p_metrics__m_SOA_coeff_gradekin_d_1) + __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + __CG_p_metrics__m_SOA_ddxn_z_full_d_0) + __CG_p_metrics__m_SOA_ddxn_z_full_d_1) + __CG_p_metrics__m_SOA_ddxn_z_full_d_2) + __CG_p_metrics__m_SOA_ddxt_z_full_d_0) + __CG_p_metrics__m_SOA_ddxt_z_full_d_1) + __CG_p_metrics__m_SOA_ddxt_z_full_d_2) + __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0) + __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0) + __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0) + __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0) + __CG_p_metrics__m_SOA_wgtfac_c_d_0) + __CG_p_metrics__m_SOA_wgtfac_c_d_1) + __CG_p_metrics__m_SOA_wgtfac_c_d_2) + __CG_p_metrics__m_SOA_wgtfac_e_d_0) + __CG_p_metrics__m_SOA_wgtfac_e_d_1) + __CG_p_metrics__m_SOA_wgtfac_e_d_2) + __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + __CG_p_metrics__m_SOA_wgtfacq_e_d_1) + __CG_p_metrics__m_SOA_wgtfacq_e_d_2);
            ///////////////////

            _anchor_5 = _out;
        }
        {
            int _out;

            ///////////////////
            // Tasklet code (__sig_anchor_use_6)
            _out = ((((((((((((__CG_p_patch__m_nblks_c + __CG_p_patch__m_nblks_e) + __CG_p_patch__m_nblks_v) + __CG_p_prog__m_SA_vn_d_0) + __CG_p_prog__m_SA_vn_d_2) + __CG_p_prog__m_SA_w_d_0) + __CG_p_prog__m_SA_w_d_2) + __CG_p_prog__m_SOA_vn_d_0) + __CG_p_prog__m_SOA_vn_d_1) + __CG_p_prog__m_SOA_vn_d_2) + __CG_p_prog__m_SOA_w_d_0) + __CG_p_prog__m_SOA_w_d_1) + __CG_p_prog__m_SOA_w_d_2);
            ///////////////////

            _anchor_6 = _out;
        }

    }
    {

        {
            int global_data_0_in_nrdmax_0 = __CG_global_data__m_nrdmax[0];
            int nrdmax_jg_out;

            ///////////////////
            // Tasklet code (T_l419_c419)
            nrdmax_jg_out = global_data_0_in_nrdmax_0;
            ///////////////////

            nrdmax_jg = nrdmax_jg_out;
        }
        {
            int global_data_0_in_nflatlev_0 = __CG_global_data__m_nflatlev[0];
            int nflatlev_jg_out;

            ///////////////////
            // Tasklet code (T_l420_c420)
            nflatlev_jg_out = global_data_0_in_nflatlev_0;
            ///////////////////

            nflatlev_jg = nflatlev_jg_out;
        }
        {
            double dtime_0_in = dtime;
            double cfl_w_limit_out;

            ///////////////////
            // Tasklet code (T_l424_c424)
            cfl_w_limit_out = (0.65 / dtime_0_in);
            ///////////////////

            cfl_w_limit = cfl_w_limit_out;
        }
        {
            double cfl_w_limit_0_in = cfl_w_limit;
            double dtime_0_in = dtime;
            double dtime_1_in = dtime;
            double scalfac_exdiff_out;

            ///////////////////
            // Tasklet code (T_l425_c425)
            scalfac_exdiff_out = (0.05 / (dtime_0_in * (0.85 - (cfl_w_limit_0_in * dtime_1_in))));
            ///////////////////

            scalfac_exdiff = scalfac_exdiff_out;
        }

    }
    i_startblk_var_118_0 = __CG_p_patch__CG_verts__m_start_block[(2 - SOA_start_block_d_0_verts_p_patch_5)];
    i_endblk_var_119_0 = __CG_p_patch__CG_verts__m_end_block[((- SOA_end_block_d_0_verts_p_patch_5) - 5)];
    for (_for_it_3_0 = i_startblk_var_118_0; (_for_it_3_0 <= i_endblk_var_119_0); _for_it_3_0 = (_for_it_3_0 + 1)) {

        i_startidx_in_var_103_0_0 = __CG_p_patch__CG_verts__m_start_index[(2 - SOA_start_index_d_0_verts_p_patch_5)];
        i_endidx_in_var_104_0_0 = __CG_p_patch__CG_verts__m_end_index[((- SOA_end_index_d_0_verts_p_patch_5) - 5)];
        if (((_for_it_3_0 == i_startblk_var_118_0) == 1)) {

            i_startidx_var_120_0 = i_startidx_in_var_103_0_0;
            i_endidx_var_121_0 = __CG_global_data__m_nproma;
            if (((_for_it_3_0 == i_endblk_var_119_0) == 1)) {

                i_endidx_var_121_0 = i_endidx_in_var_104_0_0;

            }
        } else {
            if (((_for_it_3_0 == i_endblk_var_119_0) == 1)) {

                i_startidx_var_120_0 = 1;
                i_endidx_var_121_0 = i_endidx_in_var_104_0_0;

            } else {

                i_startidx_var_120_0 = 1;
                i_endidx_var_121_0 = __CG_global_data__m_nproma;

            }
        }
        for (_for_it_4_0 = 1; (_for_it_4_0 <= 90); _for_it_4_0 = (_for_it_4_0 + 1)) {
            for (_for_it_5_0 = i_startidx_var_120_0; (_for_it_5_0 <= i_endidx_var_121_0); _for_it_5_0 = (_for_it_5_0 + 1)) {

                tmp_index_92_0 = (__CG_p_patch__CG_verts__m_edge_idx[(((__CG_global_data__m_nproma * (_for_it_3_0 - 1)) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_94_0 = (__CG_p_patch__CG_verts__m_edge_blk[(((__CG_global_data__m_nproma * (_for_it_3_0 - 1)) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_104_0 = (__CG_p_patch__CG_verts__m_edge_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_106_0 = (__CG_p_patch__CG_verts__m_edge_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_116_0 = (__CG_p_patch__CG_verts__m_edge_idx[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_118_0 = (__CG_p_patch__CG_verts__m_edge_blk[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_128_0 = (__CG_p_patch__CG_verts__m_edge_idx[(((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_130_0 = (__CG_p_patch__CG_verts__m_edge_blk[(((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_140_0 = (__CG_p_patch__CG_verts__m_edge_idx[(((((4 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_142_0 = (__CG_p_patch__CG_verts__m_edge_blk[(((((4 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_152_0 = (__CG_p_patch__CG_verts__m_edge_idx[(((((5 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_154_0 = (__CG_p_patch__CG_verts__m_edge_blk[(((((5 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_3_0 - 1))) + _for_it_5_0) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                {

                    {
                        double ptr_int_0_in_geofac_rot_0 = __CG_p_int__m_geofac_rot[(((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * ((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (1 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0)];
                        double ptr_int_1_in_geofac_rot_0 = __CG_p_int__m_geofac_rot[(((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * ((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (2 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0)];
                        double ptr_int_2_in_geofac_rot_0 = __CG_p_int__m_geofac_rot[(((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * ((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (3 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0)];
                        double ptr_int_3_in_geofac_rot_0 = __CG_p_int__m_geofac_rot[(((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * ((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (4 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0)];
                        double ptr_int_4_in_geofac_rot_0 = __CG_p_int__m_geofac_rot[(((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * ((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (5 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0)];
                        double ptr_int_5_in_geofac_rot_0 = __CG_p_int__m_geofac_rot[(((((__CG_p_int__m_SA_geofac_rot_d_0 * __CG_p_int__m_SA_geofac_rot_d_1) * ((- __CG_p_int__m_SOA_geofac_rot_d_2) + _for_it_3_0)) + (__CG_p_int__m_SA_geofac_rot_d_0 * (6 - __CG_p_int__m_SOA_geofac_rot_d_1))) - __CG_p_int__m_SOA_geofac_rot_d_0) + _for_it_5_0)];
                        double vec_e_0_in_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_94_0) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0))) + tmp_index_92_0)];
                        double vec_e_1_in_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_106_0) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0))) + tmp_index_104_0)];
                        double vec_e_2_in_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_118_0) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0))) + tmp_index_116_0)];
                        double vec_e_3_in_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_130_0) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0))) + tmp_index_128_0)];
                        double vec_e_4_in_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_142_0) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0))) + tmp_index_140_0)];
                        double vec_e_5_in_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_154_0) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_4_0))) + tmp_index_152_0)];
                        double rot_vec_out_0;

                        ///////////////////
                        // Tasklet code (T_l296_c296)
                        rot_vec_out_0 = ((((((vec_e_0_in_0 * ptr_int_0_in_geofac_rot_0) + (vec_e_1_in_0 * ptr_int_1_in_geofac_rot_0)) + (vec_e_2_in_0 * ptr_int_2_in_geofac_rot_0)) + (vec_e_3_in_0 * ptr_int_3_in_geofac_rot_0)) + (vec_e_4_in_0 * ptr_int_4_in_geofac_rot_0)) + (vec_e_5_in_0 * ptr_int_5_in_geofac_rot_0));
                        ///////////////////

                        zeta[(((((90 * __CG_global_data__m_nproma) * (_for_it_3_0 - 1)) + (__CG_global_data__m_nproma * (_for_it_4_0 - 1))) + _for_it_5_0) - 1)] = rot_vec_out_0;
                    }

                }

            }

        }

    }
    i_startblk_var_146 = __CG_p_patch__CG_edges__m_start_block[(5 - SOA_start_block_d_0_edges_p_patch_4)];
    i_endblk_var_147 = __CG_p_patch__CG_edges__m_end_block[((- SOA_end_block_d_0_edges_p_patch_4) - 10)];
    for (_for_it_6 = i_startblk_var_146; (_for_it_6 <= i_endblk_var_147); _for_it_6 = (_for_it_6 + 1)) {

        i_startidx_in_var_91_3 = __CG_p_patch__CG_edges__m_start_index[(5 - SOA_start_index_d_0_edges_p_patch_4)];
        i_endidx_in_var_92_3 = __CG_p_patch__CG_edges__m_end_index[((- SOA_end_index_d_0_edges_p_patch_4) - 10)];
        if ((_for_it_6 != i_startblk_var_146)) {

            i_startidx_var_148 = 1;

        } else {

            i_startidx_var_148 = max(1, i_startidx_in_var_91_3);

        }
        if ((_for_it_6 != i_endblk_var_147)) {

            i_endidx_var_149 = __CG_global_data__m_nproma;

        } else {

            i_endidx_var_149 = i_endidx_in_var_92_3;

        }
        for (_for_it_7 = 1; (_for_it_7 <= 90); _for_it_7 = (_for_it_7 + 1)) {
            for (_for_it_8 = i_startidx_var_148; (_for_it_8 <= i_endidx_var_149); _for_it_8 = (_for_it_8 + 1)) {

                tmp_index_178 = (__CG_p_patch__CG_edges__m_quad_idx[(((__CG_global_data__m_nproma * (_for_it_6 - 1)) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_180 = (__CG_p_patch__CG_edges__m_quad_blk[(((__CG_global_data__m_nproma * (_for_it_6 - 1)) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_190 = (__CG_p_patch__CG_edges__m_quad_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_6 - 1))) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_192 = (__CG_p_patch__CG_edges__m_quad_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_6 - 1))) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_202 = (__CG_p_patch__CG_edges__m_quad_idx[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_6 - 1))) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_204 = (__CG_p_patch__CG_edges__m_quad_blk[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_6 - 1))) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                tmp_index_214 = (__CG_p_patch__CG_edges__m_quad_idx[(((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_6 - 1))) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                tmp_index_216 = (__CG_p_patch__CG_edges__m_quad_blk[(((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_6 - 1))) + _for_it_8) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                {

                    {
                        double p_int_0_in_rbf_vec_coeff_e_0 = __CG_p_int__m_rbf_vec_coeff_e[(((((__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6)) + (__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8))) - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0) + 1)];
                        double p_int_1_in_rbf_vec_coeff_e_0 = __CG_p_int__m_rbf_vec_coeff_e[(((((__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6)) + (__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8))) - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0) + 2)];
                        double p_int_2_in_rbf_vec_coeff_e_0 = __CG_p_int__m_rbf_vec_coeff_e[(((((__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6)) + (__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8))) - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0) + 3)];
                        double p_int_3_in_rbf_vec_coeff_e_0 = __CG_p_int__m_rbf_vec_coeff_e[(((((__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * __CG_p_int__m_SA_rbf_vec_coeff_e_d_1) * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2) + _for_it_6)) + (__CG_p_int__m_SA_rbf_vec_coeff_e_d_0 * ((- __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1) + _for_it_8))) - __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0) + 4)];
                        double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_180) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7))) + tmp_index_178)];
                        double p_prog_1_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_192) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7))) + tmp_index_190)];
                        double p_prog_2_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_204) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7))) + tmp_index_202)];
                        double p_prog_3_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_216) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_7))) + tmp_index_214)];
                        double p_diag_out_vt_0;

                        ///////////////////
                        // Tasklet code (T_l441_c441)
                        p_diag_out_vt_0 = ((((p_int_0_in_rbf_vec_coeff_e_0 * p_prog_0_in_vn_0) + (p_int_1_in_rbf_vec_coeff_e_0 * p_prog_1_in_vn_0)) + (p_int_2_in_rbf_vec_coeff_e_0 * p_prog_2_in_vn_0)) + (p_int_3_in_rbf_vec_coeff_e_0 * p_prog_3_in_vn_0));
                        ///////////////////

                        __CG_p_diag__m_vt[((((__CG_p_diag__m_SA_vt_d_0 * ((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_7)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * ((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_8)] = p_diag_out_vt_0;
                    }

                }

            }

        }
        for (_for_it_9 = 2; (_for_it_9 <= 90); _for_it_9 = (_for_it_9 + 1)) {
            for (_for_it_10 = i_startidx_var_148; (_for_it_10 <= i_endidx_var_149); _for_it_10 = (_for_it_10 + 1)) {
                {
                    double tmp_call_2;
                    double tmp_call_1;

                    {
                        double p_metrics_0_in_wgtfac_e_0 = __CG_p_metrics__m_wgtfac_e[((((__CG_p_metrics__m_SA_wgtfac_e_d_0 * ((- __CG_p_metrics__m_SOA_wgtfac_e_d_1) + _for_it_9)) + ((91 * __CG_p_metrics__m_SA_wgtfac_e_d_0) * ((- __CG_p_metrics__m_SOA_wgtfac_e_d_2) + _for_it_6))) - __CG_p_metrics__m_SOA_wgtfac_e_d_0) + _for_it_10)];
                        double p_metrics_1_in_wgtfac_e_0 = __CG_p_metrics__m_wgtfac_e[((((__CG_p_metrics__m_SA_wgtfac_e_d_0 * ((- __CG_p_metrics__m_SOA_wgtfac_e_d_1) + _for_it_9)) + ((91 * __CG_p_metrics__m_SA_wgtfac_e_d_0) * ((- __CG_p_metrics__m_SOA_wgtfac_e_d_2) + _for_it_6))) - __CG_p_metrics__m_SOA_wgtfac_e_d_0) + _for_it_10)];
                        double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_9)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_10)];
                        double p_prog_1_in_vn_0 = __CG_p_prog__m_vn[(((((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6)) + (__CG_p_prog__m_SA_vn_d_0 * (((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_9) - 1))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_10)];
                        double p_diag_out_vn_ie_0;

                        ///////////////////
                        // Tasklet code (T_l446_c446)
                        p_diag_out_vn_ie_0 = ((p_metrics_0_in_wgtfac_e_0 * p_prog_0_in_vn_0) + ((1.0 - p_metrics_1_in_wgtfac_e_0) * p_prog_1_in_vn_0));
                        ///////////////////

                        __CG_p_diag__m_vn_ie[((((__CG_p_diag__m_SA_vn_ie_d_0 * ((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_9)) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * ((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_10)] = p_diag_out_vn_ie_0;
                    }
                    {
                        double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_9)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_10)];
                        double tmp_call_1_out;

                        ///////////////////
                        // Tasklet code (T_l447_c447)
                        tmp_call_1_out = (dace::math::ipow(p_prog_0_in_vn_0, 2));
                        ///////////////////

                        tmp_call_1 = tmp_call_1_out;
                    }
                    {
                        double p_diag_0_in_vt_0 = __CG_p_diag__m_vt[((((__CG_p_diag__m_SA_vt_d_0 * ((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_9)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * ((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_10)];
                        double tmp_call_2_out;

                        ///////////////////
                        // Tasklet code (T_l447_c447)
                        tmp_call_2_out = (dace::math::ipow(p_diag_0_in_vt_0, 2));
                        ///////////////////

                        tmp_call_2 = tmp_call_2_out;
                    }
                    {
                        double tmp_call_1_0_in = tmp_call_1;
                        double tmp_call_2_0_in = tmp_call_2;
                        double z_kin_hor_e_out_0;

                        ///////////////////
                        // Tasklet code (T_l447_c447)
                        z_kin_hor_e_out_0 = (0.5 * (tmp_call_1_0_in + tmp_call_2_0_in));
                        ///////////////////

                        z_kin_hor_e[(((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * ((- OA_z_kin_hor_e_d_2) + _for_it_6)) + (A_z_kin_hor_e_d_0 * ((- OA_z_kin_hor_e_d_1) + _for_it_9))) - OA_z_kin_hor_e_d_0) + _for_it_10)] = z_kin_hor_e_out_0;
                    }

                }

            }

        }
        for (_for_it_13 = nflatlev_jg; (_for_it_13 <= 90); _for_it_13 = (_for_it_13 + 1)) {
            for (_for_it_14 = i_startidx_var_148; (_for_it_14 <= i_endidx_var_149); _for_it_14 = (_for_it_14 + 1)) {
                {

                    {
                        double p_diag_0_in_vt_0 = __CG_p_diag__m_vt[((((__CG_p_diag__m_SA_vt_d_0 * ((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_13)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * ((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_14)];
                        double p_metrics_0_in_ddxn_z_full_0 = __CG_p_metrics__m_ddxn_z_full[((((__CG_p_metrics__m_SA_ddxn_z_full_d_0 * ((- __CG_p_metrics__m_SOA_ddxn_z_full_d_1) + _for_it_13)) + ((90 * __CG_p_metrics__m_SA_ddxn_z_full_d_0) * ((- __CG_p_metrics__m_SOA_ddxn_z_full_d_2) + _for_it_6))) - __CG_p_metrics__m_SOA_ddxn_z_full_d_0) + _for_it_14)];
                        double p_metrics_1_in_ddxt_z_full_0 = __CG_p_metrics__m_ddxt_z_full[((((__CG_p_metrics__m_SA_ddxt_z_full_d_0 * ((- __CG_p_metrics__m_SOA_ddxt_z_full_d_1) + _for_it_13)) + ((90 * __CG_p_metrics__m_SA_ddxt_z_full_d_0) * ((- __CG_p_metrics__m_SOA_ddxt_z_full_d_2) + _for_it_6))) - __CG_p_metrics__m_SOA_ddxt_z_full_d_0) + _for_it_14)];
                        double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_13)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_14)];
                        double z_w_concorr_me_out_0;

                        ///////////////////
                        // Tasklet code (T_l459_c459)
                        z_w_concorr_me_out_0 = ((p_prog_0_in_vn_0 * p_metrics_0_in_ddxn_z_full_0) + (p_diag_0_in_vt_0 * p_metrics_1_in_ddxt_z_full_0));
                        ///////////////////

                        z_w_concorr_me[(((((A_z_w_concorr_me_d_0 * A_z_w_concorr_me_d_1) * ((- OA_z_w_concorr_me_d_2) + _for_it_6)) + (A_z_w_concorr_me_d_0 * ((- OA_z_w_concorr_me_d_1) + _for_it_13))) - OA_z_w_concorr_me_d_0) + _for_it_14)] = z_w_concorr_me_out_0;
                    }

                }

            }

        }
        for (_for_it_15 = i_startidx_var_148; (_for_it_15 <= i_endidx_var_149); _for_it_15 = (_for_it_15 + 1)) {
            {
                double tmp_call_4;
                double tmp_call_3;

                {
                    double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * (1 - __CG_p_prog__m_SOA_vn_d_1)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_15)];
                    double p_diag_out_vn_ie_0;

                    ///////////////////
                    // Tasklet code (T_l464_c464)
                    p_diag_out_vn_ie_0 = p_prog_0_in_vn_0;
                    ///////////////////

                    __CG_p_diag__m_vn_ie[((((__CG_p_diag__m_SA_vn_ie_d_0 * (1 - __CG_p_diag__m_SOA_vn_ie_d_1)) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * ((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_15)] = p_diag_out_vn_ie_0;
                }
                {
                    double p_metrics_0_in_wgtfacq_e_0 = __CG_p_metrics__m_wgtfacq_e[(((((__CG_p_metrics__m_SA_wgtfacq_e_d_0 * __CG_p_metrics__m_SA_wgtfacq_e_d_1) * ((- __CG_p_metrics__m_SOA_wgtfacq_e_d_2) + _for_it_6)) + (__CG_p_metrics__m_SA_wgtfacq_e_d_0 * (1 - __CG_p_metrics__m_SOA_wgtfacq_e_d_1))) - __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + _for_it_15)];
                    double p_metrics_1_in_wgtfacq_e_0 = __CG_p_metrics__m_wgtfacq_e[(((((__CG_p_metrics__m_SA_wgtfacq_e_d_0 * __CG_p_metrics__m_SA_wgtfacq_e_d_1) * ((- __CG_p_metrics__m_SOA_wgtfacq_e_d_2) + _for_it_6)) + (__CG_p_metrics__m_SA_wgtfacq_e_d_0 * (2 - __CG_p_metrics__m_SOA_wgtfacq_e_d_1))) - __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + _for_it_15)];
                    double p_metrics_2_in_wgtfacq_e_0 = __CG_p_metrics__m_wgtfacq_e[(((((__CG_p_metrics__m_SA_wgtfacq_e_d_0 * __CG_p_metrics__m_SA_wgtfacq_e_d_1) * ((- __CG_p_metrics__m_SOA_wgtfacq_e_d_2) + _for_it_6)) + (__CG_p_metrics__m_SA_wgtfacq_e_d_0 * (3 - __CG_p_metrics__m_SOA_wgtfacq_e_d_1))) - __CG_p_metrics__m_SOA_wgtfacq_e_d_0) + _for_it_15)];
                    double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * (90 - __CG_p_prog__m_SOA_vn_d_1)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_15)];
                    double p_prog_1_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * (89 - __CG_p_prog__m_SOA_vn_d_1)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_15)];
                    double p_prog_2_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * (88 - __CG_p_prog__m_SOA_vn_d_1)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_15)];
                    double p_diag_out_vn_ie_0;

                    ///////////////////
                    // Tasklet code (T_l467_c467)
                    p_diag_out_vn_ie_0 = (((p_metrics_0_in_wgtfacq_e_0 * p_prog_0_in_vn_0) + (p_metrics_1_in_wgtfacq_e_0 * p_prog_1_in_vn_0)) + (p_metrics_2_in_wgtfacq_e_0 * p_prog_2_in_vn_0));
                    ///////////////////

                    __CG_p_diag__m_vn_ie[((((__CG_p_diag__m_SA_vn_ie_d_0 * (91 - __CG_p_diag__m_SOA_vn_ie_d_1)) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * ((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_15)] = p_diag_out_vn_ie_0;
                }
                {
                    double p_diag_0_in_vt_0 = __CG_p_diag__m_vt[((((__CG_p_diag__m_SA_vt_d_0 * (1 - __CG_p_diag__m_SOA_vt_d_1)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * ((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_15)];
                    double z_vt_ie_out_0;

                    ///////////////////
                    // Tasklet code (T_l465_c465)
                    z_vt_ie_out_0 = p_diag_0_in_vt_0;
                    ///////////////////

                    z_vt_ie[(((((A_z_vt_ie_d_0 * A_z_vt_ie_d_1) * ((- OA_z_vt_ie_d_2) + _for_it_6)) + (A_z_vt_ie_d_0 * (1 - OA_z_vt_ie_d_1))) - OA_z_vt_ie_d_0) + _for_it_15)] = z_vt_ie_out_0;
                }
                {
                    double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * (1 - __CG_p_prog__m_SOA_vn_d_1)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_6))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_15)];
                    double tmp_call_3_out;

                    ///////////////////
                    // Tasklet code (T_l466_c466)
                    tmp_call_3_out = (dace::math::ipow(p_prog_0_in_vn_0, 2));
                    ///////////////////

                    tmp_call_3 = tmp_call_3_out;
                }
                {
                    double p_diag_0_in_vt_0 = __CG_p_diag__m_vt[((((__CG_p_diag__m_SA_vt_d_0 * (1 - __CG_p_diag__m_SOA_vt_d_1)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * ((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_6))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_15)];
                    double tmp_call_4_out;

                    ///////////////////
                    // Tasklet code (T_l466_c466)
                    tmp_call_4_out = (dace::math::ipow(p_diag_0_in_vt_0, 2));
                    ///////////////////

                    tmp_call_4 = tmp_call_4_out;
                }
                {
                    double tmp_call_3_0_in = tmp_call_3;
                    double tmp_call_4_0_in = tmp_call_4;
                    double z_kin_hor_e_out_0;

                    ///////////////////
                    // Tasklet code (T_l466_c466)
                    z_kin_hor_e_out_0 = (0.5 * (tmp_call_3_0_in + tmp_call_4_0_in));
                    ///////////////////

                    z_kin_hor_e[(((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * ((- OA_z_kin_hor_e_d_2) + _for_it_6)) + (A_z_kin_hor_e_d_0 * (1 - OA_z_kin_hor_e_d_1))) - OA_z_kin_hor_e_d_0) + _for_it_15)] = z_kin_hor_e_out_0;
                }

            }

        }

    }
    i_startblk_var_146 = __CG_p_patch__CG_edges__m_start_block[(7 - SOA_start_block_d_0_edges_p_patch_4)];
    i_endblk_var_147 = __CG_p_patch__CG_edges__m_end_block[((- SOA_end_block_d_0_edges_p_patch_4) - 9)];

    i_startblk_var_146 = __CG_p_patch__CG_cells__m_start_block[(4 - SOA_start_block_d_0_cells_p_patch_2)];
    i_endblk_var_147 = __CG_p_patch__CG_cells__m_end_block[((- SOA_end_block_d_0_cells_p_patch_2) - 5)];
    for (_for_it_22 = i_startblk_var_146; (_for_it_22 <= i_endblk_var_147); _for_it_22 = (_for_it_22 + 1)) {

        i_startidx_in_var_79_1 = __CG_p_patch__CG_cells__m_start_index[(4 - SOA_start_index_d_0_cells_p_patch_2)];
        i_endidx_in_var_80_1 = __CG_p_patch__CG_cells__m_end_index[((- SOA_end_index_d_0_cells_p_patch_2) - 5)];
        if (((_for_it_22 == i_startblk_var_146) == 1)) {

            i_startidx_var_148 = max(1, i_startidx_in_var_79_1);
            i_endidx_var_149 = __CG_global_data__m_nproma;
            if (((_for_it_22 == i_endblk_var_147) == 1)) {

                i_endidx_var_149 = i_endidx_in_var_80_1;

            }
        } else {
            if (((_for_it_22 == i_endblk_var_147) == 1)) {

                i_startidx_var_148 = 1;
                i_endidx_var_149 = i_endidx_in_var_80_1;

            } else {

                i_startidx_var_148 = 1;
                i_endidx_var_149 = __CG_global_data__m_nproma;

            }
        }
        for (_for_it_23 = 1; (_for_it_23 <= 90); _for_it_23 = (_for_it_23 + 1)) {
            for (_for_it_24 = i_startidx_var_148; (_for_it_24 <= i_endidx_var_149); _for_it_24 = (_for_it_24 + 1)) {

                tmp_index_407 = (__CG_p_patch__CG_cells__m_edge_idx[(((__CG_global_data__m_nproma * (_for_it_22 - 1)) + _for_it_24) - 1)] - OA_z_kin_hor_e_d_0);
                tmp_index_409 = (__CG_p_patch__CG_cells__m_edge_blk[(((__CG_global_data__m_nproma * (_for_it_22 - 1)) + _for_it_24) - 1)] - OA_z_kin_hor_e_d_2);
                tmp_index_419 = (__CG_p_patch__CG_cells__m_edge_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_24) - 1)] - OA_z_kin_hor_e_d_0);
                tmp_index_421 = (__CG_p_patch__CG_cells__m_edge_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_24) - 1)] - OA_z_kin_hor_e_d_2);
                tmp_index_431 = (__CG_p_patch__CG_cells__m_edge_idx[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_24) - 1)] - OA_z_kin_hor_e_d_0);
                tmp_index_433 = (__CG_p_patch__CG_cells__m_edge_blk[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_24) - 1)] - OA_z_kin_hor_e_d_2);
                {

                    {
                        double p_int_0_in_e_bln_c_s_0 = __CG_p_int__m_e_bln_c_s[(((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * ((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24)];
                        double p_int_1_in_e_bln_c_s_0 = __CG_p_int__m_e_bln_c_s[(((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * ((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24)];
                        double p_int_2_in_e_bln_c_s_0 = __CG_p_int__m_e_bln_c_s[(((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * ((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_24)];
                        double z_kin_hor_e_0_in_0 = z_kin_hor_e[((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * tmp_index_409) + (A_z_kin_hor_e_d_0 * ((- OA_z_kin_hor_e_d_1) + _for_it_23))) + tmp_index_407)];
                        double z_kin_hor_e_1_in_0 = z_kin_hor_e[((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * tmp_index_421) + (A_z_kin_hor_e_d_0 * ((- OA_z_kin_hor_e_d_1) + _for_it_23))) + tmp_index_419)];
                        double z_kin_hor_e_2_in_0 = z_kin_hor_e[((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * tmp_index_433) + (A_z_kin_hor_e_d_0 * ((- OA_z_kin_hor_e_d_1) + _for_it_23))) + tmp_index_431)];
                        double z_ekinh_out_0;

                        ///////////////////
                        // Tasklet code (T_l515_c515)
                        z_ekinh_out_0 = (((p_int_0_in_e_bln_c_s_0 * z_kin_hor_e_0_in_0) + (p_int_1_in_e_bln_c_s_0 * z_kin_hor_e_1_in_0)) + (p_int_2_in_e_bln_c_s_0 * z_kin_hor_e_2_in_0));
                        ///////////////////

                        z_ekinh[(((((90 * __CG_global_data__m_nproma) * (_for_it_22 - 1)) + (__CG_global_data__m_nproma * (_for_it_23 - 1))) + _for_it_24) - 1)] = z_ekinh_out_0;
                    }

                }

            }

        }
        for (_for_it_25 = nflatlev_jg; (_for_it_25 <= 90); _for_it_25 = (_for_it_25 + 1)) {
            for (_for_it_26 = i_startidx_var_148; (_for_it_26 <= i_endidx_var_149); _for_it_26 = (_for_it_26 + 1)) {

                tmp_index_445 = (__CG_p_patch__CG_cells__m_edge_idx[(((__CG_global_data__m_nproma * (_for_it_22 - 1)) + _for_it_26) - 1)] - OA_z_w_concorr_me_d_0);
                tmp_index_447 = (__CG_p_patch__CG_cells__m_edge_blk[(((__CG_global_data__m_nproma * (_for_it_22 - 1)) + _for_it_26) - 1)] - OA_z_w_concorr_me_d_2);
                tmp_index_457 = (__CG_p_patch__CG_cells__m_edge_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_26) - 1)] - OA_z_w_concorr_me_d_0);
                tmp_index_459 = (__CG_p_patch__CG_cells__m_edge_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_26) - 1)] - OA_z_w_concorr_me_d_2);
                tmp_index_469 = (__CG_p_patch__CG_cells__m_edge_idx[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_26) - 1)] - OA_z_w_concorr_me_d_0);
                tmp_index_471 = (__CG_p_patch__CG_cells__m_edge_blk[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_c) + (__CG_global_data__m_nproma * (_for_it_22 - 1))) + _for_it_26) - 1)] - OA_z_w_concorr_me_d_2);
                {

                    {
                        double p_int_0_in_e_bln_c_s_0 = __CG_p_int__m_e_bln_c_s[(((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * ((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (1 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_26)];
                        double p_int_1_in_e_bln_c_s_0 = __CG_p_int__m_e_bln_c_s[(((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * ((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (2 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_26)];
                        double p_int_2_in_e_bln_c_s_0 = __CG_p_int__m_e_bln_c_s[(((((__CG_p_int__m_SA_e_bln_c_s_d_0 * __CG_p_int__m_SA_e_bln_c_s_d_1) * ((- __CG_p_int__m_SOA_e_bln_c_s_d_2) + _for_it_22)) + (__CG_p_int__m_SA_e_bln_c_s_d_0 * (3 - __CG_p_int__m_SOA_e_bln_c_s_d_1))) - __CG_p_int__m_SOA_e_bln_c_s_d_0) + _for_it_26)];
                        double z_w_concorr_me_0_in_0 = z_w_concorr_me[((((A_z_w_concorr_me_d_0 * A_z_w_concorr_me_d_1) * tmp_index_447) + (A_z_w_concorr_me_d_0 * ((- OA_z_w_concorr_me_d_1) + _for_it_25))) + tmp_index_445)];
                        double z_w_concorr_me_1_in_0 = z_w_concorr_me[((((A_z_w_concorr_me_d_0 * A_z_w_concorr_me_d_1) * tmp_index_459) + (A_z_w_concorr_me_d_0 * ((- OA_z_w_concorr_me_d_1) + _for_it_25))) + tmp_index_457)];
                        double z_w_concorr_me_2_in_0 = z_w_concorr_me[((((A_z_w_concorr_me_d_0 * A_z_w_concorr_me_d_1) * tmp_index_471) + (A_z_w_concorr_me_d_0 * ((- OA_z_w_concorr_me_d_1) + _for_it_25))) + tmp_index_469)];
                        double z_w_concorr_mc_out_0;

                        ///////////////////
                        // Tasklet code (T_l521_c521)
                        z_w_concorr_mc_out_0 = (((p_int_0_in_e_bln_c_s_0 * z_w_concorr_me_0_in_0) + (p_int_1_in_e_bln_c_s_0 * z_w_concorr_me_1_in_0)) + (p_int_2_in_e_bln_c_s_0 * z_w_concorr_me_2_in_0));
                        ///////////////////

                        z_w_concorr_mc[(((__CG_global_data__m_nproma * (_for_it_25 - 1)) + _for_it_26) - 1)] = z_w_concorr_mc_out_0;
                    }

                }

            }

        }
        for (_for_it_27 = (nflatlev_jg + 1); (_for_it_27 <= 90); _for_it_27 = (_for_it_27 + 1)) {
            for (_for_it_28 = i_startidx_var_148; (_for_it_28 <= i_endidx_var_149); _for_it_28 = (_for_it_28 + 1)) {
                {

                    {
                        double p_metrics_0_in_wgtfac_c_0 = __CG_p_metrics__m_wgtfac_c[((((__CG_p_metrics__m_SA_wgtfac_c_d_0 * ((- __CG_p_metrics__m_SOA_wgtfac_c_d_1) + _for_it_27)) + ((91 * __CG_p_metrics__m_SA_wgtfac_c_d_0) * ((- __CG_p_metrics__m_SOA_wgtfac_c_d_2) + _for_it_22))) - __CG_p_metrics__m_SOA_wgtfac_c_d_0) + _for_it_28)];
                        double p_metrics_1_in_wgtfac_c_0 = __CG_p_metrics__m_wgtfac_c[((((__CG_p_metrics__m_SA_wgtfac_c_d_0 * ((- __CG_p_metrics__m_SOA_wgtfac_c_d_1) + _for_it_27)) + ((91 * __CG_p_metrics__m_SA_wgtfac_c_d_0) * ((- __CG_p_metrics__m_SOA_wgtfac_c_d_2) + _for_it_22))) - __CG_p_metrics__m_SOA_wgtfac_c_d_0) + _for_it_28)];
                        double z_w_concorr_mc_0_in_0 = z_w_concorr_mc[(((__CG_global_data__m_nproma * (_for_it_27 - 1)) + _for_it_28) - 1)];
                        double z_w_concorr_mc_1_in_0 = z_w_concorr_mc[(((__CG_global_data__m_nproma * (_for_it_27 - 2)) + _for_it_28) - 1)];
                        double p_diag_out_w_concorr_c_0;

                        ///////////////////
                        // Tasklet code (T_l526_c526)
                        p_diag_out_w_concorr_c_0 = ((p_metrics_0_in_wgtfac_c_0 * z_w_concorr_mc_0_in_0) + ((1.0 - p_metrics_1_in_wgtfac_c_0) * z_w_concorr_mc_1_in_0));
                        ///////////////////

                        __CG_p_diag__m_w_concorr_c[((((__CG_p_diag__m_SA_w_concorr_c_d_0 * ((- __CG_p_diag__m_SOA_w_concorr_c_d_1) + _for_it_27)) + ((91 * __CG_p_diag__m_SA_w_concorr_c_d_0) * ((- __CG_p_diag__m_SOA_w_concorr_c_d_2) + _for_it_22))) - __CG_p_diag__m_SOA_w_concorr_c_d_0) + _for_it_28)] = p_diag_out_w_concorr_c_0;
                    }

                }

            }

        }
        for (_for_it_29 = 1; (_for_it_29 <= 90); _for_it_29 = (_for_it_29 + 1)) {
            for (_for_it_30 = i_startidx_var_148; (_for_it_30 <= i_endidx_var_149); _for_it_30 = (_for_it_30 + 1)) {
                {

                    {
                        double p_prog_0_in_w_0 = __CG_p_prog__m_w[((((__CG_p_prog__m_SA_w_d_0 * ((- __CG_p_prog__m_SOA_w_d_1) + _for_it_29)) + ((91 * __CG_p_prog__m_SA_w_d_0) * ((- __CG_p_prog__m_SOA_w_d_2) + _for_it_22))) - __CG_p_prog__m_SOA_w_d_0) + _for_it_30)];
                        double z_w_con_c_out_0;

                        ///////////////////
                        // Tasklet code (T_l532_c532)
                        z_w_con_c_out_0 = p_prog_0_in_w_0;
                        ///////////////////

                        z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_29 - 1)) + _for_it_30) - 1)] = z_w_con_c_out_0;
                    }

                }

            }

        }
        for (_for_it_31 = i_startidx_var_148; (_for_it_31 <= i_endidx_var_149); _for_it_31 = (_for_it_31 + 1)) {
            {

                {
                    double z_w_con_c_out_0;

                    ///////////////////
                    // Tasklet code (T_l536_c536)
                    z_w_con_c_out_0 = 0.0;
                    ///////////////////

                    z_w_con_c[(((90 * __CG_global_data__m_nproma) + _for_it_31) - 1)] = z_w_con_c_out_0;
                }

            }

        }
        for (_for_it_32 = 90; (_for_it_32 >= (nflatlev_jg + 1)); _for_it_32 = (_for_it_32 + -1)) {
            for (_for_it_33 = i_startidx_var_148; (_for_it_33 <= i_endidx_var_149); _for_it_33 = (_for_it_33 + 1)) {
                {

                    {
                        double p_diag_0_in_w_concorr_c_0 = __CG_p_diag__m_w_concorr_c[((((__CG_p_diag__m_SA_w_concorr_c_d_0 * ((- __CG_p_diag__m_SOA_w_concorr_c_d_1) + _for_it_32)) + ((91 * __CG_p_diag__m_SA_w_concorr_c_d_0) * ((- __CG_p_diag__m_SOA_w_concorr_c_d_2) + _for_it_22))) - __CG_p_diag__m_SOA_w_concorr_c_d_0) + _for_it_33)];
                        double z_w_con_c_0_in_0 = z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_32 - 1)) + _for_it_33) - 1)];
                        double z_w_con_c_out_0;

                        ///////////////////
                        // Tasklet code (T_l540_c540)
                        z_w_con_c_out_0 = (z_w_con_c_0_in_0 - p_diag_0_in_w_concorr_c_0);
                        ///////////////////

                        z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_32 - 1)) + _for_it_33) - 1)] = z_w_con_c_out_0;
                    }

                }

            }

        }
        tmp_arg_9 = (nrdmax_jg - 2);
        for (_for_it_34 = max(3, tmp_arg_9); (_for_it_34 <= (90 - 3)); _for_it_34 = (_for_it_34 + 1)) {
            {

                {
                    int levmask_out_0;

                    ///////////////////
                    // Tasklet code (T_l544_c544)
                    levmask_out_0 = 0;
                    ///////////////////

                    levmask[(((__CG_p_patch__m_nblks_c * (_for_it_34 - 1)) + _for_it_22) - 1)] = levmask_out_0;
                }

            }

        }
        tmp_arg_10 = (nrdmax_jg - 2);
        {

            {
                double maxvcfl_out;

                ///////////////////
                // Tasklet code (T_l546_c546)
                maxvcfl_out = 0;
                ///////////////////

                maxvcfl = maxvcfl_out;
            }

        }
        for (_for_it_35 = max(3, tmp_arg_10); (_for_it_35 <= (90 - 3)); _for_it_35 = (_for_it_35 + 1)) {

            clip_count = 0;
            for (_for_it_36 = i_startidx_var_148; (_for_it_36 <= i_endidx_var_149); _for_it_36 = (_for_it_36 + 1)) {
                {
                    double tmp_call_7;

                    {
                        double z_w_con_c_0_in_0 = z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_36) - 1)];
                        double tmp_call_7_out;

                        ///////////////////
                        // Tasklet code (T_l550_c550)
                        tmp_call_7_out = abs(z_w_con_c_0_in_0);
                        ///////////////////

                        tmp_call_7 = tmp_call_7_out;
                    }
                    {
                        double cfl_w_limit_0_in = cfl_w_limit;
                        double p_metrics_0_in_ddqz_z_half_0 = __CG_p_metrics__m_ddqz_z_half[((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_36)];
                        double tmp_call_7_0_in = tmp_call_7;
                        int cfl_clipping_out_0;

                        ///////////////////
                        // Tasklet code (T_l550_c550)
                        cfl_clipping_out_0 = (tmp_call_7_0_in > (cfl_w_limit_0_in * p_metrics_0_in_ddqz_z_half_0));
                        ///////////////////

                        cfl_clipping[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_36) - 1)] = cfl_clipping_out_0;
                    }
                    {
                        int cfl_clipping_0_in_0 = cfl_clipping[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_36) - 1)];
                        int _if_cond_16_out;

                        ///////////////////
                        // Tasklet code (T_l551_c551)
                        _if_cond_16_out = cfl_clipping_0_in_0;
                        ///////////////////

                        _if_cond_16 = _if_cond_16_out;
                    }

                }
                if ((_if_cond_16 == 1)) {

                    clip_count = (clip_count + 1);

                }

            }
            if (((clip_count == 0) == 1)) {
                continue;
            }
            for (_for_it_37 = i_startidx_var_148; (_for_it_37 <= i_endidx_var_149); _for_it_37 = (_for_it_37 + 1)) {

                _if_cond_18 = cfl_clipping[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_37) - 1)];
                if ((_if_cond_18 == 1)) {
                    {
                        double tmp_call_8;

                        {
                            int levmask_out_0;

                            ///////////////////
                            // Tasklet code (T_l556_c556)
                            levmask_out_0 = 1;
                            ///////////////////

                            levmask[(((__CG_p_patch__m_nblks_c * (_for_it_35 - 1)) + _for_it_22) - 1)] = levmask_out_0;
                        }
                        {
                            double dtime_0_in = dtime;
                            double p_metrics_0_in_ddqz_z_half_0 = __CG_p_metrics__m_ddqz_z_half[((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37)];
                            double z_w_con_c_0_in_0 = z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_37) - 1)];
                            double vcfl_out;

                            ///////////////////
                            // Tasklet code (T_l557_c557)
                            vcfl_out = ((z_w_con_c_0_in_0 * dtime_0_in) / p_metrics_0_in_ddqz_z_half_0);
                            ///////////////////

                            vcfl = vcfl_out;
                        }
                        {
                            double vcfl_0_in = vcfl;
                            double tmp_call_8_out;

                            ///////////////////
                            // Tasklet code (T_l558_c558)
                            tmp_call_8_out = abs(vcfl_0_in);
                            ///////////////////

                            tmp_call_8 = tmp_call_8_out;
                        }
                        {
                            double maxvcfl_0_in = maxvcfl;
                            double tmp_call_8_0_in = tmp_call_8;
                            double maxvcfl_out;

                            ///////////////////
                            // Tasklet code (T_l558_c558)
                            maxvcfl_out = max(maxvcfl_0_in, tmp_call_8_0_in);
                            ///////////////////

                            maxvcfl = maxvcfl_out;
                        }

                    }
                    _if_cond_19 = (vcfl < -0.85);
                    if ((_if_cond_19 == 1)) {
                        {

                            {
                                double dtime_0_in = dtime;
                                double p_metrics_0_in_ddqz_z_half_0 = __CG_p_metrics__m_ddqz_z_half[((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37)];
                                double z_w_con_c_out_0;

                                ///////////////////
                                // Tasklet code (T_l560_c560)
                                z_w_con_c_out_0 = (- ((0.85 * p_metrics_0_in_ddqz_z_half_0) / dtime_0_in));
                                ///////////////////

                                z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_37) - 1)] = z_w_con_c_out_0;
                            }

                        }
                    } else {

                        _if_cond_20 = (vcfl > 0.85);
                        if ((_if_cond_20 == 1)) {
                            {

                                {
                                    double dtime_0_in = dtime;
                                    double p_metrics_0_in_ddqz_z_half_0 = __CG_p_metrics__m_ddqz_z_half[((((__CG_p_metrics__m_SA_ddqz_z_half_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_1) + _for_it_35)) + ((91 * __CG_p_metrics__m_SA_ddqz_z_half_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_half_d_2) + _for_it_22))) - __CG_p_metrics__m_SOA_ddqz_z_half_d_0) + _for_it_37)];
                                    double z_w_con_c_out_0;

                                    ///////////////////
                                    // Tasklet code (T_l562_c562)
                                    z_w_con_c_out_0 = ((0.85 * p_metrics_0_in_ddqz_z_half_0) / dtime_0_in);
                                    ///////////////////

                                    z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_35 - 1)) + _for_it_37) - 1)] = z_w_con_c_out_0;
                                }

                            }
                        }
                    }
                }

            }

        }
        for (_for_it_38 = 1; (_for_it_38 <= 90); _for_it_38 = (_for_it_38 + 1)) {
            for (_for_it_39 = i_startidx_var_148; (_for_it_39 <= i_endidx_var_149); _for_it_39 = (_for_it_39 + 1)) {
                {

                    {
                        double z_w_con_c_0_in_0 = z_w_con_c[(((__CG_global_data__m_nproma * (_for_it_38 - 1)) + _for_it_39) - 1)];
                        double z_w_con_c_1_in_0 = z_w_con_c[(((__CG_global_data__m_nproma * _for_it_38) + _for_it_39) - 1)];
                        double z_w_con_c_full_out_0;

                        ///////////////////
                        // Tasklet code (T_l569_c569)
                        z_w_con_c_full_out_0 = (0.5 * (z_w_con_c_0_in_0 + z_w_con_c_1_in_0));
                        ///////////////////

                        z_w_con_c_full[(((((90 * __CG_global_data__m_nproma) * (_for_it_22 - 1)) + (__CG_global_data__m_nproma * (_for_it_38 - 1))) + _for_it_39) - 1)] = z_w_con_c_full_out_0;
                    }

                }

            }

        }
        {

            {
                double maxvcfl_0_in = maxvcfl;
                double vcflmax_out_0;

                ///////////////////
                // Tasklet code (T_l572_c572)
                vcflmax_out_0 = maxvcfl_0_in;
                ///////////////////

                vcflmax[(_for_it_22 - 1)] = vcflmax_out_0;
            }

        }

    }
    tmp_arg_15 = (nrdmax_jg - 2);
    for (_for_it_46 = max(3, tmp_arg_15); (_for_it_46 <= (90 - 3)); _for_it_46 = (_for_it_46 + 1)) {

        tmp_call_13 = 0;
        for (tmp_parfor_0 = i_startblk_var_146; (tmp_parfor_0 <= i_endblk_var_147); tmp_parfor_0 = (tmp_parfor_0 + 1)) {
            if ((levmask[(((__CG_p_patch__m_nblks_c * (_for_it_46 - 1)) + tmp_parfor_0) - 1)] == 1)) {

                tmp_call_13 = 1;

            }

        }
        {

            {
                int levelmask_out_0;

                ///////////////////
                // Tasklet code (T_l600_c600)
                levelmask_out_0 = tmp_call_13;
                ///////////////////

                levelmask[(_for_it_46 - 1)] = levelmask_out_0;
            }

        }

    }
    i_startblk_var_146 = __CG_p_patch__CG_edges__m_start_block[(10 - SOA_start_block_d_0_edges_p_patch_4)];
    i_endblk_var_147 = __CG_p_patch__CG_edges__m_end_block[((- SOA_end_block_d_0_edges_p_patch_4) - 8)];
    for (_for_it_47 = i_startblk_var_146; (_for_it_47 <= i_endblk_var_147); _for_it_47 = (_for_it_47 + 1)) {

        i_startidx_in_var_91_0 = __CG_p_patch__CG_edges__m_start_index[(10 - SOA_start_index_d_0_edges_p_patch_4)];
        i_endidx_in_var_92_0 = __CG_p_patch__CG_edges__m_end_index[((- SOA_end_index_d_0_edges_p_patch_4) - 8)];
        if ((_for_it_47 != i_startblk_var_146)) {

            i_startidx_var_148 = 1;

        } else {

            i_startidx_var_148 = max(1, i_startidx_in_var_91_0);

        }
        if ((_for_it_47 != i_endblk_var_147)) {

            i_endidx_var_149 = __CG_global_data__m_nproma;

        } else {

            i_endidx_var_149 = i_endidx_in_var_92_0;

        }
        for (_for_it_48 = 1; (_for_it_48 <= 90); _for_it_48 = (_for_it_48 + 1)) {
            for (_for_it_49 = i_startidx_var_148; (_for_it_49 <= i_endidx_var_149); _for_it_49 = (_for_it_49 + 1)) {

                tmp_index_679 = (ntnd - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3);
                tmp_index_698 = (__CG_p_patch__CG_edges__m_cell_idx[((((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_49) - 1)] - 1);
                tmp_index_700 = (__CG_p_patch__CG_edges__m_cell_blk[((((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_49) - 1)] - 1);
                tmp_index_710 = (__CG_p_patch__CG_edges__m_cell_idx[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)] - 1);
                tmp_index_712 = (__CG_p_patch__CG_edges__m_cell_blk[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)] - 1);
                tmp_index_724 = (__CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)] - 1);
                tmp_index_726 = (__CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)] - 1);
                tmp_index_733 = (__CG_p_patch__CG_edges__m_vertex_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_49) - 1)] - 1);
                tmp_index_735 = (__CG_p_patch__CG_edges__m_vertex_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_49) - 1)] - 1);
                tmp_index_745 = (__CG_p_patch__CG_edges__m_cell_idx[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)] - 1);
                tmp_index_747 = (__CG_p_patch__CG_edges__m_cell_blk[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)] - 1);
                tmp_index_757 = (__CG_p_patch__CG_edges__m_cell_idx[((((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_49) - 1)] - 1);
                tmp_index_759 = (__CG_p_patch__CG_edges__m_cell_blk[((((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_49) - 1)] - 1);
                {

                    {
                        double p_diag_0_in_vt_0 = __CG_p_diag__m_vt[((((__CG_p_diag__m_SA_vt_d_0 * ((- __CG_p_diag__m_SOA_vt_d_1) + _for_it_48)) + ((90 * __CG_p_diag__m_SA_vt_d_0) * ((- __CG_p_diag__m_SOA_vt_d_2) + _for_it_47))) - __CG_p_diag__m_SOA_vt_d_0) + _for_it_49)];
                        double p_diag_1_in_vn_ie_0 = __CG_p_diag__m_vn_ie[((((__CG_p_diag__m_SA_vn_ie_d_0 * ((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48)) + ((91 * __CG_p_diag__m_SA_vn_ie_d_0) * ((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49)];
                        double p_diag_2_in_vn_ie_0 = __CG_p_diag__m_vn_ie[(((((91 * __CG_p_diag__m_SA_vn_ie_d_0) * ((- __CG_p_diag__m_SOA_vn_ie_d_2) + _for_it_47)) + (__CG_p_diag__m_SA_vn_ie_d_0 * (((- __CG_p_diag__m_SOA_vn_ie_d_1) + _for_it_48) + 1))) - __CG_p_diag__m_SOA_vn_ie_d_0) + _for_it_49)];
                        double p_int_0_in_c_lin_e_0 = __CG_p_int__m_c_lin_e[(((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * ((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (1 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49)];
                        double p_int_1_in_c_lin_e_0 = __CG_p_int__m_c_lin_e[(((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * ((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (2 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_49)];
                        double p_metrics_0_in_coeff_gradekin_0 = __CG_p_metrics__m_coeff_gradekin[(((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * ((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49)];
                        double p_metrics_1_in_coeff_gradekin_0 = __CG_p_metrics__m_coeff_gradekin[(((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * ((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49)];
                        double p_metrics_2_in_coeff_gradekin_0 = __CG_p_metrics__m_coeff_gradekin[(((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * ((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (2 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49)];
                        double p_metrics_3_in_coeff_gradekin_0 = __CG_p_metrics__m_coeff_gradekin[(((((__CG_p_metrics__m_SA_coeff_gradekin_d_0 * __CG_p_metrics__m_SA_coeff_gradekin_d_1) * ((- __CG_p_metrics__m_SOA_coeff_gradekin_d_2) + _for_it_47)) + (__CG_p_metrics__m_SA_coeff_gradekin_d_0 * (1 - __CG_p_metrics__m_SOA_coeff_gradekin_d_1))) - __CG_p_metrics__m_SOA_coeff_gradekin_d_0) + _for_it_49)];
                        double p_metrics_4_in_ddqz_z_full_e_0 = __CG_p_metrics__m_ddqz_z_full_e[((((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_48)) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47))) - __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_49)];
                        double p_patch_0_in_edges_f_e_0 = __CG_p_patch__CG_edges__m_f_e[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_49) - 1)];
                        double z_ekinh_0_in_0 = z_ekinh[((((90 * __CG_global_data__m_nproma) * tmp_index_700) + (__CG_global_data__m_nproma * (_for_it_48 - 1))) + tmp_index_698)];
                        double z_ekinh_1_in_0 = z_ekinh[((((90 * __CG_global_data__m_nproma) * tmp_index_712) + (__CG_global_data__m_nproma * (_for_it_48 - 1))) + tmp_index_710)];
                        double z_kin_hor_e_0_in_0 = z_kin_hor_e[(((((A_z_kin_hor_e_d_0 * A_z_kin_hor_e_d_1) * ((- OA_z_kin_hor_e_d_2) + _for_it_47)) + (A_z_kin_hor_e_d_0 * ((- OA_z_kin_hor_e_d_1) + _for_it_48))) - OA_z_kin_hor_e_d_0) + _for_it_49)];
                        double z_w_con_c_full_0_in_0 = z_w_con_c_full[((((90 * __CG_global_data__m_nproma) * tmp_index_747) + (__CG_global_data__m_nproma * (_for_it_48 - 1))) + tmp_index_745)];
                        double z_w_con_c_full_1_in_0 = z_w_con_c_full[((((90 * __CG_global_data__m_nproma) * tmp_index_759) + (__CG_global_data__m_nproma * (_for_it_48 - 1))) + tmp_index_757)];
                        double zeta_0_in_0 = zeta[((((90 * __CG_global_data__m_nproma) * tmp_index_726) + (__CG_global_data__m_nproma * (_for_it_48 - 1))) + tmp_index_724)];
                        double zeta_1_in_0 = zeta[((((90 * __CG_global_data__m_nproma) * tmp_index_735) + (__CG_global_data__m_nproma * (_for_it_48 - 1))) + tmp_index_733)];
                        double p_diag_out_ddt_vn_apc_pc_0;

                        ///////////////////
                        // Tasklet code (T_l611_c611)
                        p_diag_out_ddt_vn_apc_pc_0 = (- (((((z_kin_hor_e_0_in_0 * (p_metrics_0_in_coeff_gradekin_0 - p_metrics_1_in_coeff_gradekin_0)) + (p_metrics_2_in_coeff_gradekin_0 * z_ekinh_0_in_0)) - (p_metrics_3_in_coeff_gradekin_0 * z_ekinh_1_in_0)) + (p_diag_0_in_vt_0 * (p_patch_0_in_edges_f_e_0 + (0.5 * (zeta_0_in_0 + zeta_1_in_0))))) + ((((p_int_0_in_c_lin_e_0 * z_w_con_c_full_0_in_0) + (p_int_1_in_c_lin_e_0 * z_w_con_c_full_1_in_0)) * (p_diag_1_in_vn_ie_0 - p_diag_2_in_vn_ie_0)) / p_metrics_4_in_ddqz_z_full_e_0)));
                        ///////////////////

                        __CG_p_diag__m_ddt_vn_apc_pc[(((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * tmp_index_679) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_48))) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47))) - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_49)] = p_diag_out_ddt_vn_apc_pc_0;
                    }

                }

            }

        }
        tmp_arg_17 = (nrdmax_jg - 2);
        for (_for_it_52 = max(3, tmp_arg_17); (_for_it_52 <= (90 - 4)); _for_it_52 = (_for_it_52 + 1)) {

            _if_cond_28 = (levelmask[(_for_it_52 - 1)] || levelmask[_for_it_52]);
            if ((_if_cond_28 == 1)) {
                for (_for_it_53 = i_startidx_var_148; (_for_it_53 <= i_endidx_var_149); _for_it_53 = (_for_it_53 + 1)) {

                    tmp_index_881 = (__CG_p_patch__CG_edges__m_cell_idx[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)] - 1);
                    tmp_index_883 = (__CG_p_patch__CG_edges__m_cell_blk[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)] - 1);
                    tmp_index_893 = (__CG_p_patch__CG_edges__m_cell_idx[((((SA_cell_idx_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - 1);
                    tmp_index_895 = (__CG_p_patch__CG_edges__m_cell_blk[((((SA_cell_blk_d_1_edges_p_patch_4 * __CG_global_data__m_nproma) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - 1);
                    {
                        double tmp_call_15;

                        {
                            double p_int_0_in_c_lin_e_0 = __CG_p_int__m_c_lin_e[(((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * ((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (1 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53)];
                            double p_int_1_in_c_lin_e_0 = __CG_p_int__m_c_lin_e[(((((__CG_p_int__m_SA_c_lin_e_d_0 * __CG_p_int__m_SA_c_lin_e_d_1) * ((- __CG_p_int__m_SOA_c_lin_e_d_2) + _for_it_47)) + (__CG_p_int__m_SA_c_lin_e_d_0 * (2 - __CG_p_int__m_SOA_c_lin_e_d_1))) - __CG_p_int__m_SOA_c_lin_e_d_0) + _for_it_53)];
                            double z_w_con_c_full_0_in_0 = z_w_con_c_full[((((90 * __CG_global_data__m_nproma) * tmp_index_883) + (__CG_global_data__m_nproma * (_for_it_52 - 1))) + tmp_index_881)];
                            double z_w_con_c_full_1_in_0 = z_w_con_c_full[((((90 * __CG_global_data__m_nproma) * tmp_index_895) + (__CG_global_data__m_nproma * (_for_it_52 - 1))) + tmp_index_893)];
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
                            double p_metrics_0_in_ddqz_z_full_e_0 = __CG_p_metrics__m_ddqz_z_full_e[((((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52)) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47))) - __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53)];
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
                        tmp_index_905 = (ntnd - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3);
                        tmp_index_909 = (ntnd - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3);
                        tmp_index_927 = (__CG_p_patch__CG_edges__m_quad_idx[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                        tmp_index_929 = (__CG_p_patch__CG_edges__m_quad_blk[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                        tmp_index_939 = (__CG_p_patch__CG_edges__m_quad_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                        tmp_index_941 = (__CG_p_patch__CG_edges__m_quad_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                        tmp_index_951 = (__CG_p_patch__CG_edges__m_quad_idx[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                        tmp_index_953 = (__CG_p_patch__CG_edges__m_quad_blk[(((((2 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                        tmp_index_963 = (__CG_p_patch__CG_edges__m_quad_idx[(((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_0);
                        tmp_index_965 = (__CG_p_patch__CG_edges__m_quad_blk[(((((3 * __CG_global_data__m_nproma) * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - __CG_p_prog__m_SOA_vn_d_2);
                        tmp_index_976 = (__CG_p_patch__CG_edges__m_vertex_idx[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - 1);
                        tmp_index_978 = (__CG_p_patch__CG_edges__m_vertex_blk[((((__CG_global_data__m_nproma * __CG_p_patch__m_nblks_e) + (__CG_global_data__m_nproma * (_for_it_47 - 1))) + _for_it_53) - 1)] - 1);
                        tmp_index_985 = (__CG_p_patch__CG_edges__m_vertex_idx[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)] - 1);
                        tmp_index_987 = (__CG_p_patch__CG_edges__m_vertex_blk[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)] - 1);
                        {
                            double difcoef;
                            double tmp_call_16;
                            double tmp_arg_18;
                            double tmp_arg_19;

                            {
                                double cfl_w_limit_0_in = cfl_w_limit;
                                double dtime_0_in = dtime;
                                double tmp_arg_18_out;

                                ///////////////////
                                // Tasklet code (T_l642_c642)
                                tmp_arg_18_out = (0.85 - (cfl_w_limit_0_in * dtime_0_in));
                                ///////////////////

                                tmp_arg_18 = tmp_arg_18_out;
                            }
                            {
                                double cfl_w_limit_0_in = cfl_w_limit;
                                double dtime_0_in = dtime;
                                double dtime_1_in = dtime;
                                double p_metrics_0_in_ddqz_z_full_e_0 = __CG_p_metrics__m_ddqz_z_full_e[((((__CG_p_metrics__m_SA_ddqz_z_full_e_d_0 * ((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1) + _for_it_52)) + ((90 * __CG_p_metrics__m_SA_ddqz_z_full_e_d_0) * ((- __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2) + _for_it_47))) - __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0) + _for_it_53)];
                                double tmp_call_17_0_in = tmp_call_17;
                                double tmp_arg_19_out;

                                ///////////////////
                                // Tasklet code (T_l642_c642)
                                tmp_arg_19_out = (((tmp_call_17_0_in * dtime_0_in) / p_metrics_0_in_ddqz_z_full_e_0) - (cfl_w_limit_0_in * dtime_1_in));
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

                                difcoef = difcoef_out;
                            }
                            {
                                double difcoef_0_in = difcoef;
                                double p_diag_0_in_ddt_vn_apc_pc_0 = __CG_p_diag__m_ddt_vn_apc_pc[(((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * tmp_index_909) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52))) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47))) - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53)];
                                double p_int_0_in_geofac_grdiv_0 = __CG_p_int__m_geofac_grdiv[(((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * ((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (1 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53)];
                                double p_int_1_in_geofac_grdiv_0 = __CG_p_int__m_geofac_grdiv[(((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * ((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (2 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53)];
                                double p_int_2_in_geofac_grdiv_0 = __CG_p_int__m_geofac_grdiv[(((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * ((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (3 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53)];
                                double p_int_3_in_geofac_grdiv_0 = __CG_p_int__m_geofac_grdiv[(((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * ((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (4 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53)];
                                double p_int_4_in_geofac_grdiv_0 = __CG_p_int__m_geofac_grdiv[(((((__CG_p_int__m_SA_geofac_grdiv_d_0 * __CG_p_int__m_SA_geofac_grdiv_d_1) * ((- __CG_p_int__m_SOA_geofac_grdiv_d_2) + _for_it_47)) + (__CG_p_int__m_SA_geofac_grdiv_d_0 * (5 - __CG_p_int__m_SOA_geofac_grdiv_d_1))) - __CG_p_int__m_SOA_geofac_grdiv_d_0) + _for_it_53)];
                                double p_patch_0_in_edges_area_edge_0 = __CG_p_patch__CG_edges__m_area_edge[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)];
                                double p_patch_1_in_edges_tangent_orientation_0 = __CG_p_patch__CG_edges__m_tangent_orientation[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)];
                                double p_patch_2_in_edges_inv_primal_edge_length_0 = __CG_p_patch__CG_edges__m_inv_primal_edge_length[(((__CG_global_data__m_nproma * (_for_it_47 - 1)) + _for_it_53) - 1)];
                                double p_prog_0_in_vn_0 = __CG_p_prog__m_vn[((((__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52)) + ((90 * __CG_p_prog__m_SA_vn_d_0) * ((- __CG_p_prog__m_SOA_vn_d_2) + _for_it_47))) - __CG_p_prog__m_SOA_vn_d_0) + _for_it_53)];
                                double p_prog_1_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_929) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52))) + tmp_index_927)];
                                double p_prog_2_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_941) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52))) + tmp_index_939)];
                                double p_prog_3_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_953) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52))) + tmp_index_951)];
                                double p_prog_4_in_vn_0 = __CG_p_prog__m_vn[((((90 * __CG_p_prog__m_SA_vn_d_0) * tmp_index_965) + (__CG_p_prog__m_SA_vn_d_0 * ((- __CG_p_prog__m_SOA_vn_d_1) + _for_it_52))) + tmp_index_963)];
                                double zeta_0_in_0 = zeta[((((90 * __CG_global_data__m_nproma) * tmp_index_978) + (__CG_global_data__m_nproma * (_for_it_52 - 1))) + tmp_index_976)];
                                double zeta_1_in_0 = zeta[((((90 * __CG_global_data__m_nproma) * tmp_index_987) + (__CG_global_data__m_nproma * (_for_it_52 - 1))) + tmp_index_985)];
                                double p_diag_out_ddt_vn_apc_pc_0;

                                ///////////////////
                                // Tasklet code (T_l643_c643)
                                p_diag_out_ddt_vn_apc_pc_0 = (p_diag_0_in_ddt_vn_apc_pc_0 + ((difcoef_0_in * p_patch_0_in_edges_area_edge_0) * ((((((p_int_0_in_geofac_grdiv_0 * p_prog_0_in_vn_0) + (p_int_1_in_geofac_grdiv_0 * p_prog_1_in_vn_0)) + (p_int_2_in_geofac_grdiv_0 * p_prog_2_in_vn_0)) + (p_int_3_in_geofac_grdiv_0 * p_prog_3_in_vn_0)) + (p_int_4_in_geofac_grdiv_0 * p_prog_4_in_vn_0)) + ((p_patch_1_in_edges_tangent_orientation_0 * p_patch_2_in_edges_inv_primal_edge_length_0) * (zeta_0_in_0 - zeta_1_in_0)))));
                                ///////////////////

                                __CG_p_diag__m_ddt_vn_apc_pc[(((((((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2) * tmp_index_905) + (__CG_p_diag__m_SA_ddt_vn_apc_pc_d_0 * ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1) + _for_it_52))) + ((90 * __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0) * ((- __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2) + _for_it_47))) - __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0) + _for_it_53)] = p_diag_out_ddt_vn_apc_pc_0;
                            }

                        }
                    }

                }
            }

        }

    }
    i_startblk_var_146 = __CG_p_patch__CG_cells__m_start_block[(4 - SOA_start_block_d_0_cells_p_patch_2)];
    i_endblk_var_147 = __CG_p_patch__CG_cells__m_end_block[((- SOA_end_block_d_0_cells_p_patch_2) - 4)];
    tmp_call_18 = -1.7976931348623157e+308;
    for (tmp_parfor_0 = i_startblk_var_146; (tmp_parfor_0 <= i_endblk_var_147); tmp_parfor_0 = (tmp_parfor_0 + 1)) {
        if ((vcflmax[(tmp_parfor_0 - 1)] > tmp_call_18)) {

            tmp_call_18 = vcflmax[(tmp_parfor_0 - 1)];

        }

    }
    {
        double max_vcfl_dyn_var_152;

        {
            double max_vcfl_dyn_var_152_out;

            ///////////////////
            // Tasklet code (T_l652_c652)
            max_vcfl_dyn_var_152_out = max(0.0, tmp_call_18);
            ///////////////////

            max_vcfl_dyn_var_152 = max_vcfl_dyn_var_152_out;
        }
        {
            double max_vcfl_dyn_var_152_0_in = max_vcfl_dyn_var_152;
            double p_diag_out_max_vcfl_dyn;

            ///////////////////
            // Tasklet code (T_l653_c653)
            p_diag_out_max_vcfl_dyn = max_vcfl_dyn_var_152_0_in;
            ///////////////////

            __CG_p_diag__m_max_vcfl_dyn[0] = p_diag_out_max_vcfl_dyn;
        }

    }
    delete[] z_w_concorr_mc;
    delete[] z_w_con_c;
    delete[] z_w_con_c_full;
    delete[] zeta;
    delete[] z_ekinh;
    delete[] vcflmax;
    delete[] levmask;
    delete[] levelmask;
    delete[] cfl_clipping;
}

DACE_EXPORTED void __program_velocity_no_nproma_if_prop_lvn_only_1_istep_1(velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state, int * __restrict__ __CG_global_data__m_nflatlev, int * __restrict__ __CG_global_data__m_nrdmax, double * __restrict__ __CG_p_diag__m_ddt_vn_apc_pc, double * __restrict__ __CG_p_diag__m_ddt_w_adv_pc, double * __restrict__ __CG_p_diag__m_max_vcfl_dyn, double * __restrict__ __CG_p_diag__m_vn_ie, double * __restrict__ __CG_p_diag__m_vt, double * __restrict__ __CG_p_diag__m_w_concorr_c, double * __restrict__ __CG_p_int__m_c_lin_e, double * __restrict__ __CG_p_int__m_cells_aw_verts, double * __restrict__ __CG_p_int__m_e_bln_c_s, double * __restrict__ __CG_p_int__m_geofac_grdiv, double * __restrict__ __CG_p_int__m_geofac_n2s, double * __restrict__ __CG_p_int__m_geofac_rot, double * __restrict__ __CG_p_int__m_rbf_vec_coeff_e, double * __restrict__ __CG_p_metrics__m_coeff1_dwdz, double * __restrict__ __CG_p_metrics__m_coeff2_dwdz, double * __restrict__ __CG_p_metrics__m_coeff_gradekin, double * __restrict__ __CG_p_metrics__m_ddqz_z_full_e, double * __restrict__ __CG_p_metrics__m_ddqz_z_half, double * __restrict__ __CG_p_metrics__m_ddxn_z_full, double * __restrict__ __CG_p_metrics__m_ddxt_z_full, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_gradh_mc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_ifc, double * __restrict__ __CG_p_metrics__m_deepatmo_invr_mc, double * __restrict__ __CG_p_metrics__m_wgtfac_c, double * __restrict__ __CG_p_metrics__m_wgtfac_e, double * __restrict__ __CG_p_metrics__m_wgtfacq_e, int * __restrict__ __CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, double * __restrict__ __CG_p_patch__CG_cells__m_area, int * __restrict__ __CG_p_patch__CG_cells__m_edge_blk, int * __restrict__ __CG_p_patch__CG_cells__m_edge_idx, int * __restrict__ __CG_p_patch__CG_cells__m_end_block, int * __restrict__ __CG_p_patch__CG_cells__m_end_index, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_blk, int * __restrict__ __CG_p_patch__CG_cells__m_neighbor_idx, int * __restrict__ __CG_p_patch__CG_cells__m_start_block, int * __restrict__ __CG_p_patch__CG_cells__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_area_edge, int * __restrict__ __CG_p_patch__CG_edges__m_cell_blk, int * __restrict__ __CG_p_patch__CG_edges__m_cell_idx, int * __restrict__ __CG_p_patch__CG_edges__m_end_block, int * __restrict__ __CG_p_patch__CG_edges__m_end_index, double * __restrict__ __CG_p_patch__CG_edges__m_f_e, double * __restrict__ __CG_p_patch__CG_edges__m_fn_e, double * __restrict__ __CG_p_patch__CG_edges__m_ft_e, double * __restrict__ __CG_p_patch__CG_edges__m_inv_dual_edge_length, double * __restrict__ __CG_p_patch__CG_edges__m_inv_primal_edge_length, int * __restrict__ __CG_p_patch__CG_edges__m_quad_blk, int * __restrict__ __CG_p_patch__CG_edges__m_quad_idx, int * __restrict__ __CG_p_patch__CG_edges__m_start_block, int * __restrict__ __CG_p_patch__CG_edges__m_start_index, double * __restrict__ __CG_p_patch__CG_edges__m_tangent_orientation, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_blk, int * __restrict__ __CG_p_patch__CG_edges__m_vertex_idx, int * __restrict__ __CG_p_patch__CG_verts__m_cell_blk, int * __restrict__ __CG_p_patch__CG_verts__m_cell_idx, int * __restrict__ __CG_p_patch__CG_verts__m_edge_blk, int * __restrict__ __CG_p_patch__CG_verts__m_edge_idx, int * __restrict__ __CG_p_patch__CG_verts__m_end_block, int * __restrict__ __CG_p_patch__CG_verts__m_end_index, int * __restrict__ __CG_p_patch__CG_verts__m_start_block, int * __restrict__ __CG_p_patch__CG_verts__m_start_index, double * __restrict__ __CG_p_prog__m_vn, double * __restrict__ __CG_p_prog__m_w, double * __restrict__ z_kin_hor_e, double * __restrict__ z_vt_ie, double * __restrict__ z_w_concorr_me, int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_i_am_accel_node, int __CG_global_data__m_lextra_diffu, int __CG_global_data__m_nproma, int __CG_global_data__m_timer_intp, int __CG_global_data__m_timer_solve_nh_veltend, int __CG_global_data__m_timers_level, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2, double dt_linintp_ubc, double dtime, int istep, int ldeepatmo, int lvn_only, int ntnd)
{
    __program_velocity_no_nproma_if_prop_lvn_only_1_istep_1_internal(__state, __CG_global_data__m_nflatlev, __CG_global_data__m_nrdmax, __CG_p_diag__m_ddt_vn_apc_pc, __CG_p_diag__m_ddt_w_adv_pc, __CG_p_diag__m_max_vcfl_dyn, __CG_p_diag__m_vn_ie, __CG_p_diag__m_vt, __CG_p_diag__m_w_concorr_c, __CG_p_int__m_c_lin_e, __CG_p_int__m_cells_aw_verts, __CG_p_int__m_e_bln_c_s, __CG_p_int__m_geofac_grdiv, __CG_p_int__m_geofac_n2s, __CG_p_int__m_geofac_rot, __CG_p_int__m_rbf_vec_coeff_e, __CG_p_metrics__m_coeff1_dwdz, __CG_p_metrics__m_coeff2_dwdz, __CG_p_metrics__m_coeff_gradekin, __CG_p_metrics__m_ddqz_z_full_e, __CG_p_metrics__m_ddqz_z_half, __CG_p_metrics__m_ddxn_z_full, __CG_p_metrics__m_ddxt_z_full, __CG_p_metrics__m_deepatmo_gradh_ifc, __CG_p_metrics__m_deepatmo_gradh_mc, __CG_p_metrics__m_deepatmo_invr_ifc, __CG_p_metrics__m_deepatmo_invr_mc, __CG_p_metrics__m_wgtfac_c, __CG_p_metrics__m_wgtfac_e, __CG_p_metrics__m_wgtfacq_e, __CG_p_patch__CG_cells__CG_decomp_info__m_owner_mask, __CG_p_patch__CG_cells__m_area, __CG_p_patch__CG_cells__m_edge_blk, __CG_p_patch__CG_cells__m_edge_idx, __CG_p_patch__CG_cells__m_end_block, __CG_p_patch__CG_cells__m_end_index, __CG_p_patch__CG_cells__m_neighbor_blk, __CG_p_patch__CG_cells__m_neighbor_idx, __CG_p_patch__CG_cells__m_start_block, __CG_p_patch__CG_cells__m_start_index, __CG_p_patch__CG_edges__m_area_edge, __CG_p_patch__CG_edges__m_cell_blk, __CG_p_patch__CG_edges__m_cell_idx, __CG_p_patch__CG_edges__m_end_block, __CG_p_patch__CG_edges__m_end_index, __CG_p_patch__CG_edges__m_f_e, __CG_p_patch__CG_edges__m_fn_e, __CG_p_patch__CG_edges__m_ft_e, __CG_p_patch__CG_edges__m_inv_dual_edge_length, __CG_p_patch__CG_edges__m_inv_primal_edge_length, __CG_p_patch__CG_edges__m_quad_blk, __CG_p_patch__CG_edges__m_quad_idx, __CG_p_patch__CG_edges__m_start_block, __CG_p_patch__CG_edges__m_start_index, __CG_p_patch__CG_edges__m_tangent_orientation, __CG_p_patch__CG_edges__m_vertex_blk, __CG_p_patch__CG_edges__m_vertex_idx, __CG_p_patch__CG_verts__m_cell_blk, __CG_p_patch__CG_verts__m_cell_idx, __CG_p_patch__CG_verts__m_edge_blk, __CG_p_patch__CG_verts__m_edge_idx, __CG_p_patch__CG_verts__m_end_block, __CG_p_patch__CG_verts__m_end_index, __CG_p_patch__CG_verts__m_start_block, __CG_p_patch__CG_verts__m_start_index, __CG_p_prog__m_vn, __CG_p_prog__m_w, z_kin_hor_e, z_vt_ie, z_w_concorr_me, A_z_kin_hor_e_d_0, A_z_kin_hor_e_d_1, A_z_kin_hor_e_d_2, A_z_vt_ie_d_0, A_z_vt_ie_d_1, A_z_vt_ie_d_2, A_z_w_concorr_me_d_0, A_z_w_concorr_me_d_1, A_z_w_concorr_me_d_2, OA_z_kin_hor_e_d_0, OA_z_kin_hor_e_d_1, OA_z_kin_hor_e_d_2, OA_z_vt_ie_d_0, OA_z_vt_ie_d_1, OA_z_vt_ie_d_2, OA_z_w_concorr_me_d_0, OA_z_w_concorr_me_d_1, OA_z_w_concorr_me_d_2, SA_area_d_0_cells_p_patch_2, SA_area_d_1_cells_p_patch_2, SA_cell_blk_d_1_edges_p_patch_4, SA_cell_blk_d_1_verts_p_patch_5, SA_cell_blk_d_2_edges_p_patch_4, SA_cell_blk_d_2_verts_p_patch_5, SA_cell_idx_d_1_edges_p_patch_4, SA_cell_idx_d_1_verts_p_patch_5, SA_cell_idx_d_2_edges_p_patch_4, SA_cell_idx_d_2_verts_p_patch_5, SA_edge_blk_d_2_cells_p_patch_2, SA_edge_blk_d_2_verts_p_patch_5, SA_edge_idx_d_2_cells_p_patch_2, SA_edge_idx_d_2_verts_p_patch_5, SA_end_block_d_0_cells_p_patch_2, SA_end_block_d_0_edges_p_patch_4, SA_end_block_d_0_verts_p_patch_5, SA_end_index_d_0_cells_p_patch_2, SA_end_index_d_0_edges_p_patch_4, SA_end_index_d_0_verts_p_patch_5, SA_neighbor_blk_d_2_cells_p_patch_2, SA_neighbor_idx_d_2_cells_p_patch_2, SA_quad_blk_d_2_edges_p_patch_4, SA_quad_idx_d_2_edges_p_patch_4, SA_start_block_d_0_cells_p_patch_2, SA_start_block_d_0_edges_p_patch_4, SA_start_block_d_0_verts_p_patch_5, SA_start_index_d_0_cells_p_patch_2, SA_start_index_d_0_edges_p_patch_4, SA_start_index_d_0_verts_p_patch_5, SA_vertex_blk_d_2_edges_p_patch_4, SA_vertex_idx_d_2_edges_p_patch_4, SOA_area_d_0_cells_p_patch_2, SOA_area_d_1_cells_p_patch_2, SOA_end_block_d_0_cells_p_patch_2, SOA_end_block_d_0_edges_p_patch_4, SOA_end_block_d_0_verts_p_patch_5, SOA_end_index_d_0_cells_p_patch_2, SOA_end_index_d_0_edges_p_patch_4, SOA_end_index_d_0_verts_p_patch_5, SOA_start_block_d_0_cells_p_patch_2, SOA_start_block_d_0_edges_p_patch_4, SOA_start_block_d_0_verts_p_patch_5, SOA_start_index_d_0_cells_p_patch_2, SOA_start_index_d_0_edges_p_patch_4, SOA_start_index_d_0_verts_p_patch_5, __CG_global_data__m_i_am_accel_node, __CG_global_data__m_lextra_diffu, __CG_global_data__m_nproma, __CG_global_data__m_timer_intp, __CG_global_data__m_timer_solve_nh_veltend, __CG_global_data__m_timers_level, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, __CG_p_diag__m_SA_vn_ie_d_0, __CG_p_diag__m_SA_vn_ie_d_2, __CG_p_diag__m_SA_vt_d_0, __CG_p_diag__m_SA_vt_d_2, __CG_p_diag__m_SA_w_concorr_c_d_0, __CG_p_diag__m_SA_w_concorr_c_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, __CG_p_diag__m_SOA_vn_ie_d_0, __CG_p_diag__m_SOA_vn_ie_d_1, __CG_p_diag__m_SOA_vn_ie_d_2, __CG_p_diag__m_SOA_vt_d_0, __CG_p_diag__m_SOA_vt_d_1, __CG_p_diag__m_SOA_vt_d_2, __CG_p_diag__m_SOA_w_concorr_c_d_0, __CG_p_diag__m_SOA_w_concorr_c_d_1, __CG_p_diag__m_SOA_w_concorr_c_d_2, __CG_p_int__m_SA_c_lin_e_d_0, __CG_p_int__m_SA_c_lin_e_d_1, __CG_p_int__m_SA_c_lin_e_d_2, __CG_p_int__m_SA_cells_aw_verts_d_0, __CG_p_int__m_SA_cells_aw_verts_d_1, __CG_p_int__m_SA_cells_aw_verts_d_2, __CG_p_int__m_SA_e_bln_c_s_d_0, __CG_p_int__m_SA_e_bln_c_s_d_1, __CG_p_int__m_SA_e_bln_c_s_d_2, __CG_p_int__m_SA_geofac_grdiv_d_0, __CG_p_int__m_SA_geofac_grdiv_d_1, __CG_p_int__m_SA_geofac_grdiv_d_2, __CG_p_int__m_SA_geofac_n2s_d_0, __CG_p_int__m_SA_geofac_n2s_d_1, __CG_p_int__m_SA_geofac_n2s_d_2, __CG_p_int__m_SA_geofac_rot_d_0, __CG_p_int__m_SA_geofac_rot_d_1, __CG_p_int__m_SA_geofac_rot_d_2, __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, __CG_p_int__m_SOA_c_lin_e_d_0, __CG_p_int__m_SOA_c_lin_e_d_1, __CG_p_int__m_SOA_c_lin_e_d_2, __CG_p_int__m_SOA_cells_aw_verts_d_0, __CG_p_int__m_SOA_cells_aw_verts_d_1, __CG_p_int__m_SOA_cells_aw_verts_d_2, __CG_p_int__m_SOA_e_bln_c_s_d_0, __CG_p_int__m_SOA_e_bln_c_s_d_1, __CG_p_int__m_SOA_e_bln_c_s_d_2, __CG_p_int__m_SOA_geofac_grdiv_d_0, __CG_p_int__m_SOA_geofac_grdiv_d_1, __CG_p_int__m_SOA_geofac_grdiv_d_2, __CG_p_int__m_SOA_geofac_n2s_d_0, __CG_p_int__m_SOA_geofac_n2s_d_1, __CG_p_int__m_SOA_geofac_n2s_d_2, __CG_p_int__m_SOA_geofac_rot_d_0, __CG_p_int__m_SOA_geofac_rot_d_1, __CG_p_int__m_SOA_geofac_rot_d_2, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, __CG_p_metrics__m_SA_coeff1_dwdz_d_0, __CG_p_metrics__m_SA_coeff1_dwdz_d_2, __CG_p_metrics__m_SA_coeff2_dwdz_d_0, __CG_p_metrics__m_SA_coeff2_dwdz_d_2, __CG_p_metrics__m_SA_coeff_gradekin_d_0, __CG_p_metrics__m_SA_coeff_gradekin_d_1, __CG_p_metrics__m_SA_coeff_gradekin_d_2, __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, __CG_p_metrics__m_SA_ddqz_z_half_d_0, __CG_p_metrics__m_SA_ddqz_z_half_d_2, __CG_p_metrics__m_SA_ddxn_z_full_d_0, __CG_p_metrics__m_SA_ddxn_z_full_d_2, __CG_p_metrics__m_SA_ddxt_z_full_d_0, __CG_p_metrics__m_SA_ddxt_z_full_d_2, __CG_p_metrics__m_SA_wgtfac_c_d_0, __CG_p_metrics__m_SA_wgtfac_c_d_2, __CG_p_metrics__m_SA_wgtfac_e_d_0, __CG_p_metrics__m_SA_wgtfac_e_d_2, __CG_p_metrics__m_SA_wgtfacq_e_d_0, __CG_p_metrics__m_SA_wgtfacq_e_d_1, __CG_p_metrics__m_SA_wgtfacq_e_d_2, __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, __CG_p_metrics__m_SOA_coeff_gradekin_d_0, __CG_p_metrics__m_SOA_coeff_gradekin_d_1, __CG_p_metrics__m_SOA_coeff_gradekin_d_2, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, __CG_p_metrics__m_SOA_ddqz_z_half_d_0, __CG_p_metrics__m_SOA_ddqz_z_half_d_1, __CG_p_metrics__m_SOA_ddqz_z_half_d_2, __CG_p_metrics__m_SOA_ddxn_z_full_d_0, __CG_p_metrics__m_SOA_ddxn_z_full_d_1, __CG_p_metrics__m_SOA_ddxn_z_full_d_2, __CG_p_metrics__m_SOA_ddxt_z_full_d_0, __CG_p_metrics__m_SOA_ddxt_z_full_d_1, __CG_p_metrics__m_SOA_ddxt_z_full_d_2, __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, __CG_p_metrics__m_SOA_wgtfac_c_d_0, __CG_p_metrics__m_SOA_wgtfac_c_d_1, __CG_p_metrics__m_SOA_wgtfac_c_d_2, __CG_p_metrics__m_SOA_wgtfac_e_d_0, __CG_p_metrics__m_SOA_wgtfac_e_d_1, __CG_p_metrics__m_SOA_wgtfac_e_d_2, __CG_p_metrics__m_SOA_wgtfacq_e_d_0, __CG_p_metrics__m_SOA_wgtfacq_e_d_1, __CG_p_metrics__m_SOA_wgtfacq_e_d_2, __CG_p_patch__m_nblks_c, __CG_p_patch__m_nblks_e, __CG_p_patch__m_nblks_v, __CG_p_prog__m_SA_vn_d_0, __CG_p_prog__m_SA_vn_d_2, __CG_p_prog__m_SA_w_d_0, __CG_p_prog__m_SA_w_d_2, __CG_p_prog__m_SOA_vn_d_0, __CG_p_prog__m_SOA_vn_d_1, __CG_p_prog__m_SOA_vn_d_2, __CG_p_prog__m_SOA_w_d_0, __CG_p_prog__m_SOA_w_d_1, __CG_p_prog__m_SOA_w_d_2, dt_linintp_ubc, dtime, istep, ldeepatmo, lvn_only, ntnd);
}

DACE_EXPORTED velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__dace_init_velocity_no_nproma_if_prop_lvn_only_1_istep_1(int A_z_kin_hor_e_d_0, int A_z_kin_hor_e_d_1, int A_z_kin_hor_e_d_2, int A_z_vt_ie_d_0, int A_z_vt_ie_d_1, int A_z_vt_ie_d_2, int A_z_w_concorr_me_d_0, int A_z_w_concorr_me_d_1, int A_z_w_concorr_me_d_2, int OA_z_kin_hor_e_d_0, int OA_z_kin_hor_e_d_1, int OA_z_kin_hor_e_d_2, int OA_z_vt_ie_d_0, int OA_z_vt_ie_d_1, int OA_z_vt_ie_d_2, int OA_z_w_concorr_me_d_0, int OA_z_w_concorr_me_d_1, int OA_z_w_concorr_me_d_2, int SA_area_d_0_cells_p_patch_2, int SA_area_d_1_cells_p_patch_2, int SA_cell_blk_d_1_edges_p_patch_4, int SA_cell_blk_d_1_verts_p_patch_5, int SA_cell_blk_d_2_edges_p_patch_4, int SA_cell_blk_d_2_verts_p_patch_5, int SA_cell_idx_d_1_edges_p_patch_4, int SA_cell_idx_d_1_verts_p_patch_5, int SA_cell_idx_d_2_edges_p_patch_4, int SA_cell_idx_d_2_verts_p_patch_5, int SA_edge_blk_d_2_cells_p_patch_2, int SA_edge_blk_d_2_verts_p_patch_5, int SA_edge_idx_d_2_cells_p_patch_2, int SA_edge_idx_d_2_verts_p_patch_5, int SA_end_block_d_0_cells_p_patch_2, int SA_end_block_d_0_edges_p_patch_4, int SA_end_block_d_0_verts_p_patch_5, int SA_end_index_d_0_cells_p_patch_2, int SA_end_index_d_0_edges_p_patch_4, int SA_end_index_d_0_verts_p_patch_5, int SA_neighbor_blk_d_2_cells_p_patch_2, int SA_neighbor_idx_d_2_cells_p_patch_2, int SA_quad_blk_d_2_edges_p_patch_4, int SA_quad_idx_d_2_edges_p_patch_4, int SA_start_block_d_0_cells_p_patch_2, int SA_start_block_d_0_edges_p_patch_4, int SA_start_block_d_0_verts_p_patch_5, int SA_start_index_d_0_cells_p_patch_2, int SA_start_index_d_0_edges_p_patch_4, int SA_start_index_d_0_verts_p_patch_5, int SA_vertex_blk_d_2_edges_p_patch_4, int SA_vertex_idx_d_2_edges_p_patch_4, int SOA_area_d_0_cells_p_patch_2, int SOA_area_d_1_cells_p_patch_2, int SOA_end_block_d_0_cells_p_patch_2, int SOA_end_block_d_0_edges_p_patch_4, int SOA_end_block_d_0_verts_p_patch_5, int SOA_end_index_d_0_cells_p_patch_2, int SOA_end_index_d_0_edges_p_patch_4, int SOA_end_index_d_0_verts_p_patch_5, int SOA_start_block_d_0_cells_p_patch_2, int SOA_start_block_d_0_edges_p_patch_4, int SOA_start_block_d_0_verts_p_patch_5, int SOA_start_index_d_0_cells_p_patch_2, int SOA_start_index_d_0_edges_p_patch_4, int SOA_start_index_d_0_verts_p_patch_5, int __CG_global_data__m_nproma, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SA_vn_ie_d_0, int __CG_p_diag__m_SA_vn_ie_d_2, int __CG_p_diag__m_SA_vt_d_0, int __CG_p_diag__m_SA_vt_d_2, int __CG_p_diag__m_SA_w_concorr_c_d_0, int __CG_p_diag__m_SA_w_concorr_c_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_0, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_1, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_2, int __CG_p_diag__m_SOA_ddt_vn_apc_pc_d_3, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_0, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_1, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_2, int __CG_p_diag__m_SOA_ddt_w_adv_pc_d_3, int __CG_p_diag__m_SOA_vn_ie_d_0, int __CG_p_diag__m_SOA_vn_ie_d_1, int __CG_p_diag__m_SOA_vn_ie_d_2, int __CG_p_diag__m_SOA_vt_d_0, int __CG_p_diag__m_SOA_vt_d_1, int __CG_p_diag__m_SOA_vt_d_2, int __CG_p_diag__m_SOA_w_concorr_c_d_0, int __CG_p_diag__m_SOA_w_concorr_c_d_1, int __CG_p_diag__m_SOA_w_concorr_c_d_2, int __CG_p_int__m_SA_c_lin_e_d_0, int __CG_p_int__m_SA_c_lin_e_d_1, int __CG_p_int__m_SA_c_lin_e_d_2, int __CG_p_int__m_SA_cells_aw_verts_d_0, int __CG_p_int__m_SA_cells_aw_verts_d_1, int __CG_p_int__m_SA_cells_aw_verts_d_2, int __CG_p_int__m_SA_e_bln_c_s_d_0, int __CG_p_int__m_SA_e_bln_c_s_d_1, int __CG_p_int__m_SA_e_bln_c_s_d_2, int __CG_p_int__m_SA_geofac_grdiv_d_0, int __CG_p_int__m_SA_geofac_grdiv_d_1, int __CG_p_int__m_SA_geofac_grdiv_d_2, int __CG_p_int__m_SA_geofac_n2s_d_0, int __CG_p_int__m_SA_geofac_n2s_d_1, int __CG_p_int__m_SA_geofac_n2s_d_2, int __CG_p_int__m_SA_geofac_rot_d_0, int __CG_p_int__m_SA_geofac_rot_d_1, int __CG_p_int__m_SA_geofac_rot_d_2, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SA_rbf_vec_coeff_e_d_2, int __CG_p_int__m_SOA_c_lin_e_d_0, int __CG_p_int__m_SOA_c_lin_e_d_1, int __CG_p_int__m_SOA_c_lin_e_d_2, int __CG_p_int__m_SOA_cells_aw_verts_d_0, int __CG_p_int__m_SOA_cells_aw_verts_d_1, int __CG_p_int__m_SOA_cells_aw_verts_d_2, int __CG_p_int__m_SOA_e_bln_c_s_d_0, int __CG_p_int__m_SOA_e_bln_c_s_d_1, int __CG_p_int__m_SOA_e_bln_c_s_d_2, int __CG_p_int__m_SOA_geofac_grdiv_d_0, int __CG_p_int__m_SOA_geofac_grdiv_d_1, int __CG_p_int__m_SOA_geofac_grdiv_d_2, int __CG_p_int__m_SOA_geofac_n2s_d_0, int __CG_p_int__m_SOA_geofac_n2s_d_1, int __CG_p_int__m_SOA_geofac_n2s_d_2, int __CG_p_int__m_SOA_geofac_rot_d_0, int __CG_p_int__m_SOA_geofac_rot_d_1, int __CG_p_int__m_SOA_geofac_rot_d_2, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_0, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_1, int __CG_p_int__m_SOA_rbf_vec_coeff_e_d_2, int __CG_p_metrics__m_SA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SA_coeff_gradekin_d_0, int __CG_p_metrics__m_SA_coeff_gradekin_d_1, int __CG_p_metrics__m_SA_coeff_gradekin_d_2, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SA_ddqz_z_half_d_0, int __CG_p_metrics__m_SA_ddqz_z_half_d_2, int __CG_p_metrics__m_SA_ddxn_z_full_d_0, int __CG_p_metrics__m_SA_ddxn_z_full_d_2, int __CG_p_metrics__m_SA_ddxt_z_full_d_0, int __CG_p_metrics__m_SA_ddxt_z_full_d_2, int __CG_p_metrics__m_SA_wgtfac_c_d_0, int __CG_p_metrics__m_SA_wgtfac_c_d_2, int __CG_p_metrics__m_SA_wgtfac_e_d_0, int __CG_p_metrics__m_SA_wgtfac_e_d_2, int __CG_p_metrics__m_SA_wgtfacq_e_d_0, int __CG_p_metrics__m_SA_wgtfacq_e_d_1, int __CG_p_metrics__m_SA_wgtfacq_e_d_2, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff1_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_0, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_1, int __CG_p_metrics__m_SOA_coeff2_dwdz_d_2, int __CG_p_metrics__m_SOA_coeff_gradekin_d_0, int __CG_p_metrics__m_SOA_coeff_gradekin_d_1, int __CG_p_metrics__m_SOA_coeff_gradekin_d_2, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_0, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_1, int __CG_p_metrics__m_SOA_ddqz_z_full_e_d_2, int __CG_p_metrics__m_SOA_ddqz_z_half_d_0, int __CG_p_metrics__m_SOA_ddqz_z_half_d_1, int __CG_p_metrics__m_SOA_ddqz_z_half_d_2, int __CG_p_metrics__m_SOA_ddxn_z_full_d_0, int __CG_p_metrics__m_SOA_ddxn_z_full_d_1, int __CG_p_metrics__m_SOA_ddxn_z_full_d_2, int __CG_p_metrics__m_SOA_ddxt_z_full_d_0, int __CG_p_metrics__m_SOA_ddxt_z_full_d_1, int __CG_p_metrics__m_SOA_ddxt_z_full_d_2, int __CG_p_metrics__m_SOA_deepatmo_gradh_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_gradh_mc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_ifc_d_0, int __CG_p_metrics__m_SOA_deepatmo_invr_mc_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_0, int __CG_p_metrics__m_SOA_wgtfac_c_d_1, int __CG_p_metrics__m_SOA_wgtfac_c_d_2, int __CG_p_metrics__m_SOA_wgtfac_e_d_0, int __CG_p_metrics__m_SOA_wgtfac_e_d_1, int __CG_p_metrics__m_SOA_wgtfac_e_d_2, int __CG_p_metrics__m_SOA_wgtfacq_e_d_0, int __CG_p_metrics__m_SOA_wgtfacq_e_d_1, int __CG_p_metrics__m_SOA_wgtfacq_e_d_2, int __CG_p_patch__m_nblks_c, int __CG_p_patch__m_nblks_e, int __CG_p_patch__m_nblks_v, int __CG_p_prog__m_SA_vn_d_0, int __CG_p_prog__m_SA_vn_d_2, int __CG_p_prog__m_SA_w_d_0, int __CG_p_prog__m_SA_w_d_2, int __CG_p_prog__m_SOA_vn_d_0, int __CG_p_prog__m_SOA_vn_d_1, int __CG_p_prog__m_SOA_vn_d_2, int __CG_p_prog__m_SOA_w_d_0, int __CG_p_prog__m_SOA_w_d_1, int __CG_p_prog__m_SOA_w_d_2)
{

    int __result = 0;
    velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t *__state = new velocity_no_nproma_if_prop_lvn_only_1_istep_1_state_t;

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
