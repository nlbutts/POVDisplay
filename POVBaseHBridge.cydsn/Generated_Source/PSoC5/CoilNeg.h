/*******************************************************************************
* File Name: CoilNeg.h  
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

#if !defined(CY_PINS_CoilNeg_H) /* Pins CoilNeg_H */
#define CY_PINS_CoilNeg_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "CoilNeg_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 CoilNeg__PORT == 15 && ((CoilNeg__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    CoilNeg_Write(uint8 value);
void    CoilNeg_SetDriveMode(uint8 mode);
uint8   CoilNeg_ReadDataReg(void);
uint8   CoilNeg_Read(void);
void    CoilNeg_SetInterruptMode(uint16 position, uint16 mode);
uint8   CoilNeg_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the CoilNeg_SetDriveMode() function.
     *  @{
     */
        #define CoilNeg_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define CoilNeg_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define CoilNeg_DM_RES_UP          PIN_DM_RES_UP
        #define CoilNeg_DM_RES_DWN         PIN_DM_RES_DWN
        #define CoilNeg_DM_OD_LO           PIN_DM_OD_LO
        #define CoilNeg_DM_OD_HI           PIN_DM_OD_HI
        #define CoilNeg_DM_STRONG          PIN_DM_STRONG
        #define CoilNeg_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define CoilNeg_MASK               CoilNeg__MASK
#define CoilNeg_SHIFT              CoilNeg__SHIFT
#define CoilNeg_WIDTH              1u

/* Interrupt constants */
#if defined(CoilNeg__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in CoilNeg_SetInterruptMode() function.
     *  @{
     */
        #define CoilNeg_INTR_NONE      (uint16)(0x0000u)
        #define CoilNeg_INTR_RISING    (uint16)(0x0001u)
        #define CoilNeg_INTR_FALLING   (uint16)(0x0002u)
        #define CoilNeg_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define CoilNeg_INTR_MASK      (0x01u) 
#endif /* (CoilNeg__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define CoilNeg_PS                     (* (reg8 *) CoilNeg__PS)
/* Data Register */
#define CoilNeg_DR                     (* (reg8 *) CoilNeg__DR)
/* Port Number */
#define CoilNeg_PRT_NUM                (* (reg8 *) CoilNeg__PRT) 
/* Connect to Analog Globals */                                                  
#define CoilNeg_AG                     (* (reg8 *) CoilNeg__AG)                       
/* Analog MUX bux enable */
#define CoilNeg_AMUX                   (* (reg8 *) CoilNeg__AMUX) 
/* Bidirectional Enable */                                                        
#define CoilNeg_BIE                    (* (reg8 *) CoilNeg__BIE)
/* Bit-mask for Aliased Register Access */
#define CoilNeg_BIT_MASK               (* (reg8 *) CoilNeg__BIT_MASK)
/* Bypass Enable */
#define CoilNeg_BYP                    (* (reg8 *) CoilNeg__BYP)
/* Port wide control signals */                                                   
#define CoilNeg_CTL                    (* (reg8 *) CoilNeg__CTL)
/* Drive Modes */
#define CoilNeg_DM0                    (* (reg8 *) CoilNeg__DM0) 
#define CoilNeg_DM1                    (* (reg8 *) CoilNeg__DM1)
#define CoilNeg_DM2                    (* (reg8 *) CoilNeg__DM2) 
/* Input Buffer Disable Override */
#define CoilNeg_INP_DIS                (* (reg8 *) CoilNeg__INP_DIS)
/* LCD Common or Segment Drive */
#define CoilNeg_LCD_COM_SEG            (* (reg8 *) CoilNeg__LCD_COM_SEG)
/* Enable Segment LCD */
#define CoilNeg_LCD_EN                 (* (reg8 *) CoilNeg__LCD_EN)
/* Slew Rate Control */
#define CoilNeg_SLW                    (* (reg8 *) CoilNeg__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define CoilNeg_PRTDSI__CAPS_SEL       (* (reg8 *) CoilNeg__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define CoilNeg_PRTDSI__DBL_SYNC_IN    (* (reg8 *) CoilNeg__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define CoilNeg_PRTDSI__OE_SEL0        (* (reg8 *) CoilNeg__PRTDSI__OE_SEL0) 
#define CoilNeg_PRTDSI__OE_SEL1        (* (reg8 *) CoilNeg__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define CoilNeg_PRTDSI__OUT_SEL0       (* (reg8 *) CoilNeg__PRTDSI__OUT_SEL0) 
#define CoilNeg_PRTDSI__OUT_SEL1       (* (reg8 *) CoilNeg__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define CoilNeg_PRTDSI__SYNC_OUT       (* (reg8 *) CoilNeg__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(CoilNeg__SIO_CFG)
    #define CoilNeg_SIO_HYST_EN        (* (reg8 *) CoilNeg__SIO_HYST_EN)
    #define CoilNeg_SIO_REG_HIFREQ     (* (reg8 *) CoilNeg__SIO_REG_HIFREQ)
    #define CoilNeg_SIO_CFG            (* (reg8 *) CoilNeg__SIO_CFG)
    #define CoilNeg_SIO_DIFF           (* (reg8 *) CoilNeg__SIO_DIFF)
#endif /* (CoilNeg__SIO_CFG) */

/* Interrupt Registers */
#if defined(CoilNeg__INTSTAT)
    #define CoilNeg_INTSTAT            (* (reg8 *) CoilNeg__INTSTAT)
    #define CoilNeg_SNAP               (* (reg8 *) CoilNeg__SNAP)
    
	#define CoilNeg_0_INTTYPE_REG 		(* (reg8 *) CoilNeg__0__INTTYPE)
#endif /* (CoilNeg__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_CoilNeg_H */


/* [] END OF FILE */
