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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=F:/LO2_816003510/port.c F:/LO2_816003510/putrsxlcd.c F:/LO2_816003510/putsxlcd.c F:/LO2_816003510/queue.c F:/LO2_816003510/busyxlcd.c F:/LO2_816003510/code_lab2_FreeRTOS.c F:/LO2_816003510/croutine.c F:/LO2_816003510/event_groups.c F:/LO2_816003510/heap_1.c F:/LO2_816003510/list.c F:/LO2_816003510/openxlcd.c F:/LO2_816003510/readaddr.c F:/LO2_816003510/readdata.c F:/LO2_816003510/setcgram.c F:/LO2_816003510/setddram.c F:/LO2_816003510/stream_buffer.c F:/LO2_816003510/tasks.c F:/LO2_816003510/wcmdxlcd.c F:/LO2_816003510/writdata.c newfile.c newfile1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1029550747/port.o ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o ${OBJECTDIR}/_ext/1029550747/putsxlcd.o ${OBJECTDIR}/_ext/1029550747/queue.o ${OBJECTDIR}/_ext/1029550747/busyxlcd.o ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o ${OBJECTDIR}/_ext/1029550747/croutine.o ${OBJECTDIR}/_ext/1029550747/event_groups.o ${OBJECTDIR}/_ext/1029550747/heap_1.o ${OBJECTDIR}/_ext/1029550747/list.o ${OBJECTDIR}/_ext/1029550747/openxlcd.o ${OBJECTDIR}/_ext/1029550747/readaddr.o ${OBJECTDIR}/_ext/1029550747/readdata.o ${OBJECTDIR}/_ext/1029550747/setcgram.o ${OBJECTDIR}/_ext/1029550747/setddram.o ${OBJECTDIR}/_ext/1029550747/stream_buffer.o ${OBJECTDIR}/_ext/1029550747/tasks.o ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o ${OBJECTDIR}/_ext/1029550747/writdata.o ${OBJECTDIR}/newfile.o ${OBJECTDIR}/newfile1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1029550747/port.o.d ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o.d ${OBJECTDIR}/_ext/1029550747/putsxlcd.o.d ${OBJECTDIR}/_ext/1029550747/queue.o.d ${OBJECTDIR}/_ext/1029550747/busyxlcd.o.d ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o.d ${OBJECTDIR}/_ext/1029550747/croutine.o.d ${OBJECTDIR}/_ext/1029550747/event_groups.o.d ${OBJECTDIR}/_ext/1029550747/heap_1.o.d ${OBJECTDIR}/_ext/1029550747/list.o.d ${OBJECTDIR}/_ext/1029550747/openxlcd.o.d ${OBJECTDIR}/_ext/1029550747/readaddr.o.d ${OBJECTDIR}/_ext/1029550747/readdata.o.d ${OBJECTDIR}/_ext/1029550747/setcgram.o.d ${OBJECTDIR}/_ext/1029550747/setddram.o.d ${OBJECTDIR}/_ext/1029550747/stream_buffer.o.d ${OBJECTDIR}/_ext/1029550747/tasks.o.d ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o.d ${OBJECTDIR}/_ext/1029550747/writdata.o.d ${OBJECTDIR}/newfile.o.d ${OBJECTDIR}/newfile1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1029550747/port.o ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o ${OBJECTDIR}/_ext/1029550747/putsxlcd.o ${OBJECTDIR}/_ext/1029550747/queue.o ${OBJECTDIR}/_ext/1029550747/busyxlcd.o ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o ${OBJECTDIR}/_ext/1029550747/croutine.o ${OBJECTDIR}/_ext/1029550747/event_groups.o ${OBJECTDIR}/_ext/1029550747/heap_1.o ${OBJECTDIR}/_ext/1029550747/list.o ${OBJECTDIR}/_ext/1029550747/openxlcd.o ${OBJECTDIR}/_ext/1029550747/readaddr.o ${OBJECTDIR}/_ext/1029550747/readdata.o ${OBJECTDIR}/_ext/1029550747/setcgram.o ${OBJECTDIR}/_ext/1029550747/setddram.o ${OBJECTDIR}/_ext/1029550747/stream_buffer.o ${OBJECTDIR}/_ext/1029550747/tasks.o ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o ${OBJECTDIR}/_ext/1029550747/writdata.o ${OBJECTDIR}/newfile.o ${OBJECTDIR}/newfile1.o

