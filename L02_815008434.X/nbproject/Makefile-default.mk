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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=tasks.c queue.c port.c list.c heap_1.c code_lab2_1.c writdata.c wcmdxlcd.c setddram.c setcgram.c readdata.c readaddr.c putsxlcd.c putrxlcd.c openxlcd.c busyxlcd.c DelayXLCDFunctions.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/tasks.o ${OBJECTDIR}/queue.o ${OBJECTDIR}/port.o ${OBJECTDIR}/list.o ${OBJECTDIR}/heap_1.o ${OBJECTDIR}/code_lab2_1.o ${OBJECTDIR}/writdata.o ${OBJECTDIR}/wcmdxlcd.o ${OBJECTDIR}/setddram.o ${OBJECTDIR}/setcgram.o ${OBJECTDIR}/readdata.o ${OBJECTDIR}/readaddr.o ${OBJECTDIR}/putsxlcd.o ${OBJECTDIR}/putrxlcd.o ${OBJECTDIR}/openxlcd.o ${OBJECTDIR}/busyxlcd.o ${OBJECTDIR}/DelayXLCDFunctions.o
POSSIBLE_DEPFILES=${OBJECTDIR}/tasks.o.d ${OBJECTDIR}/queue.o.d ${OBJECTDIR}/port.o.d ${OBJECTDIR}/list.o.d ${OBJECTDIR}/heap_1.o.d ${OBJECTDIR}/code_lab2_1.o.d ${OBJECTDIR}/writdata.o.d ${OBJECTDIR}/wcmdxlcd.o.d ${OBJECTDIR}/setddram.o.d ${OBJECTDIR}/setcgram.o.d ${OBJECTDIR}/readdata.o.d ${OBJECTDIR}/readaddr.o.d ${OBJECTDIR}/putsxlcd.o.d ${OBJECTDIR}/putrxlcd.o.d ${OBJECTDIR}/openxlcd.o.d ${OBJECTDIR}/busyxlcd.o.d ${OBJECTDIR}/DelayXLCDFunctions.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/tasks.o ${OBJECTDIR}/queue.o ${OBJECTDIR}/port.o ${OBJECTDIR}/list.o ${OBJECTDIR}/heap_1.o ${OBJECTDIR}/code_lab2_1.o ${OBJECTDIR}/writdata.o ${OBJECTDIR}/wcmdxlcd.o ${OBJECTDIR}/setddram.o ${OBJECTDIR}/setcgram.o ${OBJECTDIR}/readdata.o ${OBJECTDIR}/readaddr.o ${OBJECTDIR}/putsxlcd.o ${OBJECTDIR}/putrxlcd.o ${OBJECTDIR}/openxlcd.o ${OBJECTDIR}/busyxlcd.o ${OBJECTDIR}/DelayXLCDFunctions.o

