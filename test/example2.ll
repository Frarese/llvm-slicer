; ModuleID = 'simple.bc'
target datalayout = "e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-pc-linux-gnu"

%struct.regs = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i32, i16, i32, i11, i128, i128, i128, i128, i128, i128, i128, i128, i32, i32 }>
%struct.rlimit = type { i32, i32 }

define internal x86_stdcallcc void @sub_8048420(%struct.regs*) {
entry:
  %STACK_LIMIT_val = alloca i32, !mcsema_real_eip !2
  %STACK_BASE_val = alloca i32, !mcsema_real_eip !2
  %XMM7_val = alloca i128, !mcsema_real_eip !2
  %XMM6_val = alloca i128, !mcsema_real_eip !2
  %XMM5_val = alloca i128, !mcsema_real_eip !2
  %XMM4_val = alloca i128, !mcsema_real_eip !2
  %XMM3_val = alloca i128, !mcsema_real_eip !2
  %XMM2_val = alloca i128, !mcsema_real_eip !2
  %XMM1_val = alloca i128, !mcsema_real_eip !2
  %XMM0_val = alloca i128, !mcsema_real_eip !2
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF_val = alloca i32, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !2
  %FPU_LASTIP_OFF_val = alloca i32, !mcsema_real_eip !2
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !2
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %FPU_IM_val = alloca i1, !mcsema_real_eip !2
  %FPU_DM_val = alloca i1, !mcsema_real_eip !2
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !2
  %FPU_OM_val = alloca i1, !mcsema_real_eip !2
  %FPU_UM_val = alloca i1, !mcsema_real_eip !2
  %FPU_PM_val = alloca i1, !mcsema_real_eip !2
  %FPU_PC_val = alloca i2, !mcsema_real_eip !2
  %FPU_RC_val = alloca i2, !mcsema_real_eip !2
  %FPU_X_val = alloca i1, !mcsema_real_eip !2
  %FPU_IE_val = alloca i1, !mcsema_real_eip !2
  %FPU_DE_val = alloca i1, !mcsema_real_eip !2
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !2
  %FPU_OE_val = alloca i1, !mcsema_real_eip !2
  %FPU_UE_val = alloca i1, !mcsema_real_eip !2
  %FPU_PE_val = alloca i1, !mcsema_real_eip !2
  %FPU_SF_val = alloca i1, !mcsema_real_eip !2
  %FPU_ES_val = alloca i1, !mcsema_real_eip !2
  %FPU_C0_val = alloca i1, !mcsema_real_eip !2
  %FPU_C1_val = alloca i1, !mcsema_real_eip !2
  %FPU_C2_val = alloca i1, !mcsema_real_eip !2
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !2
  %FPU_C3_val = alloca i1, !mcsema_real_eip !2
  %FPU_B_val = alloca i1, !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %DF_val = alloca i1, !mcsema_real_eip !2
  %OF_val = alloca i1, !mcsema_real_eip !2
  %SF_val = alloca i1, !mcsema_real_eip !2
  %CF_val = alloca i1, !mcsema_real_eip !2
  %AF_val = alloca i1, !mcsema_real_eip !2
  %PF_val = alloca i1, !mcsema_real_eip !2
  %ZF_val = alloca i1, !mcsema_real_eip !2
  %ESP_val = alloca i32, !mcsema_real_eip !2
  %EBP_val = alloca i32, !mcsema_real_eip !2
  %EDI_val = alloca i32, !mcsema_real_eip !2
  %ESI_val = alloca i32, !mcsema_real_eip !2
  %EDX_val = alloca i32, !mcsema_real_eip !2
  %ECX_val = alloca i32, !mcsema_real_eip !2
  %EBX_val = alloca i32, !mcsema_real_eip !2
  %EAX_val = alloca i32, !mcsema_real_eip !2
  %EAX = getelementptr inbounds %struct.regs* %0, i32 0, i32 0, !mcsema_real_eip !2
  %1 = load i32* %EAX, !mcsema_real_eip !2
  store i32 %1, i32* %EAX_val, !mcsema_real_eip !2
  %EBX = getelementptr inbounds %struct.regs* %0, i32 0, i32 1, !mcsema_real_eip !2
  %2 = load i32* %EBX, !mcsema_real_eip !2
  store i32 %2, i32* %EBX_val, !mcsema_real_eip !2
  %ECX = getelementptr inbounds %struct.regs* %0, i32 0, i32 2, !mcsema_real_eip !2
  %3 = load i32* %ECX, !mcsema_real_eip !2
  store i32 %3, i32* %ECX_val, !mcsema_real_eip !2
  %EDX = getelementptr inbounds %struct.regs* %0, i32 0, i32 3, !mcsema_real_eip !2
  %4 = load i32* %EDX, !mcsema_real_eip !2
  store i32 %4, i32* %EDX_val, !mcsema_real_eip !2
  %ESI = getelementptr inbounds %struct.regs* %0, i32 0, i32 4, !mcsema_real_eip !2
  %5 = load i32* %ESI, !mcsema_real_eip !2
  store i32 %5, i32* %ESI_val, !mcsema_real_eip !2
  %EDI = getelementptr inbounds %struct.regs* %0, i32 0, i32 5, !mcsema_real_eip !2
  %6 = load i32* %EDI, !mcsema_real_eip !2
  store i32 %6, i32* %EDI_val, !mcsema_real_eip !2
  %ESP = getelementptr inbounds %struct.regs* %0, i32 0, i32 6, !mcsema_real_eip !2
  %7 = load i32* %ESP, !mcsema_real_eip !2
  store i32 %7, i32* %ESP_val, !mcsema_real_eip !2
  %EBP = getelementptr inbounds %struct.regs* %0, i32 0, i32 7, !mcsema_real_eip !2
  %8 = load i32* %EBP, !mcsema_real_eip !2
  store i32 %8, i32* %EBP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i32 0, i32 8, !mcsema_real_eip !2
  %9 = load i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %9, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i32 0, i32 9, !mcsema_real_eip !2
  %10 = load i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %10, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i32 0, i32 10, !mcsema_real_eip !2
  %11 = load i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %11, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i32 0, i32 11, !mcsema_real_eip !2
  %12 = load i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %12, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i32 0, i32 12, !mcsema_real_eip !2
  %13 = load i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %13, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i32 0, i32 13, !mcsema_real_eip !2
  %14 = load i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %14, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i32 0, i32 14, !mcsema_real_eip !2
  %15 = load i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %15, i1* %DF_val, !mcsema_real_eip !2
  %16 = getelementptr inbounds %struct.regs* %0, i32 0, i32 15, i32 0, !mcsema_real_eip !2
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !2
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 96, i32 8, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i32 0, i32 16, !mcsema_real_eip !2
  %19 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i32 0, i32 17, !mcsema_real_eip !2
  %20 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i32 0, i32 18, !mcsema_real_eip !2
  %21 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %21, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i32 0, i32 19, !mcsema_real_eip !2
  %22 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i32 0, i32 20, !mcsema_real_eip !2
  %23 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i32 0, i32 21, !mcsema_real_eip !2
  %24 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i32 0, i32 22, !mcsema_real_eip !2
  %25 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %25, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i32 0, i32 23, !mcsema_real_eip !2
  %26 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %26, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i32 0, i32 24, !mcsema_real_eip !2
  %27 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %27, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i32 0, i32 25, !mcsema_real_eip !2
  %28 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i32 0, i32 26, !mcsema_real_eip !2
  %29 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i32 0, i32 27, !mcsema_real_eip !2
  %30 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %30, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i32 0, i32 28, !mcsema_real_eip !2
  %31 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i32 0, i32 29, !mcsema_real_eip !2
  %32 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i32 0, i32 30, !mcsema_real_eip !2
  %33 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i32 0, i32 31, !mcsema_real_eip !2
  %34 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %34, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i32 0, i32 32, !mcsema_real_eip !2
  %35 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %35, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i32 0, i32 33, !mcsema_real_eip !2
  %36 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i32 0, i32 34, !mcsema_real_eip !2
  %37 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i32 0, i32 35, !mcsema_real_eip !2
  %38 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i32 0, i32 36, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i32 0, i32 37, !mcsema_real_eip !2
  %40 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i32 0, i32 38, !mcsema_real_eip !2
  %41 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IM_val, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs* %0, i32 0, i32 39, i32 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %45 = load i64* %43, align 4
  store i64 %45, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i32 0, i32 40, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %46, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i32 0, i32 41, !mcsema_real_eip !2
  %47 = load i32* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i32 %47, i32* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i32 0, i32 42, !mcsema_real_eip !2
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %48, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i32 0, i32 43, !mcsema_real_eip !2
  %49 = load i32* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i32 %49, i32* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs* %0, i32 0, i32 44, !mcsema_real_eip !2
  %50 = load i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  store i11 %50, i11* %FPU_FOPCODE_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i32 0, i32 45, !mcsema_real_eip !2
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %51, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i32 0, i32 46, !mcsema_real_eip !2
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %52, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i32 0, i32 47, !mcsema_real_eip !2
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %53, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i32 0, i32 48, !mcsema_real_eip !2
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %54, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i32 0, i32 49, !mcsema_real_eip !2
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %55, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i32 0, i32 50, !mcsema_real_eip !2
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %56, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i32 0, i32 51, !mcsema_real_eip !2
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %57, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i32 0, i32 52, !mcsema_real_eip !2
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %58, i128* %XMM7_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i32 0, i32 53, !mcsema_real_eip !2
  %59 = load i32* %STACK_BASE, !mcsema_real_eip !2
  store i32 %59, i32* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i32 0, i32 54, !mcsema_real_eip !2
  %60 = load i32* %STACK_LIMIT, !mcsema_real_eip !2
  store i32 %60, i32* %STACK_LIMIT_val, !mcsema_real_eip !2
  %61 = load i32* %EBP_val, !mcsema_real_eip !2
  %62 = load i32* %ESP_val, !mcsema_real_eip !2
  %63 = add i32 %62, -4
  %64 = inttoptr i32 %63 to i32*, !mcsema_real_eip !2
  store i32 %61, i32* %64, !mcsema_real_eip !2
  store i32 %63, i32* %EBP_val, !mcsema_real_eip !3
  %65 = and i32 %63, -16, !mcsema_real_eip !4
  %66 = add i32 %65, -32
  %67 = xor i32 %66, %65, !mcsema_real_eip !5
  %68 = and i32 %67, 16, !mcsema_real_eip !5
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !5
  store i1 %69, i1* %AF_val, !mcsema_real_eip !5
  %70 = trunc i32 %66 to i8, !mcsema_real_eip !5
  %71 = tail call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !5
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  store i1 %73, i1* %PF_val, !mcsema_real_eip !5
  %74 = icmp eq i32 %66, 0, !mcsema_real_eip !5
  store i1 %74, i1* %ZF_val, !mcsema_real_eip !5
  %75 = icmp slt i32 %66, 0
  store i1 %75, i1* %SF_val, !mcsema_real_eip !5
  %76 = icmp ult i32 %65, 32, !mcsema_real_eip !5
  store i1 %76, i1* %CF_val, !mcsema_real_eip !5
  %77 = and i32 %67, %63, !mcsema_real_eip !5
  %78 = icmp slt i32 %77, 0
  store i1 %78, i1* %OF_val, !mcsema_real_eip !5
  store i32 %66, i32* %ESP_val, !mcsema_real_eip !5
  %79 = add i32 %65, -4, !mcsema_real_eip !6
  %80 = inttoptr i32 %79 to i32*, !mcsema_real_eip !6
  %81 = ptrtoint i32* %80 to i32, !mcsema_real_eip !6
  %82 = inttoptr i32 %81 to i32*, !mcsema_real_eip !6
  store i32 1, i32* %82, !mcsema_real_eip !6
  %83 = load i32* %ESP_val, !mcsema_real_eip !7
  %84 = add i32 %83, 24, !mcsema_real_eip !7
  %85 = inttoptr i32 %84 to i32*, !mcsema_real_eip !7
  %86 = ptrtoint i32* %85 to i32, !mcsema_real_eip !7
  %87 = inttoptr i32 %86 to i32*, !mcsema_real_eip !7
  store i32 1, i32* %87, !mcsema_real_eip !7
  %88 = load i32* %EBP_val, !mcsema_real_eip !8
  %89 = add i32 %88, 12, !mcsema_real_eip !8
  %90 = inttoptr i32 %89 to i32*, !mcsema_real_eip !8
  %91 = ptrtoint i32* %90 to i32, !mcsema_real_eip !8
  %92 = inttoptr i32 %91 to i32*, !mcsema_real_eip !8
  %93 = load i32* %92, !mcsema_real_eip !8
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %93, i32 4)
  %94 = extractvalue { i32, i1 } %uadd, 0
  %95 = xor i32 %94, %93, !mcsema_real_eip !9
  %96 = and i32 %95, 16, !mcsema_real_eip !9
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !9
  store i1 %97, i1* %AF_val, !mcsema_real_eip !9
  %98 = icmp slt i32 %94, 0
  store i1 %98, i1* %SF_val, !mcsema_real_eip !9
  %99 = icmp eq i32 %94, 0, !mcsema_real_eip !9
  store i1 %99, i1* %ZF_val, !mcsema_real_eip !9
  %100 = xor i32 %93, -2147483648, !mcsema_real_eip !9
  %101 = and i32 %95, %100, !mcsema_real_eip !9
  %102 = icmp slt i32 %101, 0
  store i1 %102, i1* %OF_val, !mcsema_real_eip !9
  %103 = trunc i32 %94 to i8, !mcsema_real_eip !9
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !9
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF_val, !mcsema_real_eip !9
  %107 = extractvalue { i32, i1 } %uadd, 1
  store i1 %107, i1* %CF_val, !mcsema_real_eip !9
  store i32 %94, i32* %EAX_val, !mcsema_real_eip !9
  %108 = inttoptr i32 %94 to i32*, !mcsema_real_eip !10
  %109 = ptrtoint i32* %108 to i32, !mcsema_real_eip !10
  %110 = inttoptr i32 %109 to i32*, !mcsema_real_eip !10
  %111 = load i32* %110, !mcsema_real_eip !10
  store i32 %111, i32* %EAX_val, !mcsema_real_eip !10
  %112 = load i32* %ESP_val, !mcsema_real_eip !11
  %113 = inttoptr i32 %112 to i32*, !mcsema_real_eip !11
  %114 = ptrtoint i32* %113 to i32, !mcsema_real_eip !11
  %115 = inttoptr i32 %114 to i32*, !mcsema_real_eip !11
  store i32 %111, i32* %115, !mcsema_real_eip !11
  %116 = load i32* %ESP_val, !mcsema_real_eip !12
  %117 = inttoptr i32 %116 to i32*, !mcsema_real_eip !12
  %118 = load i32* %117, !mcsema_real_eip !12
  %119 = tail call i32 @atoi(i32 %118), !mcsema_real_eip !12
  store i1 false, i1* %DF_val, !mcsema_real_eip !12
  store i32 %119, i32* %EAX_val, !mcsema_real_eip !12
  %120 = load i32* %ESP_val, !mcsema_real_eip !13
  %121 = add i32 %120, 20, !mcsema_real_eip !13
  %122 = inttoptr i32 %121 to i32*, !mcsema_real_eip !13
  %123 = ptrtoint i32* %122 to i32, !mcsema_real_eip !13
  %124 = inttoptr i32 %123 to i32*, !mcsema_real_eip !13
  store i32 %119, i32* %124, !mcsema_real_eip !13
  %125 = load i32* %ESP_val, !mcsema_real_eip !14
  %126 = add i32 %125, 28, !mcsema_real_eip !14
  %127 = inttoptr i32 %126 to i32*, !mcsema_real_eip !14
  %128 = ptrtoint i32* %127 to i32, !mcsema_real_eip !14
  %129 = inttoptr i32 %128 to i32*, !mcsema_real_eip !14
  %130 = load i32* %129, !mcsema_real_eip !14
  store i32 %130, i32* %EAX_val, !mcsema_real_eip !14
  %131 = load i32* %ESP_val, !mcsema_real_eip !15
  %132 = add i32 %131, 20, !mcsema_real_eip !15
  %133 = inttoptr i32 %132 to i32*, !mcsema_real_eip !15
  %134 = ptrtoint i32* %133 to i32, !mcsema_real_eip !15
  %135 = inttoptr i32 %134 to i32*, !mcsema_real_eip !15
  %136 = load i32* %135, !mcsema_real_eip !15
  %137 = sub i32 %130, %136, !mcsema_real_eip !15
  %138 = xor i32 %137, %130, !mcsema_real_eip !15
  %139 = xor i32 %138, %136, !mcsema_real_eip !15
  %140 = and i32 %139, 16, !mcsema_real_eip !15
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !15
  store i1 %141, i1* %AF_val, !mcsema_real_eip !15
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !15
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !15
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  store i1 %145, i1* %PF_val, !mcsema_real_eip !15
  %146 = icmp eq i32 %130, %136
  store i1 %146, i1* %ZF_val, !mcsema_real_eip !15
  %147 = icmp slt i32 %137, 0
  store i1 %147, i1* %SF_val, !mcsema_real_eip !15
  %148 = icmp ult i32 %130, %136, !mcsema_real_eip !15
  store i1 %148, i1* %CF_val, !mcsema_real_eip !15
  %149 = xor i32 %136, %130, !mcsema_real_eip !15
  %150 = and i32 %138, %149, !mcsema_real_eip !15
  %151 = icmp slt i32 %150, 0
  store i1 %151, i1* %OF_val, !mcsema_real_eip !15
  %152 = load i1* %SF_val, !mcsema_real_eip !16
  %153 = xor i1 %152, %151
  %154 = load i1* %ZF_val, !mcsema_real_eip !16
  %155 = or i1 %154, %153, !mcsema_real_eip !16
  br i1 %155, label %block_0x804844f.preheader, label %block_0x804846b, !mcsema_real_eip !16

