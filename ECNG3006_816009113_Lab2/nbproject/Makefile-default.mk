#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/busyxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/openxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putrxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putsxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readaddr.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readdata.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setcgram.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setddram.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/wcmdxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/writdata.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/DelayFunctions.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/list.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/queue.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/tasks.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/timers.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/heap_1.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/port.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/code_lab2_6.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcopen.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcread.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcconv.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcbusy.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcclose.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcselchconv.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcsetch.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1179744123/busyxlcd.o ${OBJECTDIR}/_ext/1179744123/openxlcd.o ${OBJECTDIR}/_ext/1179744123/putrxlcd.o ${OBJECTDIR}/_ext/1179744123/putsxlcd.o ${OBJECTDIR}/_ext/1179744123/readaddr.o ${OBJECTDIR}/_ext/1179744123/readdata.o ${OBJECTDIR}/_ext/1179744123/setcgram.o ${OBJECTDIR}/_ext/1179744123/setddram.o ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o ${OBJECTDIR}/_ext/1179744123/writdata.o ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o ${OBJECTDIR}/_ext/1179744123/list.o ${OBJECTDIR}/_ext/1179744123/queue.o ${OBJECTDIR}/_ext/1179744123/tasks.o ${OBJECTDIR}/_ext/1179744123/timers.o ${OBJECTDIR}/_ext/1179744123/heap_1.o ${OBJECTDIR}/_ext/1179744123/port.o ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o ${OBJECTDIR}/_ext/1179744123/adcopen.o ${OBJECTDIR}/_ext/1179744123/adcread.o ${OBJECTDIR}/_ext/1179744123/adcconv.o ${OBJECTDIR}/_ext/1179744123/adcbusy.o ${OBJECTDIR}/_ext/1179744123/adcclose.o ${OBJECTDIR}/_ext/1179744123/adcselchconv.o ${OBJECTDIR}/_ext/1179744123/adcsetch.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1179744123/busyxlcd.o.d ${OBJECTDIR}/_ext/1179744123/openxlcd.o.d ${OBJECTDIR}/_ext/1179744123/putrxlcd.o.d ${OBJECTDIR}/_ext/1179744123/putsxlcd.o.d ${OBJECTDIR}/_ext/1179744123/readaddr.o.d ${OBJECTDIR}/_ext/1179744123/readdata.o.d ${OBJECTDIR}/_ext/1179744123/setcgram.o.d ${OBJECTDIR}/_ext/1179744123/setddram.o.d ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o.d ${OBJECTDIR}/_ext/1179744123/writdata.o.d ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o.d ${OBJECTDIR}/_ext/1179744123/list.o.d ${OBJECTDIR}/_ext/1179744123/queue.o.d ${OBJECTDIR}/_ext/1179744123/tasks.o.d ${OBJECTDIR}/_ext/1179744123/timers.o.d ${OBJECTDIR}/_ext/1179744123/heap_1.o.d ${OBJECTDIR}/_ext/1179744123/port.o.d ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o.d ${OBJECTDIR}/_ext/1179744123/adcopen.o.d ${OBJECTDIR}/_ext/1179744123/adcread.o.d ${OBJECTDIR}/_ext/1179744123/adcconv.o.d ${OBJECTDIR}/_ext/1179744123/adcbusy.o.d ${OBJECTDIR}/_ext/1179744123/adcclose.o.d ${OBJECTDIR}/_ext/1179744123/adcselchconv.o.d ${OBJECTDIR}/_ext/1179744123/adcsetch.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1179744123/busyxlcd.o ${OBJECTDIR}/_ext/1179744123/openxlcd.o ${OBJECTDIR}/_ext/1179744123/putrxlcd.o ${OBJECTDIR}/_ext/1179744123/putsxlcd.o ${OBJECTDIR}/_ext/1179744123/readaddr.o ${OBJECTDIR}/_ext/1179744123/readdata.o ${OBJECTDIR}/_ext/1179744123/setcgram.o ${OBJECTDIR}/_ext/1179744123/setddram.o ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o ${OBJECTDIR}/_ext/1179744123/writdata.o ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o ${OBJECTDIR}/_ext/1179744123/list.o ${OBJECTDIR}/_ext/1179744123/queue.o ${OBJECTDIR}/_ext/1179744123/tasks.o ${OBJECTDIR}/_ext/1179744123/timers.o ${OBJECTDIR}/_ext/1179744123/heap_1.o ${OBJECTDIR}/_ext/1179744123/port.o ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o ${OBJECTDIR}/_ext/1179744123/adcopen.o ${OBJECTDIR}/_ext/1179744123/adcread.o ${OBJECTDIR}/_ext/1179744123/adcconv.o ${OBJECTDIR}/_ext/1179744123/adcbusy.o ${OBJECTDIR}/_ext/1179744123/adcclose.o ${OBJECTDIR}/_ext/1179744123/adcselchconv.o ${OBJECTDIR}/_ext/1179744123/adcsetch.o

