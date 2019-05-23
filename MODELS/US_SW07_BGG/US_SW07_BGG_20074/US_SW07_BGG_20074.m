%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'US_SW07_BGG_20074';
M_.dynare_version = '4.5.7';
oo_.dynare_version = '4.5.7';
options_.dynare_version = '4.5.7';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('US_SW07_BGG_20074.log');
M_.exo_names = 'ew';
M_.exo_names_tex = '{\eta^{w}}';
M_.exo_names_long = 'Wage markup shock';
M_.exo_names = char(M_.exo_names, 'ex');
M_.exo_names_tex = char(M_.exo_names_tex, '{\eta^{I}}');
M_.exo_names_long = char(M_.exo_names_long, 'Investment shock');
M_.exo_names = char(M_.exo_names, 'ek');
M_.exo_names_tex = char(M_.exo_names_tex, '{\eta^{K}}');
M_.exo_names_long = char(M_.exo_names_long, 'Capital shock');
M_.exo_names = char(M_.exo_names, 'ea');
M_.exo_names_tex = char(M_.exo_names_tex, '{\eta^{A}}');
M_.exo_names_long = char(M_.exo_names_long, 'Technology shock');
M_.exo_names = char(M_.exo_names, 'ep');
M_.exo_names_tex = char(M_.exo_names_tex, '{\eta^{P}}');
M_.exo_names_long = char(M_.exo_names_long, 'Cost push shock - PC');
M_.exo_names = char(M_.exo_names, 'eg');
M_.exo_names_tex = char(M_.exo_names_tex, '{\eta^{G}}');
M_.exo_names_long = char(M_.exo_names_long, 'Spending shock');
M_.exo_names = char(M_.exo_names, 'emp');
M_.exo_names_tex = char(M_.exo_names_tex, '{\eta^{MP}}');
M_.exo_names_long = char(M_.exo_names_long, 'Monetary policy shock');
M_.endo_names = 'vc';
M_.endo_names_tex = '{c}';
M_.endo_names_long = 'Consumption';
M_.endo_names = char(M_.endo_names, 'vr');
M_.endo_names_tex = char(M_.endo_names_tex, '{r}');
M_.endo_names_long = char(M_.endo_names_long, 'real interest rate');
M_.endo_names = char(M_.endo_names, 'vw');
M_.endo_names_tex = char(M_.endo_names_tex, '{w}');
M_.endo_names_long = char(M_.endo_names_long, 'real wage');
M_.endo_names = char(M_.endo_names, 'vpinf');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi}');
M_.endo_names_long = char(M_.endo_names_long, 'Inflation');
M_.endo_names = char(M_.endo_names, 'vlab');
M_.endo_names_tex = char(M_.endo_names_tex, '{l}');
M_.endo_names_long = char(M_.endo_names_long, 'hours worked');
M_.endo_names = char(M_.endo_names, 'vk');
M_.endo_names_tex = char(M_.endo_names_tex, '{k^{s}}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital services');
M_.endo_names = char(M_.endo_names, 'vinve');
M_.endo_names_tex = char(M_.endo_names_tex, '{i}');
M_.endo_names_long = char(M_.endo_names_long, 'Investment');
M_.endo_names = char(M_.endo_names, 'vz');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital utilization rate');
M_.endo_names = char(M_.endo_names, 'vu');
M_.endo_names_tex = char(M_.endo_names_tex, '{u}');
M_.endo_names_long = char(M_.endo_names_long, 'Utilization rate');
M_.endo_names = char(M_.endo_names, 'vq');
M_.endo_names_tex = char(M_.endo_names_tex, '{q}');
M_.endo_names_long = char(M_.endo_names_long, 'real value of existing capital stock');
M_.endo_names = char(M_.endo_names, 'vrn');
M_.endo_names_tex = char(M_.endo_names_tex, '{rn}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal interest rate');
M_.endo_names = char(M_.endo_names, 'vemp');
M_.endo_names_tex = char(M_.endo_names_tex, '{e}');
M_.endo_names_long = char(M_.endo_names_long, 'Employment');
M_.endo_names = char(M_.endo_names, 'vn');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'net worth of firms');
M_.endo_names = char(M_.endo_names, 'vep');
M_.endo_names_tex = char(M_.endo_names_tex, '{ep}');
M_.endo_names_long = char(M_.endo_names_long, 'external finance premium');
M_.endo_names = char(M_.endo_names, 'vrk');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{k}}');
M_.endo_names_long = char(M_.endo_names_long, 'rental rate of capital');
M_.endo_names = char(M_.endo_names, 'vy');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'Output');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_a}');
M_.endo_names_long = char(M_.endo_names_long, 'productivity process');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_k}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital quality process');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_g}');
M_.endo_names_long = char(M_.endo_names_long, 'Government spending process');
M_.endo_names = char(M_.endo_names, 'qs');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_x}');
M_.endo_names_long = char(M_.endo_names_long, 'Investment specific shock process');
M_.endo_names = char(M_.endo_names, 'ms');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_m}');
M_.endo_names_long = char(M_.endo_names_long, 'Monetary policy shock process');
M_.endo_names = char(M_.endo_names, 'ecps');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_{ecps}}');
M_.endo_names_long = char(M_.endo_names_long, 'Cost push (price mark-up) shock process');
M_.endo_names = char(M_.endo_names, 'ecws');
M_.endo_names_tex = char(M_.endo_names_tex, '{\varepsilon_{ewps}}');
M_.endo_names_long = char(M_.endo_names_long, 'Wage push (wage mark-up) shock process');
M_.endo_names = char(M_.endo_names, 'zcapf');
M_.endo_names_tex = char(M_.endo_names_tex, '{z^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital utilization rate flex price economy');
M_.endo_names = char(M_.endo_names, 'rkf');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{k,flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'rental rate of capital flex price economy');
M_.endo_names = char(M_.endo_names, 'kf');
M_.endo_names_tex = char(M_.endo_names_tex, '{k^{s,flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital services flex price economy');
M_.endo_names = char(M_.endo_names, 'pkf');
M_.endo_names_tex = char(M_.endo_names_tex, '{q^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'real value of existing capital stock flex price economy');
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, '{c^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'Consumption flex price economy');
M_.endo_names = char(M_.endo_names, 'invef');
M_.endo_names_tex = char(M_.endo_names_tex, '{i^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'Investment flex price economy');
M_.endo_names = char(M_.endo_names, 'yf');
M_.endo_names_tex = char(M_.endo_names_tex, '{y^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'Output flex price economy');
M_.endo_names = char(M_.endo_names, 'labf');
M_.endo_names_tex = char(M_.endo_names_tex, '{l^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'hours worked flex price economy');
M_.endo_names = char(M_.endo_names, 'wf');
M_.endo_names_tex = char(M_.endo_names_tex, '{w^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'real wage flex price economy');
M_.endo_names = char(M_.endo_names, 'rrf');
M_.endo_names_tex = char(M_.endo_names_tex, '{r^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'real interest rate flex price economy');
M_.endo_names = char(M_.endo_names, 'kpf');
M_.endo_names_tex = char(M_.endo_names_tex, '{k^{flex}}');
M_.endo_names_long = char(M_.endo_names_long, 'Capital stock flex price economy');
M_.endo_names = char(M_.endo_names, 'xgdp_q_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '\Delta y^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'xgdp_q_obs');
M_.endo_names = char(M_.endo_names, 'hours_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'L^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'hours_obs');
M_.endo_names = char(M_.endo_names, 'wage_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'wage^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'wage_obs');
M_.endo_names = char(M_.endo_names, 'pgdp_q_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '\pi^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'pgdp_q_obs');
M_.endo_names = char(M_.endo_names, 'rff_q_obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'R^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'rff_q_obs');
M_.endo_names = char(M_.endo_names, 'pcer_q_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '\Delta c^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'pcer_q_obs');
M_.endo_names = char(M_.endo_names, 'fpi_q_obs');
M_.endo_names_tex = char(M_.endo_names_tex, '\Delta i^{obs}');
M_.endo_names_long = char(M_.endo_names_long, 'fpi_q_obs');
M_.endo_partitions = struct();
M_.param_names = 'chabb';
M_.param_names_tex = 'chabb';
M_.param_names_long = 'chabb';
M_.param_names = char(M_.param_names, 'cbeta');
M_.param_names_tex = char(M_.param_names_tex, 'cbeta');
M_.param_names_long = char(M_.param_names_long, 'cbeta');
M_.param_names = char(M_.param_names, 'ccwagei');
M_.param_names_tex = char(M_.param_names_tex, 'ccwagei');
M_.param_names_long = char(M_.param_names_long, 'ccwagei');
M_.param_names = char(M_.param_names, 'ccwage');
M_.param_names_tex = char(M_.param_names_tex, 'ccwage');
M_.param_names_long = char(M_.param_names_long, 'ccwage');
M_.param_names = char(M_.param_names, 'celasw');
M_.param_names_tex = char(M_.param_names_tex, 'celasw');
M_.param_names_long = char(M_.param_names_long, 'celasw');
M_.param_names = char(M_.param_names, 'cinvfrisch');
M_.param_names_tex = char(M_.param_names_tex, 'cinvfrisch');
M_.param_names_long = char(M_.param_names_long, 'cinvfrisch');
M_.param_names = char(M_.param_names, 'cecu');
M_.param_names_tex = char(M_.param_names_tex, 'cecu');
M_.param_names_long = char(M_.param_names_long, 'cecu');
M_.param_names = char(M_.param_names, 'cdelta');
M_.param_names_tex = char(M_.param_names_tex, 'cdelta');
M_.param_names_long = char(M_.param_names_long, 'cdelta');
M_.param_names = char(M_.param_names, 'cinvadj');
M_.param_names_tex = char(M_.param_names_tex, 'cinvadj');
M_.param_names_long = char(M_.param_names_long, 'cinvadj');
M_.param_names = char(M_.param_names, 'ccpricei');
M_.param_names_tex = char(M_.param_names_tex, 'ccpricei');
M_.param_names_long = char(M_.param_names_long, 'ccpricei');
M_.param_names = char(M_.param_names, 'ccprice');
M_.param_names_tex = char(M_.param_names_tex, 'ccprice');
M_.param_names_long = char(M_.param_names_long, 'ccprice');
M_.param_names = char(M_.param_names, 'ccemp');
M_.param_names_tex = char(M_.param_names_tex, 'ccemp');
M_.param_names_long = char(M_.param_names_long, 'ccemp');
M_.param_names = char(M_.param_names, 'csigl');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_l}');
M_.param_names_long = char(M_.param_names_long, 'Frisch elasticity');
M_.param_names = char(M_.param_names, 'constelab');
M_.param_names_tex = char(M_.param_names_tex, 'constelab');
M_.param_names_long = char(M_.param_names_long, 'constelab');
M_.param_names = char(M_.param_names, 'cgamma1');
M_.param_names_tex = char(M_.param_names_tex, 'cgamma1');
M_.param_names_long = char(M_.param_names_long, 'cgamma1');
M_.param_names = char(M_.param_names, 'cpie1');
M_.param_names_tex = char(M_.param_names_tex, 'cpie1');
M_.param_names_long = char(M_.param_names_long, 'cpie1');
M_.param_names = char(M_.param_names, 'cfc');
M_.param_names_tex = char(M_.param_names_tex, 'cfc');
M_.param_names_long = char(M_.param_names_long, 'cfc');
M_.param_names = char(M_.param_names, 'csigma');
M_.param_names_tex = char(M_.param_names_tex, 'csigma');
M_.param_names_long = char(M_.param_names_long, 'csigma');
M_.param_names = char(M_.param_names, 'calfa');
M_.param_names_tex = char(M_.param_names_tex, 'calfa');
M_.param_names_long = char(M_.param_names_long, 'calfa');
M_.param_names = char(M_.param_names, 'cgy');
M_.param_names_tex = char(M_.param_names_tex, 'cgy');
M_.param_names_long = char(M_.param_names_long, 'cgy');
M_.param_names = char(M_.param_names, 'crhoi');
M_.param_names_tex = char(M_.param_names_tex, 'crhoi');
M_.param_names_long = char(M_.param_names_long, 'crhoi');
M_.param_names = char(M_.param_names, 'crhopi');
M_.param_names_tex = char(M_.param_names_tex, 'crhopi');
M_.param_names_long = char(M_.param_names_long, 'crhopi');
M_.param_names = char(M_.param_names, 'crhoy');
M_.param_names_tex = char(M_.param_names_tex, 'crhoy');
M_.param_names_long = char(M_.param_names_long, 'crhoy');
M_.param_names = char(M_.param_names, 'crhody');
M_.param_names_tex = char(M_.param_names_tex, 'crhody');
M_.param_names_long = char(M_.param_names_long, 'crhody');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, 'chi');
M_.param_names_long = char(M_.param_names_long, 'chi');
M_.param_names = char(M_.param_names, 'ctheta');
M_.param_names_tex = char(M_.param_names_tex, 'ctheta');
M_.param_names_long = char(M_.param_names_long, 'ctheta');
M_.param_names = char(M_.param_names, 'ckn');
M_.param_names_tex = char(M_.param_names_tex, 'ckn');
M_.param_names_long = char(M_.param_names_long, 'ckn');
M_.param_names = char(M_.param_names, 'crhoa');
M_.param_names_tex = char(M_.param_names_tex, 'crhoa');
M_.param_names_long = char(M_.param_names_long, 'crhoa');
M_.param_names = char(M_.param_names, 'crhob');
M_.param_names_tex = char(M_.param_names_tex, 'crhob');
M_.param_names_long = char(M_.param_names_long, 'crhob');
M_.param_names = char(M_.param_names, 'crhog');
M_.param_names_tex = char(M_.param_names_tex, 'crhog');
M_.param_names_long = char(M_.param_names_long, 'crhog');
M_.param_names = char(M_.param_names, 'crhoqs');
M_.param_names_tex = char(M_.param_names_tex, 'crhoqs');
M_.param_names_long = char(M_.param_names_long, 'crhoqs');
M_.param_names = char(M_.param_names, 'crhoms');
M_.param_names_tex = char(M_.param_names_tex, 'crhoms');
M_.param_names_long = char(M_.param_names_long, 'crhoms');
M_.param_names = char(M_.param_names, 'crhoecps');
M_.param_names_tex = char(M_.param_names_tex, 'crhoecps');
M_.param_names_long = char(M_.param_names_long, 'crhoecps');
M_.param_names = char(M_.param_names, 'crhoecws');
M_.param_names_tex = char(M_.param_names_tex, 'crhoecws');
M_.param_names_long = char(M_.param_names_long, 'crhoecws');
M_.param_names = char(M_.param_names, 'czcap');
M_.param_names_tex = char(M_.param_names_tex, '{\psi}');
M_.param_names_long = char(M_.param_names_long, 'capacity utilization cost');
M_.param_names = char(M_.param_names, 'csadjcost');
M_.param_names_tex = char(M_.param_names_tex, '{\varphi}');
M_.param_names_long = char(M_.param_names_long, 'investment adjustment cost');
M_.param_names = char(M_.param_names, 'clandaw');
M_.param_names_tex = char(M_.param_names_tex, '{\phi_w}');
M_.param_names_long = char(M_.param_names_long, 'Gross markup wages');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 41;
M_.param_nbr = 37;
M_.orig_endo_nbr = 41;
M_.aux_vars = [];
options_.varobs = cell(1);
options_.varobs(1)  = {'xgdp_q_obs'};
options_.varobs(2)  = {'hours_obs'};
options_.varobs(3)  = {'wage_obs'};
options_.varobs(4)  = {'pgdp_q_obs'};
options_.varobs(5)  = {'rff_q_obs'};
options_.varobs(6)  = {'pcer_q_obs'};
options_.varobs(7)  = {'fpi_q_obs'};
options_.varobs_id = [ 35 36 37 38 39 40 41  ];
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('US_SW07_BGG_20074_static');
erase_compiled_function('US_SW07_BGG_20074_dynamic');
M_.orig_eq_nbr = 41;
M_.eq_nbr = 41;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 1 20 61;
 0 21 0;
 2 22 62;
 3 23 63;
 0 24 0;
 0 25 64;
 4 26 65;
 0 27 0;
 0 28 0;
 5 29 0;
 6 30 0;
 7 31 66;
 0 32 67;
 0 33 0;
 0 34 68;
 8 35 0;
 9 36 0;
 10 37 0;
 11 38 0;
 12 39 0;
 13 40 0;
 14 41 0;
 15 42 0;
 0 43 0;
 0 44 69;
 0 45 0;
 0 46 70;
 16 47 71;
 17 48 72;
 18 49 0;
 0 50 73;
 0 51 0;
 0 52 0;
 19 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 0 60 0;]';
M_.nstatic = 16;
M_.nfwrd   = 6;
M_.npred   = 12;
M_.nboth   = 7;
M_.nsfwrd   = 13;
M_.nspred   = 19;
M_.ndynamic   = 25;
M_.equations_tags = {
  1 , 'name' , 'EQ.1 - Euler Equation' ;
  2 , 'name' , 'EQ.2 PC - Wage equation' ;
  3 , 'name' , 'EQ.3  - Capital accumulation' ;
  4 , 'name' , 'EQ 4. - Optimal Capital utilization' ;
  5 , 'name' , 'EQ 5. - Investment Euler Equation' ;
  6 , 'name' , 'EQ 6. - Resource constraints' ;
  7 , 'name' , 'EQ 7. - Production function' ;
  8 , 'name' , 'EQ 8. - Firms FOCs' ;
  9 , 'name' , 'EQ 9. - PC - prices' ;
  10 , 'name' , 'EQ 10. - Taylor rule' ;
  11 , 'name' , 'EQ 11. - Fisher Equation' ;
  12 , 'name' , 'EQ 12. - Phillips curve- Employment' ;
  13 , 'name' , 'EQ 13. - Price of capital' ;
  14 , 'name' , 'EQ 14. - Spread' ;
  15 , 'name' , 'EQ 15. - Spread' ;
  16 , 'name' , 'EQ 15. - Firms net worth accumulation' ;
  17 , 'name' , 'Law of motion for productivity' ;
  18 , 'name' , 'Law of motion for capital quality' ;
  19 , 'name' , 'Law of motion for spending process' ;
  20 , 'name' , 'Law of motion for investment specific technology shock process' ;
  21 , 'name' , 'Law of motion for monetary policy shock process' ;
  22 , 'name' , 'Law of motion for price mark-up shock process' ;
  23 , 'name' , 'Law of motion for wage mark-up shock process' ;
  24 , 'name' , 'FOC labor with mpl expressed as function of rk and w, flex price economy' ;
  25 , 'name' , 'FOC capacity utilization, flex price economy' ;
  26 , 'name' , 'Firm FOC capital, flex price economy' ;
  27 , 'name' , 'Definition capital services, flex price economy' ;
  28 , 'name' , 'Investment Euler Equation, flex price economy' ;
  29 , 'name' , 'Arbitrage equation value of capital, flex price economy' ;
  30 , 'name' , 'Consumption Euler Equation, flex price economy' ;
  31 , 'name' , 'Aggregate Resource Constraint, flex price economy' ;
  32 , 'name' , 'Aggregate Production Function, flex price economy' ;
  33 , 'name' , 'Wage equation, flex price economy' ;
  34 , 'name' , 'Law of motion for capital, flex price economy (see header notes)' ;
  35 , 'name' , 'Observation equation output' ;
  36 , 'name' , 'Observation equation consumption' ;
  37 , 'name' , 'Observation equation investment' ;
  38 , 'name' , 'Observation equation real wage' ;
  39 , 'name' , 'Observation equation hours worked' ;
  40 , 'name' , 'Observation equation inflation' ;
  41 , 'name' , 'Observation equation interest rate' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:7];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(41, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(37, 1);
M_.NNZDerivatives = [167; 0; -1];
M_.params( 26 ) = 0.972;
ctheta = M_.params( 26 );
M_.params( 27 ) = 2;
ckn = M_.params( 27 );
M_.params( 25 ) = 0.04;
chi = M_.params( 25 );
M_.params( 8 ) = 0.025;
cdelta = M_.params( 8 );
M_.params( 37 ) = 1.5;
clandaw = M_.params( 37 );
M_.params( 20 ) = 0.2;
cgy = M_.params( 20 );
M_.params( 2 ) = 0.99;
cbeta = M_.params( 2 );
M_.params( 5 ) = 6;
celasw = M_.params( 5 );
M_.params( 35 ) = 0.2696;
czcap = M_.params( 35 );
M_.params( 36 ) = 6.0144;
csadjcost = M_.params( 36 );
M_.params( 19 ) = 0.24;
calfa = M_.params( 19 );
M_.params( 18 ) = 1.5;
csigma = M_.params( 18 );
M_.params( 13 ) = 1.9423;
csigl = M_.params( 13 );
M_.params( 17 ) = 1.33;
cfc = M_.params( 17 );
M_.params( 1 ) = 0.7;
chabb = M_.params( 1 );
M_.params( 4 ) = 0.77;
ccwage = M_.params( 4 );
M_.params( 11 ) = 0.82;
ccprice = M_.params( 11 );
M_.params( 3 ) = 0.37;
ccwagei = M_.params( 3 );
M_.params( 10 ) = 0.15;
ccpricei = M_.params( 10 );
M_.params( 22 ) = 1.80;
crhopi = M_.params( 22 );
M_.params( 21 ) = 0.88;
crhoi = M_.params( 21 );
M_.params( 23 ) = 0.09;
crhoy = M_.params( 23 );
M_.params( 24 ) = 0.06;
crhody = M_.params( 24 );
M_.params( 28 ) = 0.87;
crhoa = M_.params( 28 );
M_.params( 29 ) = 0.99;
crhob = M_.params( 29 );
M_.params( 30 ) = 0.92;
crhog = M_.params( 30 );
M_.params( 31 ) = 0.97;
crhoqs = M_.params( 31 );
M_.params( 32 ) = 0.25;
crhoms = M_.params( 32 );
M_.params( 33 ) = 0.81;
crhoecps = M_.params( 33 );
M_.params( 34 ) = 0.59;
crhoecws = M_.params( 34 );
M_.params( 14 ) = 0;
constelab = M_.params( 14 );
M_.params( 15 ) = 0.3;
cgamma1 = M_.params( 15 );
M_.params( 12 ) = 0.81;
ccemp = M_.params( 12 );
M_.params( 16 ) = 0.55;
cpie1 = M_.params( 16 );
M_.params( 6 ) = 1.34;
cinvfrisch = M_.params( 6 );
M_.params( 7 ) = 0.95;
cecu = M_.params( 7 );
M_.params( 9 ) = 4.59;
cinvadj = M_.params( 9 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.12)^2;
M_.Sigma_e(2, 2) = (2.33)^2;
M_.Sigma_e(3, 3) = (0.24)^2;
M_.Sigma_e(4, 4) = (1.09)^2;
M_.Sigma_e(5, 5) = (0.07)^2;
M_.Sigma_e(6, 6) = (1.46)^2;
M_.Sigma_e(7, 7) = (0.11)^2;
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 11, 0.82, NaN, 1, 3, 0.75, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 4, 0.77, NaN, NaN, 1, 0.75, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 10, 0.15, NaN, NaN, 1, 0.5, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 12, 0.81, NaN, NaN, 1, 0.5, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 3, 0.37, NaN, NaN, 1, 0.5, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 9, 4.59, NaN, NaN, 3, 4, 1.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 7, 0.95, NaN, NaN, 1, 0.25, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 1, 0.69, NaN, NaN, 1, 0.7, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 17, 1.33, NaN, NaN, 3, 1.25, 0.125, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 6, 1.34, NaN, NaN, 2, 0.33, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 25, 0.04, NaN, NaN, 1, 0.05, 0.01, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 22, 1.8, NaN, NaN, 3, 1.7, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 23, 0.09, NaN, NaN, 2, 0.125, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 24, 0.06, NaN, NaN, 3, 0.0625, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 21, 0.88, NaN, NaN, 1, 0.8, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 15, 0.4, NaN, NaN, 3, 0.4, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 16, 0.65, NaN, NaN, 2, 0.625, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 14, 0, NaN, NaN, 3, 0.0, 1.0, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 28, 0.87, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 29, 0.99, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 30, 0.92, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 31, 0.97, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 32, 0.25, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 33, 0.81, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 34, 0.59, NaN, NaN, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 4, 1.09, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 3, 0.24, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 6, 1.46, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 2, 2.33, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 7, 0.11, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 5, 0.07, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 1, 0.12, NaN, NaN, 4, 0.1, 2, NaN, NaN, NaN ];
steady;
save('US_SW07_BGG_20074_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('US_SW07_BGG_20074_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('US_SW07_BGG_20074_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('US_SW07_BGG_20074_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('US_SW07_BGG_20074_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('US_SW07_BGG_20074_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('US_SW07_BGG_20074_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
