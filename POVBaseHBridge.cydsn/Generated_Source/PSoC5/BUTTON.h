/*******************************************************************************
* File Name: BUTTON.h  
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

#if !defined(CY_PINS_BUTTON_H) /* Pins BUTTON_H */
#define CY_PINS_BUTTON_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "BUTTON_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 BUTTON__PORT == 15 && ((BUTTON__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    BUTTON_Write(uint8 value);
void    BUTTON_SetDriveMode(uint8 mode);
uint8   BUTTON_ReadDataReg(void);
uint8   BUTTON_Read(void);
void    BUTTON_SetInterruptMode(uint16 position, uint16 mode);
uint8   BUTTON_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the BUTTON_SetDriveMode() function.
     *  @{
     */
        #define BUTTON_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define BUTTON_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define BUTTON_DM_RES_UP          PIN_DM_RES_UP
        #define BUTTON_DM_RES_DWN         PIN_DM_RES_DWN
        #define BUTTON_DM_OD_LO           PIN_DM_OD_LO
        #define BUTTON_DM_OD_HI           PIN_DM_OD_HI
        #define BUTTON_DM_STRONG          PIN_DM_STRONG
        #define BUTTON_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define BUTTON_MASK               BUTTON__MASK
#define BUTTON_SHIFT              BUTTON__SHIFT
#define BUTTON_WIDTH              1u

/* Interrupt constants */
#if defined(BUTTON__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in BUTTON_SetInterruptMode() function.
     *  @{
     */
        #define BUTTON_INTR_NONE      (uint16)(0x0000u)
        #define BUTTON_INTR_RISING    (uint16)(0x0001u)
        #define BUTTON_INTR_FALLING   (uint16)(0x0002u)
        #define BUTTON_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define BUTTON_INTR_MASK      (0x01u) 
#endif /* (BUTTON__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define BUTTON_PS                     (* (reg8 *) BUTTON__PS)
/* Data Register */
#define BUTTON_DR                     (* (reg8 *) BUTTON__DR)
/* Port Number */
#define BUTTON_PRT_NUM                (* (reg8 *) BUTTON__PRT) 
/* Connect to Analog Globals */                                                  
#define BUTTON_AG                     (* (reg8 *) BUTTON__AG)                       
/* Analog MUX bux enable */
#define BUTTON_AMUX                   (* (reg8 *) BUTTON__AMUX) 
/* Bidirectional Enable */                                                        
#define BUTTON_BIE                    (* (reg8 *) BUTTON__BIE)
/* Bit-mask for Aliased Register Access */
#define BUTTON_BIT_MASK               (* (reg8 *) BUTTON__BIT_MASK)
/* Bypass Enable */
#define BUTTON_BYP                    (* (reg8 *) BUTTON__BYP)
/* Port wide control signals */                                                   
#define BUTTON_CTL                    (* (reg8 *) BUTTON__CTL)
/* Drive Modes */
#define BUTTON_DM0                    (* (reg8 *) BUTTON__DM0) 
#define BUTTON_DM1                    (* (reg8 *) BUTTON__DM1)
#define BUTTON_DM2                    (* (reg8 *) BUTTON__DM2) 
/* Input Buffer Disable Override */
#define BUTTON_INP_DIS                (* (reg8 *) BUTTON__INP_DIS)
/* LCD Common or Segment Drive */
#define BUTTON_LCD_COM_SEG            (* (reg8 *) BUTTON__LCD_COM_SEG)
/* Enable Segment LCD */
#define BUTTON_LCD_EN                 (* (reg8 *) BUTTON__LCD_EN)
/* Slew Rate Control */
#define BUTTON_SLW                    (* (reg8 *) BUTTON__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define BUTTON_PRTDSI__CAPS_SEL       (* (reg8 *) BUTTON__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define BUTTON_PRTDSI__DBL_SYNC_IN    (* (reg8 *) BUTTON__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define BUTTON_PRTDSI__OE_SEL0        (* (reg8 *) BUTTON__PRTDSI__OE_SEL0) 
#define BUTTON_PRTDSI__OE_SEL1        (* (reg8 *) BUTTON__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define BUTTON_PRTDSI__OUT_SEL0       (* (reg8 *) BUTTON__PRTDSI__OUT_SEL0) 
#define BUTTON_PRTDSI__OUT_SEL1       (* (reg8 *) BUTTON__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define BUTTON_PRTDSI__SYNC_OUT       (* (reg8 *) BUTTON__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(BUTTON__SIO_CFG)
    #define BUTTON_SIO_HYST_EN        (* (reg8 *) BUTTON__SIO_HYST_EN)
    #define BUTTON_SIO_REG_HIFREQ     (* (reg8 *) BUTTON__SIO_REG_HIFREQ)
    #define BUTTON_SIO_CFG            (* (reg8 *) BUTTON__SIO_CFG)
    #define BUTTON_SIO_DIFF           (* (reg8 *) BUTTON__SIO_DIFF)
#endif /* (BUTTON__SIO_CFG) */

/* Interrupt Registers */
#if defined(BUTTON__INTSTAT)
    #define BUTTON_INTSTAT            (* (reg8 *) BUTTON__INTSTAT)
    #define BUTTON_SNAP               (* (reg8 *) BUTTON__SNAP)
    
	#define BUTTON_0_INTTYPE_REG 		(* (reg8 *) BUTTON__0__INTTYPE)
#endif /* (BUTTON__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_BUTTON_H */


/* [] END OF FILE */