# Source Files
SOURCEFILES=F:/LO2_816003510/port.c F:/LO2_816003510/putrsxlcd.c F:/LO2_816003510/putsxlcd.c F:/LO2_816003510/queue.c F:/LO2_816003510/busyxlcd.c F:/LO2_816003510/code_lab2_FreeRTOS.c F:/LO2_816003510/croutine.c F:/LO2_816003510/event_groups.c F:/LO2_816003510/heap_1.c F:/LO2_816003510/list.c F:/LO2_816003510/openxlcd.c F:/LO2_816003510/readaddr.c F:/LO2_816003510/readdata.c F:/LO2_816003510/setcgram.c F:/LO2_816003510/setddram.c F:/LO2_816003510/stream_buffer.c F:/LO2_816003510/tasks.c F:/LO2_816003510/wcmdxlcd.c F:/LO2_816003510/writdata.c newfile.c newfile1.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1029550747/port.o: F:/LO2_816003510/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/port.o   F:/LO2_816003510/port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/putrsxlcd.o: F:/LO2_816003510/putrsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o   F:/LO2_816003510/putrsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/putrsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/putsxlcd.o: F:/LO2_816003510/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/putsxlcd.o   F:/LO2_816003510/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/queue.o: F:/LO2_816003510/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/queue.o   F:/LO2_816003510/queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/busyxlcd.o: F:/LO2_816003510/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/busyxlcd.o   F:/LO2_816003510/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o: F:/LO2_816003510/code_lab2_FreeRTOS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o   F:/LO2_816003510/code_lab2_FreeRTOS.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/croutine.o: F:/LO2_816003510/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/croutine.o   F:/LO2_816003510/croutine.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/event_groups.o: F:/LO2_816003510/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/event_groups.o   F:/LO2_816003510/event_groups.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/heap_1.o: F:/LO2_816003510/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/heap_1.o   F:/LO2_816003510/heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/list.o: F:/LO2_816003510/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/list.o   F:/LO2_816003510/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/openxlcd.o: F:/LO2_816003510/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/openxlcd.o   F:/LO2_816003510/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/readaddr.o: F:/LO2_816003510/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readaddr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/readaddr.o   F:/LO2_816003510/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/readdata.o: F:/LO2_816003510/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/readdata.o   F:/LO2_816003510/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/setcgram.o: F:/LO2_816003510/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setcgram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/setcgram.o   F:/LO2_816003510/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/setddram.o: F:/LO2_816003510/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setddram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/setddram.o   F:/LO2_816003510/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/stream_buffer.o: F:/LO2_816003510/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/stream_buffer.o   F:/LO2_816003510/stream_buffer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/stream_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/stream_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/tasks.o: F:/LO2_816003510/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/tasks.o   F:/LO2_816003510/tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o: F:/LO2_816003510/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o   F:/LO2_816003510/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/writdata.o: F:/LO2_816003510/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/writdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/writdata.o   F:/LO2_816003510/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/newfile.o: newfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newfile.o.d 
	@${RM} ${OBJECTDIR}/newfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newfile.o   newfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newfile.o 
	@${FIXDEPS} "${OBJECTDIR}/newfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/newfile1.o: newfile1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newfile1.o.d 
	@${RM} ${OBJECTDIR}/newfile1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newfile1.o   newfile1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newfile1.o 
	@${FIXDEPS} "${OBJECTDIR}/newfile1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1029550747/port.o: F:/LO2_816003510/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/port.o   F:/LO2_816003510/port.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/putrsxlcd.o: F:/LO2_816003510/putrsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o   F:/LO2_816003510/putrsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/putrsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/putrsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/putsxlcd.o: F:/LO2_816003510/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/putsxlcd.o   F:/LO2_816003510/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/queue.o: F:/LO2_816003510/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/queue.o   F:/LO2_816003510/queue.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/busyxlcd.o: F:/LO2_816003510/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/busyxlcd.o   F:/LO2_816003510/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o: F:/LO2_816003510/code_lab2_FreeRTOS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o   F:/LO2_816003510/code_lab2_FreeRTOS.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/code_lab2_FreeRTOS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/croutine.o: F:/LO2_816003510/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/croutine.o   F:/LO2_816003510/croutine.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/event_groups.o: F:/LO2_816003510/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/event_groups.o   F:/LO2_816003510/event_groups.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/heap_1.o: F:/LO2_816003510/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/heap_1.o   F:/LO2_816003510/heap_1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/list.o: F:/LO2_816003510/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/list.o   F:/LO2_816003510/list.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/openxlcd.o: F:/LO2_816003510/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/openxlcd.o   F:/LO2_816003510/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/readaddr.o: F:/LO2_816003510/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readaddr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/readaddr.o   F:/LO2_816003510/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/readdata.o: F:/LO2_816003510/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/readdata.o   F:/LO2_816003510/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/setcgram.o: F:/LO2_816003510/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setcgram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/setcgram.o   F:/LO2_816003510/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/setddram.o: F:/LO2_816003510/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setddram.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/setddram.o   F:/LO2_816003510/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/stream_buffer.o: F:/LO2_816003510/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/stream_buffer.o   F:/LO2_816003510/stream_buffer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/stream_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/stream_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/tasks.o: F:/LO2_816003510/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/tasks.o   F:/LO2_816003510/tasks.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o: F:/LO2_816003510/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o   F:/LO2_816003510/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1029550747/writdata.o: F:/LO2_816003510/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1029550747" 
	@${RM} ${OBJECTDIR}/_ext/1029550747/writdata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029550747/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1029550747/writdata.o   F:/LO2_816003510/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1029550747/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1029550747/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/newfile.o: newfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newfile.o.d 
	@${RM} ${OBJECTDIR}/newfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newfile.o   newfile.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newfile.o 
	@${FIXDEPS} "${OBJECTDIR}/newfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/newfile1.o: newfile1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newfile1.o.d 
	@${RM} ${OBJECTDIR}/newfile1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newfile1.o   newfile1.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newfile1.o 
	@${FIXDEPS} "${OBJECTDIR}/newfile1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