block_0x804844f.preheader:                        ; preds = %entry
  br label %block_0x804844f

block_0x804844f:                                  ; preds = %block_0x804844f, %block_0x804844f.preheader
  %156 = load i32* %ESP_val, !mcsema_real_eip !17
  %157 = add i32 %156, 24, !mcsema_real_eip !17
  %158 = inttoptr i32 %157 to i32*, !mcsema_real_eip !17
  %159 = ptrtoint i32* %158 to i32, !mcsema_real_eip !17
  %160 = inttoptr i32 %159 to i32*, !mcsema_real_eip !17
  %161 = load i32* %160, !mcsema_real_eip !17
  store i32 %161, i32* %EAX_val, !mcsema_real_eip !17
  %162 = load i32* %ESP_val, !mcsema_real_eip !18
  %163 = add i32 %162, 28, !mcsema_real_eip !18
  %164 = inttoptr i32 %163 to i32*, !mcsema_real_eip !18
  %165 = ptrtoint i32* %164 to i32, !mcsema_real_eip !18
  %166 = inttoptr i32 %165 to i32*, !mcsema_real_eip !18
  %167 = load i32* %166, !mcsema_real_eip !18
  %168 = sext i32 %161 to i64, !mcsema_real_eip !18
  %169 = sext i32 %167 to i64, !mcsema_real_eip !18
  %170 = mul i64 %169, %168, !mcsema_real_eip !18
  %171 = mul i32 %167, %161, !mcsema_real_eip !18
  %172 = sext i32 %171 to i64, !mcsema_real_eip !18
  %173 = icmp ne i64 %172, %170, !mcsema_real_eip !18
  store i1 %173, i1* %SF_val, !mcsema_real_eip !18
  store i1 %173, i1* %OF_val, !mcsema_real_eip !18
  store i32 %171, i32* %EAX_val, !mcsema_real_eip !18
  %174 = load i32* %ESP_val, !mcsema_real_eip !19
  %175 = add i32 %174, 24, !mcsema_real_eip !19
  %176 = inttoptr i32 %175 to i32*, !mcsema_real_eip !19
  %177 = ptrtoint i32* %176 to i32, !mcsema_real_eip !19
  %178 = inttoptr i32 %177 to i32*, !mcsema_real_eip !19
  store i32 %171, i32* %178, !mcsema_real_eip !19
  %179 = load i32* %ESP_val, !mcsema_real_eip !20
  %180 = add i32 %179, 28, !mcsema_real_eip !20
  %181 = inttoptr i32 %180 to i32*, !mcsema_real_eip !20
  %182 = ptrtoint i32* %181 to i32, !mcsema_real_eip !20
  %183 = inttoptr i32 %182 to i32*, !mcsema_real_eip !20
  %184 = load i32* %183, !mcsema_real_eip !20
  %uadd55 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 1)
  %185 = extractvalue { i32, i1 } %uadd55, 0
  %186 = xor i32 %185, %184, !mcsema_real_eip !20
  %187 = and i32 %186, 16, !mcsema_real_eip !20
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !20
  store i1 %188, i1* %AF_val, !mcsema_real_eip !20
  %189 = icmp slt i32 %185, 0
  store i1 %189, i1* %SF_val, !mcsema_real_eip !20
  %190 = icmp eq i32 %185, 0, !mcsema_real_eip !20
  store i1 %190, i1* %ZF_val, !mcsema_real_eip !20
  %191 = xor i32 %184, -2147483648, !mcsema_real_eip !20
  %192 = and i32 %186, %191, !mcsema_real_eip !20
  %193 = icmp slt i32 %192, 0
  store i1 %193, i1* %OF_val, !mcsema_real_eip !20
  %194 = trunc i32 %185 to i8, !mcsema_real_eip !20
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !20
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF_val, !mcsema_real_eip !20
  %198 = extractvalue { i32, i1 } %uadd55, 1
  store i1 %198, i1* %CF_val, !mcsema_real_eip !20
  store i32 %185, i32* %183, !mcsema_real_eip !20
  %199 = load i32* %ESP_val, !mcsema_real_eip !14
  %200 = add i32 %199, 28, !mcsema_real_eip !14
  %201 = inttoptr i32 %200 to i32*, !mcsema_real_eip !14
  %202 = ptrtoint i32* %201 to i32, !mcsema_real_eip !14
  %203 = inttoptr i32 %202 to i32*, !mcsema_real_eip !14
  %204 = load i32* %203, !mcsema_real_eip !14
  store i32 %204, i32* %EAX_val, !mcsema_real_eip !14
  %205 = load i32* %ESP_val, !mcsema_real_eip !15
  %206 = add i32 %205, 20, !mcsema_real_eip !15
  %207 = inttoptr i32 %206 to i32*, !mcsema_real_eip !15
  %208 = ptrtoint i32* %207 to i32, !mcsema_real_eip !15
  %209 = inttoptr i32 %208 to i32*, !mcsema_real_eip !15
  %210 = load i32* %209, !mcsema_real_eip !15
  %211 = sub i32 %204, %210, !mcsema_real_eip !15
  %212 = xor i32 %211, %204, !mcsema_real_eip !15
  %213 = xor i32 %212, %210, !mcsema_real_eip !15
  %214 = and i32 %213, 16, !mcsema_real_eip !15
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !15
  store i1 %215, i1* %AF_val, !mcsema_real_eip !15
  %216 = trunc i32 %211 to i8, !mcsema_real_eip !15
  %217 = tail call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !15
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  store i1 %219, i1* %PF_val, !mcsema_real_eip !15
  %220 = icmp eq i32 %204, %210
  store i1 %220, i1* %ZF_val, !mcsema_real_eip !15
  %221 = icmp slt i32 %211, 0
  store i1 %221, i1* %SF_val, !mcsema_real_eip !15
  %222 = icmp ult i32 %204, %210, !mcsema_real_eip !15
  store i1 %222, i1* %CF_val, !mcsema_real_eip !15
  %223 = xor i32 %210, %204, !mcsema_real_eip !15
  %224 = and i32 %212, %223, !mcsema_real_eip !15
  %225 = icmp slt i32 %224, 0
  store i1 %225, i1* %OF_val, !mcsema_real_eip !15
  %226 = load i1* %SF_val, !mcsema_real_eip !16
  %227 = xor i1 %226, %225
  %228 = load i1* %ZF_val, !mcsema_real_eip !16
  %229 = or i1 %228, %227, !mcsema_real_eip !16
  br i1 %229, label %block_0x804844f, label %block_0x804846b.loopexit, !mcsema_real_eip !16

