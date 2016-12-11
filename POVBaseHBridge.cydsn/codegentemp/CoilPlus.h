/*******************************************************************************
* File Name: CoilPlus.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_CoilPlus_H) /* Pins CoilPlus_H */
#define CY_PINS_CoilPlus_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "CoilPlus_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 CoilPlus__PORT == 15 && ((CoilPlus__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    CoilPlus_Write(uint8 value);
void    CoilPlus_SetDriveMode(uint8 mode);
uint8   CoilPlus_ReadDataReg(void);
uint8   CoilPlus_Read(void);
void    CoilPlus_SetInterruptMode(uint16 position, uint16 mode);
uint8   CoilPlus_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the CoilPlus_SetDriveMode() function.
     *  @{
     */
        #define CoilPlus_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define CoilPlus_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define CoilPlus_DM_RES_UP          PIN_DM_RES_UP
        #define CoilPlus_DM_RES_DWN         PIN_DM_RES_DWN
        #define CoilPlus_DM_OD_LO           PIN_DM_OD_LO
        #define CoilPlus_DM_OD_HI           PIN_DM_OD_HI
        #define CoilPlus_DM_STRONG          PIN_DM_STRONG
        #define CoilPlus_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define CoilPlus_MASK               CoilPlus__MASK
#define CoilPlus_SHIFT              CoilPlus__SHIFT
#define CoilPlus_WIDTH              1u

/* Interrupt constants */
#if defined(CoilPlus__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in CoilPlus_SetInterruptMode() function.
     *  @{
     */
        #define CoilPlus_INTR_NONE      (uint16)(0x0000u)
        #define CoilPlus_INTR_RISING    (uint16)(0x0001u)
        #define CoilPlus_INTR_FALLING   (uint16)(0x0002u)
        #define CoilPlus_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define CoilPlus_INTR_MASK      (0x01u) 
#endif /* (CoilPlus__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define CoilPlus_PS                     (* (reg8 *) CoilPlus__PS)
/* Data Register */
#define CoilPlus_DR                     (* (reg8 *) CoilPlus__DR)
/* Port Number */
#define CoilPlus_PRT_NUM                (* (reg8 *) CoilPlus__PRT) 
/* Connect to Analog Globals */                                                  
#define CoilPlus_AG                     (* (reg8 *) CoilPlus__AG)                       
/* Analog MUX bux enable */
#define CoilPlus_AMUX                   (* (reg8 *) CoilPlus__AMUX) 
/* Bidirectional Enable */                                                        
#define CoilPlus_BIE                    (* (reg8 *) CoilPlus__BIE)
/* Bit-mask for Aliased Register Access */
#define CoilPlus_BIT_MASK               (* (reg8 *) CoilPlus__BIT_MASK)
/* Bypass Enable */
#define CoilPlus_BYP                    (* (reg8 *) CoilPlus__BYP)
/* Port wide control signals */                                                   
#define CoilPlus_CTL                    (* (reg8 *) CoilPlus__CTL)
/* Drive Modes */
#define CoilPlus_DM0                    (* (reg8 *) CoilPlus__DM0) 
#define CoilPlus_DM1                    (* (reg8 *) CoilPlus__DM1)
#define CoilPlus_DM2                    (* (reg8 *) CoilPlus__DM2) 
/* Input Buffer Disable Override */
#define CoilPlus_INP_DIS                (* (reg8 *) CoilPlus__INP_DIS)
/* LCD Common or Segment Drive */
#define CoilPlus_LCD_COM_SEG            (* (reg8 *) CoilPlus__LCD_COM_SEG)
/* Enable Segment LCD */
#define CoilPlus_LCD_EN                 (* (reg8 *) CoilPlus__LCD_EN)
/* Slew Rate Control */
#define CoilPlus_SLW                    (* (reg8 *) CoilPlus__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define CoilPlus_PRTDSI__CAPS_SEL       (* (reg8 *) CoilPlus__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define CoilPlus_PRTDSI__DBL_SYNC_IN    (* (reg8 *) CoilPlus__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define CoilPlus_PRTDSI__OE_SEL0        (* (reg8 *) CoilPlus__PRTDSI__OE_SEL0) 
#define CoilPlus_PRTDSI__OE_SEL1        (* (reg8 *) CoilPlus__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define CoilPlus_PRTDSI__OUT_SEL0       (* (reg8 *) CoilPlus__PRTDSI__OUT_SEL0) 
#define CoilPlus_PRTDSI__OUT_SEL1       (* (reg8 *) CoilPlus__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define CoilPlus_PRTDSI__SYNC_OUT       (* (reg8 *) CoilPlus__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(CoilPlus__SIO_CFG)
    #define CoilPlus_SIO_HYST_EN        (* (reg8 *) CoilPlus__SIO_HYST_EN)
    #define CoilPlus_SIO_REG_HIFREQ     (* (reg8 *) CoilPlus__SIO_REG_HIFREQ)
    #define CoilPlus_SIO_CFG            (* (reg8 *) CoilPlus__SIO_CFG)
    #define CoilPlus_SIO_DIFF           (* (reg8 *) CoilPlus__SIO_DIFF)
#endif /* (CoilPlus__SIO_CFG) */

/* Interrupt Registers */
#if defined(CoilPlus__INTSTAT)
    #define CoilPlus_INTSTAT            (* (reg8 *) CoilPlus__INTSTAT)
    #define CoilPlus_SNAP               (* (reg8 *) CoilPlus__SNAP)
    
	#define CoilPlus_0_INTTYPE_REG 		(* (reg8 *) CoilPlus__0__INTTYPE)
#endif /* (CoilPlus__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_CoilPlus_H */


/* [] END OF FILE */