# Source Files
SOURCEFILES=C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/busyxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/openxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putrxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putsxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readaddr.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readdata.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setcgram.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setddram.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/wcmdxlcd.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/writdata.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/DelayFunctions.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/list.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/queue.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/tasks.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/timers.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/heap_1.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/port.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/code_lab2_6.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcopen.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcread.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcconv.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcbusy.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcclose.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcselchconv.c C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcsetch.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1179744123/busyxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/busyxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/openxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/openxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/putrxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/putrxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/putsxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/putsxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/readaddr.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readaddr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/readaddr.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/readdata.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/readdata.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/setcgram.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setcgram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/setcgram.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/setddram.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setddram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/setddram.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/writdata.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/writdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/writdata.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/DelayFunctions.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/DelayFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/DelayFunctions.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/DelayFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/list.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/list.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/queue.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/queue.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/tasks.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/tasks.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/timers.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/timers.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/timers.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/heap_1.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/heap_1.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/port.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/port.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/code_lab2_6.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/code_lab2_6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/code_lab2_6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/code_lab2_6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcopen.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcopen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcopen.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcopen.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcopen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcopen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcread.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcread.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcread.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcread.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcread.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcconv.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcconv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcconv.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcconv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcbusy.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcbusy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcbusy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcbusy.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcbusy.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcbusy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcbusy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcclose.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcclose.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcclose.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcclose.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcclose.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcclose.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcclose.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcselchconv.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcselchconv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcselchconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcselchconv.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcselchconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcselchconv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcselchconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcsetch.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcsetch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcsetch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcsetch.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcsetch.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcsetch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcsetch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1179744123/busyxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/busyxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/openxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/openxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/putrxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/putrxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/putsxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/putsxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/readaddr.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readaddr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/readaddr.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/readdata.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/readdata.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/setcgram.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setcgram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/setcgram.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/setddram.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setddram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/setddram.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/writdata.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/writdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/writdata.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/DelayFunctions.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/DelayFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/DelayFunctions.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/DelayFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/DelayFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/list.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/list.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/queue.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/queue.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/tasks.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/tasks.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/timers.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/timers.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/timers.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/heap_1.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/heap_1.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/port.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/port.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/code_lab2_6.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/code_lab2_6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/code_lab2_6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/code_lab2_6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/code_lab2_6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcopen.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcopen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcopen.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcopen.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcopen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcopen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcread.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcread.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcread.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcread.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcread.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcread.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcconv.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcconv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcconv.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcconv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcbusy.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcbusy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcbusy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcbusy.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcbusy.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcbusy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcbusy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcclose.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcclose.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcclose.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcclose.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcclose.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcclose.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcclose.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcselchconv.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcselchconv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcselchconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcselchconv.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcselchconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcselchconv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcselchconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1179744123/adcsetch.o: C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179744123" 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcsetch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179744123/adcsetch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X" -I"C:/Users/vasis/Documents/FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../../../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1179744123/adcsetch.o   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/adcsetch.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1179744123/adcsetch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179744123/adcsetch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/18f452.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "C:\Users\vasis\Documents\ECNG3006\FreeRTOSPractice.X\18f452.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/vasis/Documents/ECNG3006/FreeRTOSPractice.X/18f452.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "C:\Users\vasis\Documents\ECNG3006\FreeRTOSPractice.X\18f452.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOSPractice.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