block_0x804846b.loopexit:                         ; preds = %block_0x804844f
  br label %block_0x804846b

block_0x804846b:                                  ; preds = %block_0x804846b.loopexit, %entry
  %230 = load i32* %ESP_val, !mcsema_real_eip !21
  %231 = add i32 %230, 24, !mcsema_real_eip !21
  %232 = inttoptr i32 %231 to i32*, !mcsema_real_eip !21
  %233 = ptrtoint i32* %232 to i32, !mcsema_real_eip !21
  %234 = inttoptr i32 %233 to i32*, !mcsema_real_eip !21
  %235 = load i32* %234, !mcsema_real_eip !21
  store i32 %235, i32* %EAX_val, !mcsema_real_eip !21
  %236 = load i32* %EBP_val, !mcsema_real_eip !22
  store i32 %236, i32* %ESP_val, !mcsema_real_eip !22
  %237 = inttoptr i32 %236 to i32*, !mcsema_real_eip !22
  %238 = load i32* %237, !mcsema_real_eip !22
  store i32 %238, i32* %EBP_val, !mcsema_real_eip !22
  %239 = add i32 %236, 8, !mcsema_real_eip !23
  store i32 %239, i32* %ESP_val, !mcsema_real_eip !23
  %240 = load i32* %EAX_val, !mcsema_real_eip !23
  store i32 %240, i32* %EAX, !mcsema_real_eip !23
  %241 = load i32* %EBX_val, !mcsema_real_eip !23
  store i32 %241, i32* %EBX, !mcsema_real_eip !23
  %242 = load i32* %ECX_val, !mcsema_real_eip !23
  store i32 %242, i32* %ECX, !mcsema_real_eip !23
  %243 = load i32* %EDX_val, !mcsema_real_eip !23
  store i32 %243, i32* %EDX, !mcsema_real_eip !23
  %244 = load i32* %ESI_val, !mcsema_real_eip !23
  store i32 %244, i32* %ESI, !mcsema_real_eip !23
  %245 = load i32* %EDI_val, !mcsema_real_eip !23
  store i32 %245, i32* %EDI, !mcsema_real_eip !23
  %246 = load i32* %ESP_val, !mcsema_real_eip !23
  store i32 %246, i32* %ESP, !mcsema_real_eip !23
  %247 = load i32* %EBP_val, !mcsema_real_eip !23
  store i32 %247, i32* %EBP, !mcsema_real_eip !23
  %248 = load i1* %CF_val, !mcsema_real_eip !23
  store i1 %248, i1* %CF, align 1, !mcsema_real_eip !23
  %249 = load i1* %PF_val, !mcsema_real_eip !23
  store i1 %249, i1* %PF, align 1, !mcsema_real_eip !23
  %250 = load i1* %AF_val, !mcsema_real_eip !23
  store i1 %250, i1* %AF, align 1, !mcsema_real_eip !23
  %251 = load i1* %ZF_val, !mcsema_real_eip !23
  store i1 %251, i1* %ZF, align 1, !mcsema_real_eip !23
  %252 = load i1* %SF_val, !mcsema_real_eip !23
  store i1 %252, i1* %SF, align 1, !mcsema_real_eip !23
  %253 = load i1* %OF_val, !mcsema_real_eip !23
  store i1 %253, i1* %OF, align 1, !mcsema_real_eip !23
  %254 = load i1* %DF_val, !mcsema_real_eip !23
  store i1 %254, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 96, i32 4, i1 false), !mcsema_real_eip !23
  %255 = load i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %255, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %256 = load i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %256, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %257 = load i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %257, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %258 = load i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %258, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %259 = load i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %259, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %260 = load i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %260, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %261 = load i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %261, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %262 = load i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %262, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %263 = load i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %263, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %264 = load i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %264, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %265 = load i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %265, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %266 = load i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %266, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %267 = load i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %267, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %268 = load i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %268, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %269 = load i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %269, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %270 = load i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %270, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %271 = load i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %271, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %272 = load i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %272, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %273 = load i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %273, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %274 = load i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %274, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %275 = load i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %275, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %276 = load i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %276, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %277 = load i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %277, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %278 = load i64* %44, align 4
  store i64 %278, i64* %43, align 4
  %279 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %279, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %280 = load i32* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i32 %280, i32* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %281 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %281, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %282 = load i32* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i32 %282, i32* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %283 = load i11* %FPU_FOPCODE_val, !mcsema_real_eip !23
  store i11 %283, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %284 = load i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %284, i128* %XMM0, align 1, !mcsema_real_eip !23
  %285 = load i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %285, i128* %XMM1, align 1, !mcsema_real_eip !23
  %286 = load i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %286, i128* %XMM2, align 1, !mcsema_real_eip !23
  %287 = load i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %287, i128* %XMM3, align 1, !mcsema_real_eip !23
  %288 = load i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %288, i128* %XMM4, align 1, !mcsema_real_eip !23
  %289 = load i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %289, i128* %XMM5, align 1, !mcsema_real_eip !23
  %290 = load i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %290, i128* %XMM6, align 1, !mcsema_real_eip !23
  %291 = load i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %291, i128* %XMM7, align 1, !mcsema_real_eip !23
  %292 = load i32* %STACK_BASE_val, !mcsema_real_eip !23
  store i32 %292, i32* %STACK_BASE, align 1, !mcsema_real_eip !23
  %293 = load i32* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i32 %293, i32* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

