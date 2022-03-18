*** |  (C) 2006-2020 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/16_downscaleTemperature/module.gms

*' @title downscaleTemperature
*'
*' @description The module downscaleTemperature downscales the global mean temperature path generated by MAGICC based on REMIND emissions to the regional level. It is a statistical population-weighted downscaling following the methodology by @Burke2015 and described in @Schultes2020. The downscaling factors are currently available only for RCP2.6 and RCP8.5, for SSP2, for the 11 and 12 region versions, either for fixed 2010 populations or changing SSP2 populations. The downscaling factor is calculated based on a CMIP5 GCM ensemble.
*'
*' @authors Anselm Schultes

*###################### R SECTION START (MODULETYPES) ##########################
$Ifi "%downscaleTemperature%" == "CMIP5" $include "./modules/16_downscaleTemperature/CMIP5/realization.gms"
$Ifi "%downscaleTemperature%" == "off" $include "./modules/16_downscaleTemperature/off/realization.gms"
*###################### R SECTION END (MODULETYPES) ############################
*** EOF ./modules/16_downscaleTemperature/module.gms
