/*****************************************************************************
 *                                                                           *
 * Module:       Lab4                                                       *
 * Description:                                                              *
 *      This module is the top level module of MT3TB4 Lab 4                    *
 *                                                                           *
 *****************************************************************************/

module lab4 (
input				CLOCK_50,	
input		[0:0]	KEY, 
input 	[7:0] SW,               //for reset
output 	[7:0] LEDR,

// Bidirectionals
inout		[15:0]		DRAM_DQ,

// Outputs

output		[12:0]	DRAM_ADDR,
output 		[1:0]		DRAM_BA,
output					DRAM_LDQM,  //data mask; when it is low, the DQ is valid for reading and writing. 
output					DRAM_UDQM,
output					DRAM_RAS_N,
output 					DRAM_CAS_N,
output 					DRAM_CLK,
output					DRAM_CKE,
output 					DRAM_WE_N,
output 					DRAM_CS_N


);


// Internal Wires



assign LEDR=SW;

//Instantiate your sopc_system module generated by Platform Designer.  


sopc_system  controller (
		// example ports 
		.clk_clk(CLOCK_50),              //           clk.clk
		.reset_reset_n(KEY[0]),         	//         reset.reset_n
		.sdram_clk_clk(DRAM_CLK),			//adram_clk_clk
		
		.sdram_addr_export(DRAM_ADDR),  				//  sdram_addr.export
		.sdram_ba_export(DRAM_BA),    				//    sdram_ba.export
		.sdram_cas_n_export(DRAM_CAS_N), 				// sdram_cas_n.export
		.sdram_cke_export(DRAM_CKE),   				//   sdram_cke.export
		.sdram_cs_n_export(DRAM_CS_N),  				//  sdram_cs_n.export
		.sdram_dq_export(DRAM_DQ),    				//    sdram_dq.export
		.sdram_ldqm_export(DRAM_LDQM),  				//  sdram_ldqm.export
		.sdram_ras_n_export(DRAM_RAS_N), 				// sdram_ras_n.export
		.sdram_udqm_export(DRAM_UDQM),  				//  sdram_udqm.export
		.sdram_we_n_export(DRAM_WE_N)   				//  sdram_we_n.export
		
		// more ports
		
	);

	
	

	
endmodule