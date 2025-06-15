encode NAICS, gen(NAICS1)
encode Year, gen(Year1)
xtdes
xtsum
xtline ProdGroGapUSD
xtline ProdGroGapLocalCurrency
regress Exportsgrowth Tariffs2Manufacture SpilloversgrowthUS Currency SpilloversgrowthMEX
ivregress gmm ProdGroGapUSD FDIGrowth PoliticalRisk GDPPCUSMex Investmentgrowth(Exportsgrowth =  Tariffs2Manufacture SpilloversgrowthUS Currency SpilloversgrowthMEX), igmm
ivregress gmm ProdGroGapLocalCurrency FDIGrowth PoliticalRisk GDPPCUSMex Investmentgrowth (Exportsgrowth =  Tariffs2Manufacture SpilloversgrowthUS Currency SpilloversgrowthMEX), igmm
regress ProdGroGapUSD Exportsgrowth SpilloversgrowthMEX GDPPCMex SpilloversgrowthUS FDIGrowth Currency PoliticalRisk Tariffs2Manufacture Investmentgrowth
regress ProdGroGapUSD Exportsgrowth SpilloversgrowthMEX GDPPCUSMex SpilloversgrowthUS FDIGrowth Currency PoliticalRisk Tariffs2Manufacture Investmentgrowth
regress ProdGroGapUSD Exportsgrowth SpilloversgrowthMEX GDPPCUSMex SpilloversgrowthUS FDIGrowth Currency PoliticalRisk
regress ProdGroGapUSD Exportsgrowth SpilloversgrowthMEX GDPPCUSMex SpilloversgrowthUS FDIGrowth Currency PoliticalRisk Tariffs1 InitialState
ivregress gmm ProdGroGapUSD FDIGrowth PoliticalRisk GDPPCUSMex InitialState Investmentgrowth (Exportsgrowth =  Tariffs2Manufacture SpilloversgrowthUS CurrencySpilloversgrowthMEX), igmm