# Source Files
SOURCEFILES=tasks.c queue.c port.c list.c heap_1.c code_lab2_1.c writdata.c wcmdxlcd.c setddram.c setcgram.c readdata.c readaddr.c putsxlcd.c putrxlcd.c openxlcd.c busyxlcd.c DelayXLCDFunctions.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/tasks.o: tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tasks.o.d 
	@${RM} ${OBJECTDIR}/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/tasks.o   tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/queue.o: queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/queue.o.d 
	@${RM} ${OBJECTDIR}/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/queue.o   queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/port.o: port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/port.o.d 
	@${RM} ${OBJECTDIR}/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/port.o   port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/port.o 
	@${FIXDEPS} "${OBJECTDIR}/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/list.o: list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/list.o.d 
	@${RM} ${OBJECTDIR}/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/list.o   list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/list.o 
	@${FIXDEPS} "${OBJECTDIR}/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/heap_1.o: heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heap_1.o.d 
	@${RM} ${OBJECTDIR}/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/heap_1.o   heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/code_lab2_1.o: code_lab2_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/code_lab2_1.o.d 
	@${RM} ${OBJECTDIR}/code_lab2_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/code_lab2_1.o   code_lab2_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/code_lab2_1.o 
	@${FIXDEPS} "${OBJECTDIR}/code_lab2_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/writdata.o: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.o.d 
	@${RM} ${OBJECTDIR}/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/writdata.o   writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/wcmdxlcd.o: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/wcmdxlcd.o   wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setddram.o: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.o.d 
	@${RM} ${OBJECTDIR}/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setddram.o   setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setcgram.o: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.o.d 
	@${RM} ${OBJECTDIR}/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setcgram.o   setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readdata.o: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.o.d 
	@${RM} ${OBJECTDIR}/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readdata.o   readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readaddr.o: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.o.d 
	@${RM} ${OBJECTDIR}/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readaddr.o   readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putsxlcd.o: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putsxlcd.o   putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putrxlcd.o: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putrxlcd.o   putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/openxlcd.o: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/openxlcd.o   openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/busyxlcd.o: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/busyxlcd.o   busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/DelayXLCDFunctions.o: DelayXLCDFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DelayXLCDFunctions.o.d 
	@${RM} ${OBJECTDIR}/DelayXLCDFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/DelayXLCDFunctions.o   DelayXLCDFunctions.c 
	@${DEP_GEN} -d ${OBJECTDIR}/DelayXLCDFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/DelayXLCDFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/tasks.o: tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tasks.o.d 
	@${RM} ${OBJECTDIR}/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/tasks.o   tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/queue.o: queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/queue.o.d 
	@${RM} ${OBJECTDIR}/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/queue.o   queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/port.o: port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/port.o.d 
	@${RM} ${OBJECTDIR}/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/port.o   port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/port.o 
	@${FIXDEPS} "${OBJECTDIR}/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/list.o: list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/list.o.d 
	@${RM} ${OBJECTDIR}/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/list.o   list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/list.o 
	@${FIXDEPS} "${OBJECTDIR}/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/heap_1.o: heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heap_1.o.d 
	@${RM} ${OBJECTDIR}/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/heap_1.o   heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/code_lab2_1.o: code_lab2_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/code_lab2_1.o.d 
	@${RM} ${OBJECTDIR}/code_lab2_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/code_lab2_1.o   code_lab2_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/code_lab2_1.o 
	@${FIXDEPS} "${OBJECTDIR}/code_lab2_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/writdata.o: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.o.d 
	@${RM} ${OBJECTDIR}/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/writdata.o   writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/wcmdxlcd.o: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/wcmdxlcd.o   wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setddram.o: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.o.d 
	@${RM} ${OBJECTDIR}/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setddram.o   setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setcgram.o: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.o.d 
	@${RM} ${OBJECTDIR}/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setcgram.o   setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readdata.o: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.o.d 
	@${RM} ${OBJECTDIR}/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readdata.o   readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readaddr.o: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.o.d 
	@${RM} ${OBJECTDIR}/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readaddr.o   readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putsxlcd.o: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putsxlcd.o   putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putrxlcd.o: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putrxlcd.o   putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/openxlcd.o: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/openxlcd.o   openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/busyxlcd.o: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/busyxlcd.o   busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/DelayXLCDFunctions.o: DelayXLCDFunctions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DelayXLCDFunctions.o.d 
	@${RM} ${OBJECTDIR}/DelayXLCDFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/ECNG3006/L02_815008434.X" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/include" -I"../FreeRTOSv10.2.1/FreeRTOS/Source/portable/MPLAB/PIC18F" -I"../../Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa- -Ls  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/DelayXLCDFunctions.o   DelayXLCDFunctions.c 
	@${DEP_GEN} -d ${OBJECTDIR}/DelayXLCDFunctions.o 
	@${FIXDEPS} "${OBJECTDIR}/DelayXLCDFunctions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    18f452.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "18f452.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   18f452.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "18f452.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/L02_815008434.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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