declare i32 @atoi(i32)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define i32 @simple_entry(i32, i32) {
driverBlock:
  %2 = alloca %struct.regs
  %rl = alloca %struct.rlimit
  %3 = getelementptr inbounds %struct.rlimit* %rl, i32 0, i32 0
  store i32 0, i32* %3
  %4 = ptrtoint %struct.rlimit* %rl to i32
  %5 = call i32 @getrlimit(i32 3, i32 %4)
  %6 = getelementptr %struct.rlimit* %rl, i32 0, i32 0
  %7 = load i32* %6
  %8 = call i32 @mmap(i32 0, i32 %7, i32 3, i32 131106, i32 -1, i32 0)
  %9 = add i32 %8, %7
  %10 = add i32 %9, -52
  %11 = inttoptr i32 %10 to i32*
  store i32 %1, i32* %11
  %12 = add i32 %9, -56
  %13 = inttoptr i32 %12 to i32*
  store i32 %0, i32* %13
  %14 = add i32 %9, -60
  %15 = getelementptr inbounds %struct.regs* %2, i32 0, i32 6
  %16 = getelementptr inbounds %struct.regs* %2, i32 0, i32 53
  %17 = getelementptr inbounds %struct.regs* %2, i32 0, i32 54
  store i32 %8, i32* %17
  store i32 %9, i32* %16
  %18 = getelementptr inbounds %struct.regs* %2, i32 0, i32 14
  store i1 false, i1* %18
  store i32 %14, i32* %15
  call x86_stdcallcc void @sub_8048420(%struct.regs* %2)
  %rl1 = alloca %struct.rlimit
  %19 = getelementptr inbounds %struct.rlimit* %rl1, i32 0, i32 0
  store i32 0, i32* %19
  %20 = ptrtoint %struct.rlimit* %rl1 to i32
  %21 = call i32 @getrlimit(i32 3, i32 %20)
  %22 = getelementptr %struct.rlimit* %rl1, i32 0, i32 0
  %23 = load i32* %22
  %24 = tail call i32 @munmap(i32 %8, i32 %23)
  %25 = getelementptr inbounds %struct.regs* %2, i32 0, i32 0
  %26 = load i32* %25
  ret i32 %26
}

declare i32 @getrlimit(i32, i32)

declare i32 @mmap(i32, i32, i32, i32, i32, i32)

declare i32 @munmap(i32, i32)

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 134513696, [12 x i8] c"\09pushl\09%ebp\00"}
!3 = metadata !{i64 134513697, [17 x i8] c"\09movl\09%esp, %ebp\00"}
!4 = metadata !{i64 134513699, [17 x i8] c"\09andl\09$-16, %esp\00"}
!5 = metadata !{i64 134513702, [16 x i8] c"\09subl\09$32, %esp\00"}
!6 = metadata !{i64 134513705, [19 x i8] c"\09movl\09$1, 28(%esp)\00"}
!7 = metadata !{i64 134513713, [19 x i8] c"\09movl\09$1, 24(%esp)\00"}
!8 = metadata !{i64 134513721, [21 x i8] c"\09movl\0912(%ebp), %eax\00"}
!9 = metadata !{i64 134513724, [15 x i8] c"\09addl\09$4, %eax\00"}
!10 = metadata !{i64 134513727, [19 x i8] c"\09movl\09(%eax), %eax\00"}
!11 = metadata !{i64 134513729, [19 x i8] c"\09movl\09%eax, (%esp)\00"}
!12 = metadata !{i64 134513732, [12 x i8] c"\09calll\09-373\00"}
!13 = metadata !{i64 134513737, [21 x i8] c"\09movl\09%eax, 20(%esp)\00"}
!14 = metadata !{i64 134513761, [21 x i8] c"\09movl\0928(%esp), %eax\00"}
!15 = metadata !{i64 134513765, [21 x i8] c"\09cmpl\0920(%esp), %eax\00"}
!16 = metadata !{i64 134513769, [9 x i8] c"\09jle\09-28\00"}
!17 = metadata !{i64 134513743, [21 x i8] c"\09movl\0924(%esp), %eax\00"}
!18 = metadata !{i64 134513747, [22 x i8] c"\09imull\0928(%esp), %eax\00"}
!19 = metadata !{i64 134513752, [21 x i8] c"\09movl\09%eax, 24(%esp)\00"}
!20 = metadata !{i64 134513756, [19 x i8] c"\09addl\09$1, 28(%esp)\00"}
!21 = metadata !{i64 134513771, [21 x i8] c"\09movl\0924(%esp), %eax\00"}
!22 = metadata !{i64 134513775, [7 x i8] c"\09leave\00"}
!23 = metadata !{i64 134513776, [6 x i8] c"\09retl\00"}
