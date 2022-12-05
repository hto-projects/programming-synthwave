@gsxtminstruments_ext0 = hidden constant [23 x i8] c"[20 x [128 x float*]]*\00"
@gsxtminstruments_ext1 = hidden constant [20 x i8] c"[20 x [128 x i64]]*\00"
@gsxtminstruments_ext2 = hidden constant [58 x i8] c"libsndfile error: could not read audio file at '%s' (%s)
\00"
@gsxtminstruments_ext3 = hidden constant [103 x i8] c"set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0\00"
@gsxtminstruments_ext4 = hidden constant [118 x i8] c"{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**\00"
define dllexport fastcc i64 @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0__1(i8* %_impz,i8* %_impenv, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, i8* %filename, i64 %index, i64 %offset, i64 %lgth, i32 %bank, i64 %print_p) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone2 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***}*
%set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr_ = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***}* %impenv, i32 0, i32 0
%set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**** %set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr_

; setup arguments
%instPtr = alloca {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%filenamePtr = alloca i8*
store i8* %filename, i8** %filenamePtr
%indexPtr = alloca i64
store i64 %index, i64* %indexPtr
%offsetPtr = alloca i64
store i64 %offset, i64* %offsetPtr
%lgthPtr = alloca i64
store i64 %lgth, i64* %lgthPtr
%bankPtr = alloca i32
store i32 %bank, i32* %bankPtr
%print_pPtr = alloca i64
store i64 %print_p, i64* %print_pPtr

; promote local stack var allocations
%tzone180 = load i8*, i8** %_impzPtr
%zone181 = bitcast i8* %tzone180 to %mzone*
%ifptr18 = alloca i64

%tzone4 = load i8*, i8** %_impzPtr
%zone5 = bitcast i8* %tzone4 to %mzone*

; let assign value to symbol info
%infoPtr = alloca %SF_INFO*
%tzone10 = load i8*, i8** %_impzPtr
%zone11 = bitcast i8* %tzone10 to %mzone*

; let assign value to symbol audiofile
%audiofilePtr = alloca i8*
%tzone16 = load i8*, i8** %_impzPtr
%zone17 = bitcast i8* %tzone16 to %mzone*

; let assign value to symbol channels
%channelsPtr = alloca i64
%tzone28 = load i8*, i8** %_impzPtr
%zone29 = bitcast i8* %tzone28 to %mzone*

; let assign value to symbol num
%numPtr = alloca i64
%dat3 = alloca %SF_INFO, align 16

; let value assignment
%info = select i1 true, %SF_INFO* %dat3, %SF_INFO* %dat3
store %SF_INFO* %info, %SF_INFO** %infoPtr

%val6 = load i8*, i8** %filenamePtr
%val7 = load i32, i32* @SFM_READ
%val8 = load %SF_INFO*, %SF_INFO** %infoPtr
%res9 = call ccc i8* @sf_open(i8* %val6, i32 %val7, %SF_INFO* %val8)

; let value assignment
%audiofile = select i1 true, i8* %res9, i8* %res9
store i8* %audiofile, i8** %audiofilePtr

%val12 = load %SF_INFO*, %SF_INFO** %infoPtr
; tuple ref
%val13 = getelementptr %SF_INFO, %SF_INFO* %val12, i64 0, i32 2
%val14 = load i32, i32* %val13
%val15 = sext i32 %val14 to i64

; let value assignment
%channels = select i1 true, i64 %val15, i64 %val15
store i64 %channels, i64* %channelsPtr

%val19 = load i64, i64* %lgthPtr
%cmp20 = icmp eq i64 0, %val19
br i1 %cmp20, label %then18, label %else18

then18:
%val21 = load %SF_INFO*, %SF_INFO** %infoPtr
; tuple ref
%val22 = getelementptr %SF_INFO, %SF_INFO* %val21, i64 0, i32 0
%val23 = load i64, i64* %val22
%val24 = load i64, i64* %offsetPtr
%val25 = sub i64 %val23, %val24
store i64 %val25, i64* %ifptr18
br label %ifcont18

else18:
%val26 = load i64, i64* %lgthPtr
store i64 %val26, i64* %ifptr18
br label %ifcont18

ifcont18:
%ifres27 = load i64, i64* %ifptr18


; let value assignment
%num = select i1 true, i64 %ifres27, i64 %ifres27
store i64 %num, i64* %numPtr

; promote local stack var allocations
%tzone178 = load i8*, i8** %_impzPtr
%zone179 = bitcast i8* %tzone178 to %mzone*
%ifptr117 = alloca i8*
%ifptr31 = alloca i1
%val32 = load i8*, i8** %audiofilePtr
%val33 = icmp eq i8* %val32, null
br i1 %val33, label %then31, label %else31

then31:
%res34 = call ccc i1 @impc_false()
store i1 %res34, i1* %ifptr31
br label %ifcont31

else31:
%res35 = call ccc i1 @impc_true()
store i1 %res35, i1* %ifptr31
br label %ifcont31

ifcont31:
%ifres36 = load i1, i1* %ifptr31

br i1 %ifres36, label %then30, label %else30

then30:
%tzone44 = load i8*, i8** %_impzPtr
%zone45 = bitcast i8* %tzone44 to %mzone*

; let assign value to symbol adat
%adatPtr = alloca float*
%tzone64 = load i8*, i8** %_impzPtr
%zone65 = bitcast i8* %tzone64 to %mzone*

; let assign value to symbol samples
%samplesPtr = alloca [20 x [128 x float*]]*
%tzone84 = load i8*, i8** %_impzPtr
%zone85 = bitcast i8* %tzone84 to %mzone*

; let assign value to symbol samples_channels
%samples_channelsPtr = alloca [20 x [128 x i64]]*
%tzone104 = load i8*, i8** %_impzPtr
%zone105 = bitcast i8* %tzone104 to %mzone*

; let assign value to symbol samples_length
%samples_lengthPtr = alloca [20 x [128 x i64]]*
%tzone115 = load i8*, i8** %_impzPtr
%zone116 = bitcast i8* %tzone115 to %mzone*

; let assign value to symbol samples_read
%samples_readPtr = alloca i64
%tzone134 = load i8*, i8** %_impzPtr
%zone135 = bitcast i8* %tzone134 to %mzone*

; let assign value to symbol olddat
%olddatPtr = alloca i8*
%val37 = load i64, i64* %numPtr
%val38 = load i64, i64* %channelsPtr
%val39 = mul i64 %val37, %val38
%val40 = getelementptr i64, i64* null, i32 1
%zonesize41 = mul i64 4, %val39
%dat42 = call i8* @malloc(i64 %zonesize41)
call i8* @memset(i8* %dat42, i32 0, i64 %zonesize41)
%val43 = bitcast i8* %dat42 to float*

; let value assignment
%adat = select i1 true, float* %val43, float* %val43
store float* %adat, float** %adatPtr


; closure ref 
%val47 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var48 = bitcast [23 x i8]* @gsxtminstruments_ext0 to i8*
%closure49 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val47
%tablePtr50 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure49, i32 0, i32 0
%tmp51 = bitcast i8** %tablePtr50 to %clsvar**
%table52 = load %clsvar*, %clsvar** %tmp51
%ePtr53 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure49, i32 0, i32 1
%e54 = load i8*, i8** %ePtr53
%offset55 = call i32 @get_address_offset(i64 152448360949, %clsvar* %table52)
%valPtr56 = getelementptr i8, i8* %e54, i32 %offset55
%val57 = bitcast i8* %valPtr56 to i8**
%val58 = load i8*, i8** %val57
%val59 = bitcast i8* %val58 to [20 x [128 x float*]]**
%check60 = call i1 @check_address_type(i64 152448360949, %clsvar* %table52, i8* %var48)
br i1 %check60, label %then46, label %else46

then46:
%then_result61 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %val59
br label %cont46

else46:
%else_result62 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %val59
br label %cont46

cont46:
%result63 = phi [20 x [128 x float*]]* [ %then_result61, %then46 ],  [ %else_result62, %else46 ]

; let value assignment
%samples = select i1 true, [20 x [128 x float*]]* %result63, [20 x [128 x float*]]* %result63
store [20 x [128 x float*]]* %samples, [20 x [128 x float*]]** %samplesPtr


; closure ref 
%val67 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var68 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure69 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val67
%tablePtr70 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure69, i32 0, i32 0
%tmp71 = bitcast i8** %tablePtr70 to %clsvar**
%table72 = load %clsvar*, %clsvar** %tmp71
%ePtr73 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure69, i32 0, i32 1
%e74 = load i8*, i8** %ePtr73
%offset75 = call i32 @get_address_offset(i64 -4643509960147185536, %clsvar* %table72)
%valPtr76 = getelementptr i8, i8* %e74, i32 %offset75
%val77 = bitcast i8* %valPtr76 to i8**
%val78 = load i8*, i8** %val77
%val79 = bitcast i8* %val78 to [20 x [128 x i64]]**
%check80 = call i1 @check_address_type(i64 -4643509960147185536, %clsvar* %table72, i8* %var68)
br i1 %check80, label %then66, label %else66

then66:
%then_result81 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val79
br label %cont66

else66:
%else_result82 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val79
br label %cont66

cont66:
%result83 = phi [20 x [128 x i64]]* [ %then_result81, %then66 ],  [ %else_result82, %else66 ]

; let value assignment
%samples_channels = select i1 true, [20 x [128 x i64]]* %result83, [20 x [128 x i64]]* %result83
store [20 x [128 x i64]]* %samples_channels, [20 x [128 x i64]]** %samples_channelsPtr


; closure ref 
%val87 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var88 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure89 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val87
%tablePtr90 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure89, i32 0, i32 0
%tmp91 = bitcast i8** %tablePtr90 to %clsvar**
%table92 = load %clsvar*, %clsvar** %tmp91
%ePtr93 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure89, i32 0, i32 1
%e94 = load i8*, i8** %ePtr93
%offset95 = call i32 @get_address_offset(i64 3857864223347863030, %clsvar* %table92)
%valPtr96 = getelementptr i8, i8* %e94, i32 %offset95
%val97 = bitcast i8* %valPtr96 to i8**
%val98 = load i8*, i8** %val97
%val99 = bitcast i8* %val98 to [20 x [128 x i64]]**
%check100 = call i1 @check_address_type(i64 3857864223347863030, %clsvar* %table92, i8* %var88)
br i1 %check100, label %then86, label %else86

then86:
%then_result101 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val99
br label %cont86

else86:
%else_result102 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val99
br label %cont86

cont86:
%result103 = phi [20 x [128 x i64]]* [ %then_result101, %then86 ],  [ %else_result102, %else86 ]

; let value assignment
%samples_length = select i1 true, [20 x [128 x i64]]* %result103, [20 x [128 x i64]]* %result103
store [20 x [128 x i64]]* %samples_length, [20 x [128 x i64]]** %samples_lengthPtr

%val106 = load i8*, i8** %filenamePtr
%val107 = load float*, float** %adatPtr
%val108 = load i64, i64* %offsetPtr
%val109 = load i64, i64* %channelsPtr
%val110 = mul i64 %val108, %val109
%val111 = load i64, i64* %numPtr
%val112 = load i64, i64* %print_pPtr
%res113 = call ccc i1 @i64toi1(i64 %val112)
%res114 = call fastcc i64 @sf_read_file_into_buffer_adhoc_W2k2NCxpOCosZmxvYXQqLGk2NCxpNjQsaTFd(i8* %val106, float* %val107, i64 %val110, i64 %val111, i1 %res113)

; let value assignment
%samples_read = select i1 true, i64 %res114, i64 %res114
store i64 %samples_read, i64* %samples_readPtr

%val118 = load i64, i64* %indexPtr
%val119 = load i32, i32* %bankPtr
%val120 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val121 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val120, i32 0, i32 %val119
; array ref
%_val122 = getelementptr [128 x i64], [128 x i64]* %val121, i32 0, i64 %val118
%val123 = load i64, i64* %_val122
%cmp124 = icmp ne i64 0, %val123
br i1 %cmp124, label %then117, label %else117

then117:
%val125 = load i64, i64* %indexPtr
%val126 = load i32, i32* %bankPtr
%val127 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %samplesPtr
; array ref
%val128 = getelementptr [20 x [128 x float*]], [20 x [128 x float*]]* %val127, i32 0, i32 %val126
; array ref
%_val129 = getelementptr [128 x float*], [128 x float*]* %val128, i32 0, i64 %val125
%val130 = load float*, float** %_val129
%val131 = bitcast float* %val130 to i8*
store i8* %val131, i8** %ifptr117
br label %ifcont117

else117:
%null132 = bitcast i8* null to i8*
store i8* %null132, i8** %ifptr117
br label %ifcont117

ifcont117:
%ifres133 = load i8*, i8** %ifptr117


; let value assignment
%olddat = select i1 true, i8* %ifres133, i8* %ifres133
store i8* %olddat, i8** %olddatPtr

; promote local stack var allocations
%tzone169 = load i8*, i8** %_impzPtr
%zone170 = bitcast i8* %tzone169 to %mzone*
%ifptr160 = alloca i1
%val136 = load i64, i64* %indexPtr
%val137 = load i32, i32* %bankPtr
%val138 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val139 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val138, i32 0, i32 %val137
%val140 = load i64, i64* %samples_readPtr
%val141 = load i64, i64* %channelsPtr
%val142 = sdiv i64 %val140, %val141
; set array
%val143 = getelementptr [128 x i64], [128 x i64]* %val139, i32 0, i64 %val136
store i64 %val142, i64* %val143
%val144 = load i64, i64* %indexPtr
%val145 = load i32, i32* %bankPtr
%val146 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_channelsPtr
; array ref
%val147 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val146, i32 0, i32 %val145
%val148 = load i64, i64* %channelsPtr
%val149 = bitcast i64 %val148 to i64
; set array
%val150 = getelementptr [128 x i64], [128 x i64]* %val147, i32 0, i64 %val144
store i64 %val149, i64* %val150
%val151 = load i64, i64* %indexPtr
%val152 = load i32, i32* %bankPtr
%val153 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %samplesPtr
; array ref
%val154 = getelementptr [20 x [128 x float*]], [20 x [128 x float*]]* %val153, i32 0, i32 %val152
%val155 = load float*, float** %adatPtr
; set array
%val156 = getelementptr [128 x float*], [128 x float*]* %val154, i32 0, i64 %val151
store float* %val155, float** %val156
%val157 = load i8*, i8** %audiofilePtr
%res158 = call ccc i32 @sf_close(i8* %val157)
%val161 = load i8*, i8** %olddatPtr
%val162 = icmp eq i8* %val161, null
br i1 %val162, label %then160, label %else160

then160:
%res163 = call ccc i1 @impc_false()
store i1 %res163, i1* %ifptr160
br label %ifcont160

else160:
%res164 = call ccc i1 @impc_true()
store i1 %res164, i1* %ifptr160
br label %ifcont160

ifcont160:
%ifres165 = load i1, i1* %ifptr160

br i1 %ifres165, label %then159, label %else159

then159:
%val166 = load i8*, i8** %olddatPtr
%val167 = bitcast i8* %val166 to i8*
call ccc void @free(i8* %val167)
br label %ifcont159

else159:
br label %ifcont159

ifcont159:
ret i64 1

else30:
%var171 = bitcast [58 x i8]* @gsxtminstruments_ext2 to i8*
%val172 = load i8*, i8** %filenamePtr
%val173 = load i8*, i8** %audiofilePtr
%res174 = call ccc i8* @sf_strerror(i8* %val173)

%val175 = call i32 (i8*, ...) @printf(i8* %var171, i8* %val172, i8* %res174)
%val176 = load i8*, i8** %audiofilePtr
%res177 = call ccc i32 @sf_close(i8* %val176)
ret i64 0
}
@gsxtminstruments_ext5 = hidden constant [156 x i8] c"set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0 Scheme wrapper error: check the arg arity and types
\00"
define dllexport ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone201 = load i8*, i8** %_impzPtr
%zone202 = bitcast i8* %tzone201 to %mzone*

; let assign value to symbol set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0
%dat_set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0 = call i8* @llvm_zone_malloc(%mzone* %zone202, i64 8)
%set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr = bitcast i8* %dat_set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***
%tzone182 = load i8*, i8** %_impzPtr
%zone183 = bitcast i8* %tzone182 to %mzone*
call void @llvm_zone_mark(%mzone* %zone183)
; malloc closure structure
%clsptr184 = call i8* @llvm_zone_malloc(%mzone* %zone183, i64 24)
%closure185 = bitcast i8* %clsptr184 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*

; malloc environment structure
%envptr186 = call i8* @llvm_zone_malloc(%mzone* %zone183, i64 8)
%environment187 = bitcast i8* %envptr186 to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***}*

; malloc closure address table
%addytable188 = call %clsvar* @new_address_table()
%var189 = bitcast [103 x i8]* @gsxtminstruments_ext3 to i8*
%var190 = bitcast [118 x i8]* @gsxtminstruments_ext4 to i8*
%addytable191 = call %clsvar* @add_address_table(%mzone* %zone183, i8* %var189, i32 0, i8* %var190, i32 3, %clsvar* %addytable188)
%address-table192 = bitcast %clsvar* %addytable191 to i8*

; insert table, function and environment into closure struct
%closure.table195 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure185, i32 0, i32 0
store i8* %address-table192, i8** %closure.table195
%closure.env196 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure185, i32 0, i32 1
store i8* %envptr186, i8** %closure.env196
%closure.func197 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure185, i32 0, i32 2
store i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0__1, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)** %closure.func197
%closure_size198 = call i64 @llvm_zone_mark_size(%mzone* %zone183)
call void @llvm_zone_ptr_set_size(i8* %clsptr184, i64 %closure_size198)
%wrapper_ptr199 = call i8* @llvm_zone_malloc(%mzone* %zone183, i64 8)
%closure_wrapper200 = bitcast i8* %wrapper_ptr199 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure185, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_wrapper200

; let value assignment
%set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0 = select i1 true, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_wrapper200, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_wrapper200
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*** %set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr

; add data to environment
; don't need to alloc for env var set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0
%tmp_envptr194 = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}***}* %environment187, i32 0, i32 0
store {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*** %set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**** %tmp_envptr194


%val203 = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*** %set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0Ptr
ret {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %val203
}


@set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var = dllexport global [1 x i8*] [ i8* null ]

@set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc i64 @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,i8* %arg_1,i64 %arg_2,i64 %arg_3,i64 %arg_4,i32 %arg_5,i64 %arg_6) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i8* %arg_1, i64 %arg_2, i64 %arg_3, i64 %arg_4, i32 %arg_5, i64 %arg_6)
ret i64 %result
}


define dllexport ccc i64 @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_native({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,i8* %arg_1,i64 %arg_2,i64 %arg_3,i64 %arg_4,i32 %arg_5,i64 %arg_6) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i8* %arg_1, i64 %arg_2, i64 %arg_3, i64 %arg_4, i32 %arg_5, i64 %arg_6)
ret i64 %result
}


define dllexport ccc i8*  @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%arg_0_val = call ccc i8* @list_ref(i8* %_sc, i32 0,i8* %args)
%arg_0_rt_check = call i32 @is_cptr(i8* %arg_0_val)
%arg_0_bool = icmp ne i32 %arg_0_rt_check, 0
br i1 %arg_0_bool, label %arg_0_true, label %arg_0_false

arg_0_true:
br label %arg_0_continue

arg_0_false:
%var204 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var204)
%arg_0_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_0_errret

arg_0_continue:
%ttv_0 = call ccc i8* @cptr_value(i8* %arg_0_val)
%arg_0 = bitcast i8* %ttv_0 to {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
%arg_1_val = call ccc i8* @list_ref(i8* %_sc, i32 1,i8* %args)
%arg_1_rt_check = call i32 @is_cptr_or_str(i8* %arg_1_val)
%arg_1_bool = icmp ne i32 %arg_1_rt_check, 0
br i1 %arg_1_bool, label %arg_1_true, label %arg_1_false

arg_1_true:
br label %arg_1_continue

arg_1_false:
%var205 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var205)
%arg_1_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_1_errret

arg_1_continue:
%arg_1 = call ccc i8*  @cptr_value(i8* %arg_1_val)
%arg_2_val = call ccc i8* @list_ref(i8* %_sc, i32 2,i8* %args)
%arg_2_rt_check = call i32 @is_integer(i8* %arg_2_val)
%arg_2_bool = icmp ne i32 %arg_2_rt_check, 0
br i1 %arg_2_bool, label %arg_2_true, label %arg_2_false

arg_2_true:
br label %arg_2_continue

arg_2_false:
%var206 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var206)
%arg_2_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_2_errret

arg_2_continue:
%arg_2 = call ccc i64  @i64value(i8* %arg_2_val)
%arg_3_val = call ccc i8* @list_ref(i8* %_sc, i32 3,i8* %args)
%arg_3_rt_check = call i32 @is_integer(i8* %arg_3_val)
%arg_3_bool = icmp ne i32 %arg_3_rt_check, 0
br i1 %arg_3_bool, label %arg_3_true, label %arg_3_false

arg_3_true:
br label %arg_3_continue

arg_3_false:
%var207 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var207)
%arg_3_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_3_errret

arg_3_continue:
%arg_3 = call ccc i64  @i64value(i8* %arg_3_val)
%arg_4_val = call ccc i8* @list_ref(i8* %_sc, i32 4,i8* %args)
%arg_4_rt_check = call i32 @is_integer(i8* %arg_4_val)
%arg_4_bool = icmp ne i32 %arg_4_rt_check, 0
br i1 %arg_4_bool, label %arg_4_true, label %arg_4_false

arg_4_true:
br label %arg_4_continue

arg_4_false:
%var208 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var208)
%arg_4_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_4_errret

arg_4_continue:
%arg_4 = call ccc i64  @i64value(i8* %arg_4_val)
%arg_5_val = call ccc i8* @list_ref(i8* %_sc, i32 5,i8* %args)
%arg_5_rt_check = call i32 @is_integer(i8* %arg_5_val)
%arg_5_bool = icmp ne i32 %arg_5_rt_check, 0
br i1 %arg_5_bool, label %arg_5_true, label %arg_5_false

arg_5_true:
br label %arg_5_continue

arg_5_false:
%var209 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var209)
%arg_5_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_5_errret

arg_5_continue:
%arg_5 = call ccc i32  @i32value(i8* %arg_5_val)
%arg_6_val = call ccc i8* @list_ref(i8* %_sc, i32 6,i8* %args)
%arg_6_rt_check = call i32 @is_integer(i8* %arg_6_val)
%arg_6_bool = icmp ne i32 %arg_6_rt_check, 0
br i1 %arg_6_bool, label %arg_6_true, label %arg_6_false

arg_6_true:
br label %arg_6_continue

arg_6_false:
%var210 = bitcast [156 x i8]* @gsxtminstruments_ext5 to i8*
call i32 (i8*, ...) @printf(i8* %var210)
%arg_6_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_6_errret

arg_6_continue:
%arg_6 = call ccc i64  @i64value(i8* %arg_6_val)
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i8* %arg_1, i64 %arg_2, i64 %arg_3, i64 %arg_4, i32 %arg_5, i64 %arg_6)
%res = call ccc i8* @mk_i64(i8* %_sc, i64 %result)
ret i8* %res
}


define dllexport ccc void @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = bitcast i8* %dat to {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}*
%arg_p_0 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 0
%arg_0 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %arg_p_0
%arg_p_1 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 1
%arg_1 = load i8*, i8** %arg_p_1
%arg_p_2 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 2
%arg_2 = load i64, i64* %arg_p_2
%arg_p_3 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 3
%arg_3 = load i64, i64* %arg_p_3
%arg_p_4 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 4
%arg_4 = load i64, i64* %arg_p_4
%arg_p_5 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 5
%arg_5 = load i32, i32* %arg_p_5
%arg_p_6 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64}* %fstruct, i32 0, i32 6
%arg_6 = load i64, i64* %arg_p_6
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpOCosaTY0LGk2NCxpNjQsaTMyLGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i8*, i64, i64, i64, i32, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i8* %arg_1, i64 %arg_2, i64 %arg_3, i64 %arg_4, i32 %arg_5, i64 %arg_6)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext6 = hidden constant [84 x i8] c"clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ\00"
@gsxtminstruments_ext7 = hidden constant [98 x i8] c"{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**\00"
define dllexport fastcc i64 @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ__211(i8* %_impz,i8* %_impenv, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, i64 %index, i32 %bank) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone212 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***}*
%clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr_ = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***}* %impenv, i32 0, i32 0
%clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**** %clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr_

; setup arguments
%instPtr = alloca {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%indexPtr = alloca i64
store i64 %index, i64* %indexPtr
%bankPtr = alloca i32
store i32 %bank, i32* %bankPtr

; promote local stack var allocations
%tzone314 = load i8*, i8** %_impzPtr
%zone315 = bitcast i8* %tzone314 to %mzone*
%ifptr273 = alloca i8*

%tzone231 = load i8*, i8** %_impzPtr
%zone232 = bitcast i8* %tzone231 to %mzone*

; let assign value to symbol samples
%samplesPtr = alloca [20 x [128 x float*]]*
%tzone251 = load i8*, i8** %_impzPtr
%zone252 = bitcast i8* %tzone251 to %mzone*

; let assign value to symbol samples_channels
%samples_channelsPtr = alloca [20 x [128 x i64]]*
%tzone271 = load i8*, i8** %_impzPtr
%zone272 = bitcast i8* %tzone271 to %mzone*

; let assign value to symbol samples_length
%samples_lengthPtr = alloca [20 x [128 x i64]]*
%tzone290 = load i8*, i8** %_impzPtr
%zone291 = bitcast i8* %tzone290 to %mzone*

; let assign value to symbol olddat
%olddatPtr = alloca i8*

; closure ref 
%val214 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var215 = bitcast [23 x i8]* @gsxtminstruments_ext0 to i8*
%closure216 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val214
%tablePtr217 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure216, i32 0, i32 0
%tmp218 = bitcast i8** %tablePtr217 to %clsvar**
%table219 = load %clsvar*, %clsvar** %tmp218
%ePtr220 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure216, i32 0, i32 1
%e221 = load i8*, i8** %ePtr220
%offset222 = call i32 @get_address_offset(i64 152448360949, %clsvar* %table219)
%valPtr223 = getelementptr i8, i8* %e221, i32 %offset222
%val224 = bitcast i8* %valPtr223 to i8**
%val225 = load i8*, i8** %val224
%val226 = bitcast i8* %val225 to [20 x [128 x float*]]**
%check227 = call i1 @check_address_type(i64 152448360949, %clsvar* %table219, i8* %var215)
br i1 %check227, label %then213, label %else213

then213:
%then_result228 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %val226
br label %cont213

else213:
%else_result229 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %val226
br label %cont213

cont213:
%result230 = phi [20 x [128 x float*]]* [ %then_result228, %then213 ],  [ %else_result229, %else213 ]

; let value assignment
%samples = select i1 true, [20 x [128 x float*]]* %result230, [20 x [128 x float*]]* %result230
store [20 x [128 x float*]]* %samples, [20 x [128 x float*]]** %samplesPtr


; closure ref 
%val234 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var235 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure236 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val234
%tablePtr237 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure236, i32 0, i32 0
%tmp238 = bitcast i8** %tablePtr237 to %clsvar**
%table239 = load %clsvar*, %clsvar** %tmp238
%ePtr240 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure236, i32 0, i32 1
%e241 = load i8*, i8** %ePtr240
%offset242 = call i32 @get_address_offset(i64 -4643509960147185536, %clsvar* %table239)
%valPtr243 = getelementptr i8, i8* %e241, i32 %offset242
%val244 = bitcast i8* %valPtr243 to i8**
%val245 = load i8*, i8** %val244
%val246 = bitcast i8* %val245 to [20 x [128 x i64]]**
%check247 = call i1 @check_address_type(i64 -4643509960147185536, %clsvar* %table239, i8* %var235)
br i1 %check247, label %then233, label %else233

then233:
%then_result248 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val246
br label %cont233

else233:
%else_result249 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val246
br label %cont233

cont233:
%result250 = phi [20 x [128 x i64]]* [ %then_result248, %then233 ],  [ %else_result249, %else233 ]

; let value assignment
%samples_channels = select i1 true, [20 x [128 x i64]]* %result250, [20 x [128 x i64]]* %result250
store [20 x [128 x i64]]* %samples_channels, [20 x [128 x i64]]** %samples_channelsPtr


; closure ref 
%val254 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var255 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure256 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val254
%tablePtr257 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure256, i32 0, i32 0
%tmp258 = bitcast i8** %tablePtr257 to %clsvar**
%table259 = load %clsvar*, %clsvar** %tmp258
%ePtr260 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure256, i32 0, i32 1
%e261 = load i8*, i8** %ePtr260
%offset262 = call i32 @get_address_offset(i64 3857864223347863030, %clsvar* %table259)
%valPtr263 = getelementptr i8, i8* %e261, i32 %offset262
%val264 = bitcast i8* %valPtr263 to i8**
%val265 = load i8*, i8** %val264
%val266 = bitcast i8* %val265 to [20 x [128 x i64]]**
%check267 = call i1 @check_address_type(i64 3857864223347863030, %clsvar* %table259, i8* %var255)
br i1 %check267, label %then253, label %else253

then253:
%then_result268 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val266
br label %cont253

else253:
%else_result269 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val266
br label %cont253

cont253:
%result270 = phi [20 x [128 x i64]]* [ %then_result268, %then253 ],  [ %else_result269, %else253 ]

; let value assignment
%samples_length = select i1 true, [20 x [128 x i64]]* %result270, [20 x [128 x i64]]* %result270
store [20 x [128 x i64]]* %samples_length, [20 x [128 x i64]]** %samples_lengthPtr

%val274 = load i64, i64* %indexPtr
%val275 = load i32, i32* %bankPtr
%val276 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val277 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val276, i32 0, i32 %val275
; array ref
%_val278 = getelementptr [128 x i64], [128 x i64]* %val277, i32 0, i64 %val274
%val279 = load i64, i64* %_val278
%cmp280 = icmp ne i64 0, %val279
br i1 %cmp280, label %then273, label %else273

then273:
%val281 = load i64, i64* %indexPtr
%val282 = load i32, i32* %bankPtr
%val283 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %samplesPtr
; array ref
%val284 = getelementptr [20 x [128 x float*]], [20 x [128 x float*]]* %val283, i32 0, i32 %val282
; array ref
%_val285 = getelementptr [128 x float*], [128 x float*]* %val284, i32 0, i64 %val281
%val286 = load float*, float** %_val285
%val287 = bitcast float* %val286 to i8*
store i8* %val287, i8** %ifptr273
br label %ifcont273

else273:
%null288 = bitcast i8* null to i8*
store i8* %null288, i8** %ifptr273
br label %ifcont273

ifcont273:
%ifres289 = load i8*, i8** %ifptr273


; let value assignment
%olddat = select i1 true, i8* %ifres289, i8* %ifres289
store i8* %olddat, i8** %olddatPtr

%val292 = load i64, i64* %indexPtr
%val293 = load i32, i32* %bankPtr
%val294 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val295 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val294, i32 0, i32 %val293
; set array
%val296 = getelementptr [128 x i64], [128 x i64]* %val295, i32 0, i64 %val292
store i64 0, i64* %val296
%val297 = load i64, i64* %indexPtr
%val298 = load i32, i32* %bankPtr
%val299 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_channelsPtr
; array ref
%val300 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val299, i32 0, i32 %val298
; set array
%val301 = getelementptr [128 x i64], [128 x i64]* %val300, i32 0, i64 %val297
store i64 0, i64* %val301
%val302 = load i64, i64* %indexPtr
%val303 = load i32, i32* %bankPtr
%val304 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %samplesPtr
; array ref
%val305 = getelementptr [20 x [128 x float*]], [20 x [128 x float*]]* %val304, i32 0, i32 %val303
%null306 = bitcast i8* null to float*
; set array
%val307 = getelementptr [128 x float*], [128 x float*]* %val305, i32 0, i64 %val302
store float* %null306, float** %val307
%val309 = load i8*, i8** %olddatPtr
%val310 = icmp eq i8* %val309, null
br i1 %val310, label %then308, label %else308

then308:
ret i64 0

else308:
%val311 = load i8*, i8** %olddatPtr
%val312 = bitcast i8* %val311 to i8*
call ccc void @free(i8* %val312)
ret i64 1
}
@gsxtminstruments_ext8 = hidden constant [137 x i8] c"clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ Scheme wrapper error: check the arg arity and types
\00"
define dllexport ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone335 = load i8*, i8** %_impzPtr
%zone336 = bitcast i8* %tzone335 to %mzone*

; let assign value to symbol clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ
%dat_clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ = call i8* @llvm_zone_malloc(%mzone* %zone336, i64 8)
%clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr = bitcast i8* %dat_clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***
%tzone316 = load i8*, i8** %_impzPtr
%zone317 = bitcast i8* %tzone316 to %mzone*
call void @llvm_zone_mark(%mzone* %zone317)
; malloc closure structure
%clsptr318 = call i8* @llvm_zone_malloc(%mzone* %zone317, i64 24)
%closure319 = bitcast i8* %clsptr318 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*

; malloc environment structure
%envptr320 = call i8* @llvm_zone_malloc(%mzone* %zone317, i64 8)
%environment321 = bitcast i8* %envptr320 to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***}*

; malloc closure address table
%addytable322 = call %clsvar* @new_address_table()
%var323 = bitcast [84 x i8]* @gsxtminstruments_ext6 to i8*
%var324 = bitcast [98 x i8]* @gsxtminstruments_ext7 to i8*
%addytable325 = call %clsvar* @add_address_table(%mzone* %zone317, i8* %var323, i32 0, i8* %var324, i32 3, %clsvar* %addytable322)
%address-table326 = bitcast %clsvar* %addytable325 to i8*

; insert table, function and environment into closure struct
%closure.table329 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure319, i32 0, i32 0
store i8* %address-table326, i8** %closure.table329
%closure.env330 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure319, i32 0, i32 1
store i8* %envptr320, i8** %closure.env330
%closure.func331 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure319, i32 0, i32 2
store i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ__211, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)** %closure.func331
%closure_size332 = call i64 @llvm_zone_mark_size(%mzone* %zone317)
call void @llvm_zone_ptr_set_size(i8* %clsptr318, i64 %closure_size332)
%wrapper_ptr333 = call i8* @llvm_zone_malloc(%mzone* %zone317, i64 8)
%closure_wrapper334 = bitcast i8* %wrapper_ptr333 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure319, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_wrapper334

; let value assignment
%clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ = select i1 true, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_wrapper334, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_wrapper334
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*** %clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr

; add data to environment
; don't need to alloc for env var clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ
%tmp_envptr328 = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}***}* %environment321, i32 0, i32 0
store {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*** %clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**** %tmp_envptr328


%val337 = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*** %clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQPtr
ret {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %val337
}


@clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var = dllexport global [1 x i8*] [ i8* null ]

@clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc i64 @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,i64 %arg_1,i32 %arg_2) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i32 %arg_2)
ret i64 %result
}


define dllexport ccc i64 @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_native({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,i64 %arg_1,i32 %arg_2) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i32 %arg_2)
ret i64 %result
}


define dllexport ccc i8*  @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%arg_0_val = call ccc i8* @list_ref(i8* %_sc, i32 0,i8* %args)
%arg_0_rt_check = call i32 @is_cptr(i8* %arg_0_val)
%arg_0_bool = icmp ne i32 %arg_0_rt_check, 0
br i1 %arg_0_bool, label %arg_0_true, label %arg_0_false

arg_0_true:
br label %arg_0_continue

arg_0_false:
%var338 = bitcast [137 x i8]* @gsxtminstruments_ext8 to i8*
call i32 (i8*, ...) @printf(i8* %var338)
%arg_0_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_0_errret

arg_0_continue:
%ttv_0 = call ccc i8* @cptr_value(i8* %arg_0_val)
%arg_0 = bitcast i8* %ttv_0 to {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
%arg_1_val = call ccc i8* @list_ref(i8* %_sc, i32 1,i8* %args)
%arg_1_rt_check = call i32 @is_integer(i8* %arg_1_val)
%arg_1_bool = icmp ne i32 %arg_1_rt_check, 0
br i1 %arg_1_bool, label %arg_1_true, label %arg_1_false

arg_1_true:
br label %arg_1_continue

arg_1_false:
%var339 = bitcast [137 x i8]* @gsxtminstruments_ext8 to i8*
call i32 (i8*, ...) @printf(i8* %var339)
%arg_1_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_1_errret

arg_1_continue:
%arg_1 = call ccc i64  @i64value(i8* %arg_1_val)
%arg_2_val = call ccc i8* @list_ref(i8* %_sc, i32 2,i8* %args)
%arg_2_rt_check = call i32 @is_integer(i8* %arg_2_val)
%arg_2_bool = icmp ne i32 %arg_2_rt_check, 0
br i1 %arg_2_bool, label %arg_2_true, label %arg_2_false

arg_2_true:
br label %arg_2_continue

arg_2_false:
%var340 = bitcast [137 x i8]* @gsxtminstruments_ext8 to i8*
call i32 (i8*, ...) @printf(i8* %var340)
%arg_2_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_2_errret

arg_2_continue:
%arg_2 = call ccc i32  @i32value(i8* %arg_2_val)
%ptr = getelementptr [1 x i8*], [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i32 %arg_2)
%res = call ccc i8* @mk_i64(i8* %_sc, i64 %result)
ret i8* %res
}


define dllexport ccc void @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = bitcast i8* %dat to {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}*
%arg_p_0 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}* %fstruct, i32 0, i32 0
%arg_0 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %arg_p_0
%arg_p_1 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}* %fstruct, i32 0, i32 1
%arg_1 = load i64, i64* %arg_p_1
%arg_p_2 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32}* %fstruct, i32 0, i32 2
%arg_2 = load i32, i32* %arg_p_2
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @clear_sample_data__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTMyXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i32 %arg_2)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext9 = hidden constant [89 x i8] c"set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0\00"
@gsxtminstruments_ext10 = hidden constant [103 x i8] c"{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**\00"
define dllexport fastcc i64 @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0__341(i8* %_impz,i8* %_impenv, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, i64 %index, i64 %bank, i64 %offset) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone342 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***}*
%set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr_ = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***}* %impenv, i32 0, i32 0
%set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**** %set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr_

; setup arguments
%instPtr = alloca {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%indexPtr = alloca i64
store i64 %index, i64* %indexPtr
%bankPtr = alloca i64
store i64 %bank, i64* %bankPtr
%offsetPtr = alloca i64
store i64 %offset, i64* %offsetPtr


%tzone361 = load i8*, i8** %_impzPtr
%zone362 = bitcast i8* %tzone361 to %mzone*

; let assign value to symbol offsets
%offsetsPtr = alloca [20 x [128 x i64]]*

; closure ref 
%val344 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var345 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure346 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val344
%tablePtr347 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure346, i32 0, i32 0
%tmp348 = bitcast i8** %tablePtr347 to %clsvar**
%table349 = load %clsvar*, %clsvar** %tmp348
%ePtr350 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure346, i32 0, i32 1
%e351 = load i8*, i8** %ePtr350
%offset352 = call i32 @get_address_offset(i64 -1817689141582913970, %clsvar* %table349)
%valPtr353 = getelementptr i8, i8* %e351, i32 %offset352
%val354 = bitcast i8* %valPtr353 to i8**
%val355 = load i8*, i8** %val354
%val356 = bitcast i8* %val355 to [20 x [128 x i64]]**
%check357 = call i1 @check_address_type(i64 -1817689141582913970, %clsvar* %table349, i8* %var345)
br i1 %check357, label %then343, label %else343

then343:
%then_result358 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val356
br label %cont343

else343:
%else_result359 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val356
br label %cont343

cont343:
%result360 = phi [20 x [128 x i64]]* [ %then_result358, %then343 ],  [ %else_result359, %else343 ]

; let value assignment
%offsets = select i1 true, [20 x [128 x i64]]* %result360, [20 x [128 x i64]]* %result360
store [20 x [128 x i64]]* %offsets, [20 x [128 x i64]]** %offsetsPtr

%val363 = load i64, i64* %indexPtr
%val364 = load i64, i64* %bankPtr
%val365 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %offsetsPtr
; array ref
%val366 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val365, i32 0, i64 %val364
%val367 = load i64, i64* %offsetPtr
; set array
%val368 = getelementptr [128 x i64], [128 x i64]* %val366, i32 0, i64 %val363
store i64 %val367, i64* %val368
ret i64 1
}
@gsxtminstruments_ext11 = hidden constant [142 x i8] c"set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0 Scheme wrapper error: check the arg arity and types
\00"
define dllexport ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone388 = load i8*, i8** %_impzPtr
%zone389 = bitcast i8* %tzone388 to %mzone*

; let assign value to symbol set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0
%dat_set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0 = call i8* @llvm_zone_malloc(%mzone* %zone389, i64 8)
%set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr = bitcast i8* %dat_set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***
%tzone369 = load i8*, i8** %_impzPtr
%zone370 = bitcast i8* %tzone369 to %mzone*
call void @llvm_zone_mark(%mzone* %zone370)
; malloc closure structure
%clsptr371 = call i8* @llvm_zone_malloc(%mzone* %zone370, i64 24)
%closure372 = bitcast i8* %clsptr371 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*

; malloc environment structure
%envptr373 = call i8* @llvm_zone_malloc(%mzone* %zone370, i64 8)
%environment374 = bitcast i8* %envptr373 to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***}*

; malloc closure address table
%addytable375 = call %clsvar* @new_address_table()
%var376 = bitcast [89 x i8]* @gsxtminstruments_ext9 to i8*
%var377 = bitcast [103 x i8]* @gsxtminstruments_ext10 to i8*
%addytable378 = call %clsvar* @add_address_table(%mzone* %zone370, i8* %var376, i32 0, i8* %var377, i32 3, %clsvar* %addytable375)
%address-table379 = bitcast %clsvar* %addytable378 to i8*

; insert table, function and environment into closure struct
%closure.table382 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure372, i32 0, i32 0
store i8* %address-table379, i8** %closure.table382
%closure.env383 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure372, i32 0, i32 1
store i8* %envptr373, i8** %closure.env383
%closure.func384 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure372, i32 0, i32 2
store i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0__341, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)** %closure.func384
%closure_size385 = call i64 @llvm_zone_mark_size(%mzone* %zone370)
call void @llvm_zone_ptr_set_size(i8* %clsptr371, i64 %closure_size385)
%wrapper_ptr386 = call i8* @llvm_zone_malloc(%mzone* %zone370, i64 8)
%closure_wrapper387 = bitcast i8* %wrapper_ptr386 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure372, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_wrapper387

; let value assignment
%set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0 = select i1 true, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_wrapper387, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_wrapper387
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*** %set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr

; add data to environment
; don't need to alloc for env var set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0
%tmp_envptr381 = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}***}* %environment374, i32 0, i32 0
store {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*** %set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**** %tmp_envptr381


%val390 = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*** %set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0Ptr
ret {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %val390
}


@set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var = dllexport global [1 x i8*] [ i8* null ]

@set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc i64 @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,i64 %arg_1,i64 %arg_2,i64 %arg_3) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i64 %arg_2, i64 %arg_3)
ret i64 %result
}


define dllexport ccc i64 @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_native({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,i64 %arg_1,i64 %arg_2,i64 %arg_3) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i64 %arg_2, i64 %arg_3)
ret i64 %result
}


define dllexport ccc i8*  @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%arg_0_val = call ccc i8* @list_ref(i8* %_sc, i32 0,i8* %args)
%arg_0_rt_check = call i32 @is_cptr(i8* %arg_0_val)
%arg_0_bool = icmp ne i32 %arg_0_rt_check, 0
br i1 %arg_0_bool, label %arg_0_true, label %arg_0_false

arg_0_true:
br label %arg_0_continue

arg_0_false:
%var391 = bitcast [142 x i8]* @gsxtminstruments_ext11 to i8*
call i32 (i8*, ...) @printf(i8* %var391)
%arg_0_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_0_errret

arg_0_continue:
%ttv_0 = call ccc i8* @cptr_value(i8* %arg_0_val)
%arg_0 = bitcast i8* %ttv_0 to {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
%arg_1_val = call ccc i8* @list_ref(i8* %_sc, i32 1,i8* %args)
%arg_1_rt_check = call i32 @is_integer(i8* %arg_1_val)
%arg_1_bool = icmp ne i32 %arg_1_rt_check, 0
br i1 %arg_1_bool, label %arg_1_true, label %arg_1_false

arg_1_true:
br label %arg_1_continue

arg_1_false:
%var392 = bitcast [142 x i8]* @gsxtminstruments_ext11 to i8*
call i32 (i8*, ...) @printf(i8* %var392)
%arg_1_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_1_errret

arg_1_continue:
%arg_1 = call ccc i64  @i64value(i8* %arg_1_val)
%arg_2_val = call ccc i8* @list_ref(i8* %_sc, i32 2,i8* %args)
%arg_2_rt_check = call i32 @is_integer(i8* %arg_2_val)
%arg_2_bool = icmp ne i32 %arg_2_rt_check, 0
br i1 %arg_2_bool, label %arg_2_true, label %arg_2_false

arg_2_true:
br label %arg_2_continue

arg_2_false:
%var393 = bitcast [142 x i8]* @gsxtminstruments_ext11 to i8*
call i32 (i8*, ...) @printf(i8* %var393)
%arg_2_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_2_errret

arg_2_continue:
%arg_2 = call ccc i64  @i64value(i8* %arg_2_val)
%arg_3_val = call ccc i8* @list_ref(i8* %_sc, i32 3,i8* %args)
%arg_3_rt_check = call i32 @is_integer(i8* %arg_3_val)
%arg_3_bool = icmp ne i32 %arg_3_rt_check, 0
br i1 %arg_3_bool, label %arg_3_true, label %arg_3_false

arg_3_true:
br label %arg_3_continue

arg_3_false:
%var394 = bitcast [142 x i8]* @gsxtminstruments_ext11 to i8*
call i32 (i8*, ...) @printf(i8* %var394)
%arg_3_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_3_errret

arg_3_continue:
%arg_3 = call ccc i64  @i64value(i8* %arg_3_val)
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i64 %arg_2, i64 %arg_3)
%res = call ccc i8* @mk_i64(i8* %_sc, i64 %result)
ret i8* %res
}


define dllexport ccc void @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = bitcast i8* %dat to {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}*
%arg_p_0 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}* %fstruct, i32 0, i32 0
%arg_0 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %arg_p_0
%arg_p_1 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}* %fstruct, i32 0, i32 1
%arg_1 = load i64, i64* %arg_p_1
%arg_p_2 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}* %fstruct, i32 0, i32 2
%arg_2 = load i64, i64* %arg_p_2
%arg_p_3 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64}* %fstruct, i32 0, i32 3
%arg_3 = load i64, i64* %arg_p_3
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sample_offset__adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixpNjQsaTY0LGk2NF0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, i64, i64, i64)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, i64 %arg_1, i64 %arg_2, i64 %arg_3)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext12 = hidden constant [151 x i8] c"sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd\00"
@gsxtminstruments_ext13 = hidden constant [183 x i8] c"{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**\00"
@gsxtminstruments_ext14 = hidden constant [8 x i8] c"amp_env\00"
@gsxtminstruments_ext15 = hidden constant [12 x i8] c"[4 x float]\00"
@gsxtminstruments_ext16 = hidden constant [15 x i8] c"_anon_lambda_1\00"
@gsxtminstruments_ext17 = hidden constant [157 x i8] c"{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**\00"
@gsxtminstruments_ext18 = hidden constant [6 x i8] c"dargs\00"
@gsxtminstruments_ext19 = hidden constant [7 x i8] c"float*\00"
@gsxtminstruments_ext20 = hidden constant [6 x i8] c"nargs\00"
@gsxtminstruments_ext21 = hidden constant [4 x i8] c"i64\00"
@gsxtminstruments_ext22 = hidden constant [6 x i8] c"index\00"
@gsxtminstruments_ext23 = hidden constant [17 x i8] c"samples_channels\00"
@gsxtminstruments_ext24 = hidden constant [13 x i8] c"[128 x i64]*\00"
@gsxtminstruments_ext25 = hidden constant [16 x i8] c"samples_offsets\00"
@gsxtminstruments_ext26 = hidden constant [15 x i8] c"samples_length\00"
@gsxtminstruments_ext27 = hidden constant [8 x i8] c"samples\00"
@gsxtminstruments_ext28 = hidden constant [16 x i8] c"[128 x float*]*\00"
@gsxtminstruments_ext29 = hidden constant [5 x i8] c"data\00"
@gsxtminstruments_ext30 = hidden constant [11 x i8] c"%NoteData*\00"
@gsxtminstruments_ext31 = hidden constant [6 x i8] c"phase\00"
@gsxtminstruments_ext32 = hidden constant [7 x i8] c"double\00"
@gsxtminstruments_ext33 = hidden constant [9 x i8] c"idx_freq\00"
@gsxtminstruments_ext34 = hidden constant [5 x i8] c"eamp\00"
@gsxtminstruments_ext35 = hidden constant [6 x i8] c"float\00"
@gsxtminstruments_ext36 = hidden constant [4 x i8] c"env\00"
@gsxtminstruments_ext37 = hidden constant [72 x i8] c"{i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**\00"
@gsxtminstruments_ext38 = hidden constant [11 x i8] c"total_time\00"
@gsxtminstruments_ext39 = hidden constant [3 x i8] c"rt\00"
@gsxtminstruments_ext40 = hidden constant [3 x i8] c"dt\00"
@gsxtminstruments_ext41 = hidden constant [6 x i8] c"rtime\00"
@gsxtminstruments_ext42 = hidden constant [2 x i8] c"r\00"
@gsxtminstruments_ext43 = hidden constant [2 x i8] c"s\00"
@gsxtminstruments_ext44 = hidden constant [2 x i8] c"d\00"
@gsxtminstruments_ext45 = hidden constant [2 x i8] c"a\00"
@gsxtminstruments_ext46 = hidden constant [4 x i8] c"rev\00"
@gsxtminstruments_ext47 = hidden constant [3 x i8] c"i1\00"
@gsxtminstruments_ext48 = hidden constant [7 x i8] c"offset\00"
@gsxtminstruments_ext49 = hidden constant [4 x i8] c"pan\00"
@gsxtminstruments_ext50 = hidden constant [5 x i8] c"gate\00"
@gsxtminstruments_ext51 = hidden constant [9 x i8] c"duration\00"
@gsxtminstruments_ext52 = hidden constant [4 x i8] c"amp\00"
@gsxtminstruments_ext53 = hidden constant [5 x i8] c"freq\00"
@gsxtminstruments_ext54 = hidden constant [10 x i8] c"starttime\00"
@gsxtminstruments_ext55 = hidden constant [15 x i8] c"_anon_lambda_2\00"
@gsxtminstruments_ext56 = hidden constant [42 x i8] c"{i8*, i8*, float (i8*, i8*, i64, i64)*}**\00"
define dllexport fastcc float @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__397(i8* %_impz,i8* %_impenv, i64 %time, i64 %chan) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone532 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}*
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 0
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_
%amp_envPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 1
%amp_envPtr = load [4 x float]*, [4 x float]** %amp_envPtr_
%_anon_lambda_1Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 2
%_anon_lambda_1Ptr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %_anon_lambda_1Ptr_
%dargsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 3
%dargsPtr = load float**, float*** %dargsPtr_
%nargsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 4
%nargsPtr = load i64*, i64** %nargsPtr_
%indexPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 5
%indexPtr = load i64*, i64** %indexPtr_
%samples_channelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 6
%samples_channelsPtr = load [128 x i64]**, [128 x i64]*** %samples_channelsPtr_
%samples_offsetsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 7
%samples_offsetsPtr = load [128 x i64]**, [128 x i64]*** %samples_offsetsPtr_
%samples_lengthPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 8
%samples_lengthPtr = load [128 x i64]**, [128 x i64]*** %samples_lengthPtr_
%samplesPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 9
%samplesPtr = load [128 x float*]**, [128 x float*]*** %samplesPtr_
%dataPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 10
%dataPtr = load %NoteData**, %NoteData*** %dataPtr_
%phasePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 11
%phasePtr = load double*, double** %phasePtr_
%idx_freqPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 12
%idx_freqPtr = load double*, double** %idx_freqPtr_
%eampPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 13
%eampPtr = load float*, float** %eampPtr_
%envPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 14
%envPtr = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**** %envPtr_
%total_timePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 15
%total_timePtr = load i64*, i64** %total_timePtr_
%rtPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 16
%rtPtr = load i64*, i64** %rtPtr_
%dtPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 17
%dtPtr = load i64*, i64** %dtPtr_
%rtimePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 18
%rtimePtr = load i64*, i64** %rtimePtr_
%rPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 19
%rPtr = load float*, float** %rPtr_
%sPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 20
%sPtr = load float*, float** %sPtr_
%dPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 21
%dPtr = load float*, float** %dPtr_
%aPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 22
%aPtr = load float*, float** %aPtr_
%revPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 23
%revPtr = load i1*, i1** %revPtr_
%offsetPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 24
%offsetPtr = load float*, float** %offsetPtr_
%panPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 25
%panPtr = load float*, float** %panPtr_
%gatePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 26
%gatePtr = load float*, float** %gatePtr_
%durationPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 27
%durationPtr = load i64*, i64** %durationPtr_
%ampPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 28
%ampPtr = load float*, float** %ampPtr_
%freqPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 29
%freqPtr = load float*, float** %freqPtr_
%starttimePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 30
%starttimePtr = load i64*, i64** %starttimePtr_
%_anon_lambda_2Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 31
%_anon_lambda_2Ptr = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %_anon_lambda_2Ptr_

; setup arguments
%timePtr = alloca i64
store i64 %time, i64* %timePtr
%chanPtr = alloca i64
store i64 %chan, i64* %chanPtr

; promote local stack var allocations
%tzone648 = load i8*, i8** %_impzPtr
%zone649 = bitcast i8* %tzone648 to %mzone*
%ifptr580 = alloca double
%ifptr583 = alloca double
%ifptr533 = alloca i1
%ifptr559 = alloca i1
%ifptr564 = alloca i1
%ifptr538 = alloca float

%val534 = load i64, i64* %chanPtr
%cmp535 = icmp eq i64 %val534, 0
br i1 %cmp535, label %then533, label %else533

then533:
; do set!
%val536 = load i64, i64* %dtPtr
%val537 = add i64 %val536, 1
store i64 %val537, i64* %dtPtr
%val539 = load i64, i64* %dtPtr
%val540 = load i64, i64* %durationPtr
%cmp541 = icmp sgt i64 %val539, %val540
br i1 %cmp541, label %then538, label %else538

then538:
; do set!
store float 0x0, float* %gatePtr
store float 0x0, float* %ifptr538
br label %ifcont538

else538:
br label %ifcont538

ifcont538:
%ifres542 = load float, float* %ifptr538

; do set!
%val543 = load i64, i64* %chanPtr
%val544 = load float, float* %gatePtr
%val545 = load float, float* %aPtr
%val546 = load float, float* %dPtr
%val547 = load float, float* %sPtr
%val548 = load float, float* %rPtr

; apply closure 
%vval549 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %envPtr
%val550 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*,{i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %vval549
%fPtr551 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}* %val550, i32 0, i32 2
%ePtr552 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}* %val550, i32 0, i32 1
%f553 = load float (i8*, i8*, i64, float, float, float, float, float)*, float (i8*, i8*, i64, float, float, float, float, float)** %fPtr551
%e554 = load i8*, i8** %ePtr552
%tzone555 = load i8*, i8** %_impzPtr
%zone556 = bitcast i8* %tzone555 to %mzone*
%z557 = bitcast %mzone* %zone556 to i8*
%result558 = tail call fastcc float %f553(i8* %z557, i8* %e554, i64 %val543, float %val544, float %val545, float %val546, float %val547, float %val548)
store float %result558, float* %eampPtr
%val560 = load float, float* %gatePtr
%cmp561 = fcmp ult float %val560, 0x3fb99999a0000000
br i1 %cmp561, label %then559, label %else559

then559:
; do set!
%val562 = load i64, i64* %rtPtr
%val563 = add i64 %val562, 1
store i64 %val563, i64* %rtPtr
%val565 = load i64, i64* %rtPtr
%val566 = load i64, i64* %rtimePtr
%cmp567 = icmp sgt i64 %val565, %val566
br i1 %cmp567, label %then564, label %else564

then564:
%val568 = load %NoteData*, %NoteData** %dataPtr
%res569 = call ccc i1 @impc_false()
%res570 = call ccc i1 @note_active_set(%NoteData* %val568, i1 %res569)
store i1 %res570, i1* %ifptr564
br label %ifcont564

else564:
br label %ifcont564

ifcont564:
%ifres571 = load i1, i1* %ifptr564

store i1 %ifres571, i1* %ifptr559
br label %ifcont559

else559:
br label %ifcont559

ifcont559:
%ifres572 = load i1, i1* %ifptr559

store i1 %ifres572, i1* %ifptr533
br label %ifcont533

else533:
br label %ifcont533

ifcont533:
%ifres573 = load i1, i1* %ifptr533

%tzone578 = load i8*, i8** %_impzPtr
%zone579 = bitcast i8* %tzone578 to %mzone*

; let assign value to symbol rate
%ratePtr = alloca double
%tzone594 = load i8*, i8** %_impzPtr
%zone595 = bitcast i8* %tzone594 to %mzone*

; let assign value to symbol pos
%posPtr = alloca double
%tzone599 = load i8*, i8** %_impzPtr
%zone600 = bitcast i8* %tzone599 to %mzone*

; let assign value to symbol posi
%posiPtr = alloca i64
%tzone605 = load i8*, i8** %_impzPtr
%zone606 = bitcast i8* %tzone605 to %mzone*

; let assign value to symbol posx
%posxPtr = alloca i64
%tzone613 = load i8*, i8** %_impzPtr
%zone614 = bitcast i8* %tzone613 to %mzone*

; let assign value to symbol lgth
%lgthPtr = alloca i64
%tzone619 = load i8*, i8** %_impzPtr
%zone620 = bitcast i8* %tzone619 to %mzone*

; let assign value to symbol dat
%datPtr = alloca float*
%val574 = load float, float* %freqPtr
%val575 = fpext float %val574 to double
%val576 = load double, double* %idx_freqPtr
%val577 = fdiv double %val575, %val576

; let value assignment
%rate = select i1 true, double %val577, double %val577
store double %rate, double* %ratePtr

%val581 = load i64, i64* %chanPtr
%cmp582 = icmp eq i64 %val581, 0
br i1 %cmp582, label %then580, label %else580

then580:
%val584 = load i1, i1* %revPtr
br i1 %val584, label %then583, label %else583

then583:
; do set!
%val585 = load double, double* %phasePtr
%val586 = load double, double* %ratePtr
%val587 = fsub double %val585, %val586
store double %val587, double* %phasePtr
store double %val587, double* %ifptr583
br label %ifcont583

else583:
; do set!
%val588 = load double, double* %phasePtr
%val589 = load double, double* %ratePtr
%val590 = fadd double %val588, %val589
store double %val590, double* %phasePtr
store double %val590, double* %ifptr583
br label %ifcont583

ifcont583:
%ifres591 = load double, double* %ifptr583

store double %ifres591, double* %ifptr580
br label %ifcont580

else580:
%val592 = load double, double* %phasePtr
store double %val592, double* %ifptr580
br label %ifcont580

ifcont580:
%ifres593 = load double, double* %ifptr580


; let value assignment
%pos = select i1 true, double %ifres593, double %ifres593
store double %pos, double* %posPtr

%val596 = load double, double* %posPtr
%val597 = call double @llvm.floor.f64(double %val596)
%val598 = fptosi double %val597 to i64

; let value assignment
%posi = select i1 true, i64 %val598, i64 %val598
store i64 %posi, i64* %posiPtr

%val601 = load i64, i64* %posiPtr
%val602 = mul i64 %val601, 2
%val603 = load i64, i64* %chanPtr
%val604 = add i64 %val602, %val603

; let value assignment
%posx = select i1 true, i64 %val604, i64 %val604
store i64 %posx, i64* %posxPtr

%val607 = load i64, i64* %indexPtr
%val608 = load [128 x i64]*, [128 x i64]** %samples_lengthPtr
; array ref
%_val609 = getelementptr [128 x i64], [128 x i64]* %val608, i32 0, i64 %val607
%val610 = load i64, i64* %_val609
%val611 = sub i64 %val610, 10
%val612 = bitcast i64 %val611 to i64

; let value assignment
%lgth = select i1 true, i64 %val612, i64 %val612
store i64 %lgth, i64* %lgthPtr

%val615 = load i64, i64* %indexPtr
%val616 = load [128 x float*]*, [128 x float*]** %samplesPtr
; array ref
%_val617 = getelementptr [128 x float*], [128 x float*]* %val616, i32 0, i64 %val615
%val618 = load float*, float** %_val617

; let value assignment
%dat = select i1 true, float* %val618, float* %val618
store float* %dat, float** %datPtr

; promote local stack var allocations
%tzone646 = load i8*, i8** %_impzPtr
%zone647 = bitcast i8* %tzone646 to %mzone*
%ifptr624 = alloca float
%ifptr625 = alloca i1
%ifptr632 = alloca i1
%val621 = load float, float* %ampPtr
%val622 = load float, float* %eampPtr
%val623 = fmul float %val621, %val622
%val626 = load i64, i64* %posiPtr
%val627 = load i64, i64* %lgthPtr
%cmp628 = icmp sgt i64 %val626, %val627
br i1 %cmp628, label %then625, label %else625

then625:
%val629 = load i64, i64* %posiPtr
%val630 = load i64, i64* %lgthPtr
%cmp631 = icmp sgt i64 %val629, %val630
store i1 %cmp631, i1* %ifptr625
br label %ifcont625

else625:
%val633 = load i64, i64* %posiPtr
%cmp634 = icmp slt i64 %val633, 0
br i1 %cmp634, label %then632, label %else632

then632:
%val635 = load i64, i64* %posiPtr
%cmp636 = icmp slt i64 %val635, 0
store i1 %cmp636, i1* %ifptr632
br label %ifcont632

else632:
%res637 = call ccc i1 @impc_false()
store i1 %res637, i1* %ifptr632
br label %ifcont632

ifcont632:
%ifres638 = load i1, i1* %ifptr632

store i1 %ifres638, i1* %ifptr625
br label %ifcont625

ifcont625:
%ifres639 = load i1, i1* %ifptr625

br i1 %ifres639, label %then624, label %else624

then624:
store float 0x0, float* %ifptr624
br label %ifcont624

else624:
%val640 = load i64, i64* %posxPtr
%val641 = load float*, float** %datPtr
; pointer ref
%val642 = getelementptr float, float* %val641, i64 %val640
%val643 = load float, float* %val642
store float %val643, float* %ifptr624
br label %ifcont624

ifcont624:
%ifres644 = load float, float* %ifptr624

%val645 = fmul float %val623, %ifres644
ret float %val645
}
define dllexport fastcc {i8*, i8*, float (i8*, i8*, i64, i64)*}** @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__396(i8* %_impz,i8* %_impenv, %NoteData* %data, [128 x float*]* %samples, [128 x i64]* %samples_length, [128 x i64]* %samples_offsets, [128 x i64]* %samples_channels, i64 %index, i64 %nargs, float* %dargs) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone406 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}*
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %impenv, i32 0, i32 0
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_
%amp_envPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %impenv, i32 0, i32 1
%amp_envPtr = load [4 x float]*, [4 x float]** %amp_envPtr_
%_anon_lambda_1Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %impenv, i32 0, i32 2
%_anon_lambda_1Ptr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %_anon_lambda_1Ptr_

; setup arguments
%dat_data = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%dataPtr = bitcast i8* %dat_data to %NoteData**
store %NoteData* %data, %NoteData** %dataPtr
%dat_samples = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%samplesPtr = bitcast i8* %dat_samples to [128 x float*]**
store [128 x float*]* %samples, [128 x float*]** %samplesPtr
%dat_samples_length = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%samples_lengthPtr = bitcast i8* %dat_samples_length to [128 x i64]**
store [128 x i64]* %samples_length, [128 x i64]** %samples_lengthPtr
%dat_samples_offsets = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%samples_offsetsPtr = bitcast i8* %dat_samples_offsets to [128 x i64]**
store [128 x i64]* %samples_offsets, [128 x i64]** %samples_offsetsPtr
%dat_samples_channels = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%samples_channelsPtr = bitcast i8* %dat_samples_channels to [128 x i64]**
store [128 x i64]* %samples_channels, [128 x i64]** %samples_channelsPtr
%dat_index = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%indexPtr = bitcast i8* %dat_index to i64*
store i64 %index, i64* %indexPtr
%dat_nargs = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%nargsPtr = bitcast i8* %dat_nargs to i64*
store i64 %nargs, i64* %nargsPtr
%dat_dargs = call i8* @llvm_zone_malloc(%mzone* %zone406, i64 8)
%dargsPtr = bitcast i8* %dat_dargs to float**
store float* %dargs, float** %dargsPtr

; promote local stack var allocations
%tzone829 = load i8*, i8** %_impzPtr
%zone830 = bitcast i8* %tzone829 to %mzone*
%ifptr444 = alloca i1
%ifptr447 = alloca i1
%ifptr435 = alloca float
%ifptr426 = alloca float

%tzone409 = load i8*, i8** %_impzPtr
%zone410 = bitcast i8* %tzone409 to %mzone*

; let assign value to symbol starttime
%dat_starttime = call i8* @llvm_zone_malloc(%mzone* %zone410, i64 8)
%starttimePtr = bitcast i8* %dat_starttime to i64*
%tzone413 = load i8*, i8** %_impzPtr
%zone414 = bitcast i8* %tzone413 to %mzone*

; let assign value to symbol freq
%dat_freq = call i8* @llvm_zone_malloc(%mzone* %zone414, i64 4)
%freqPtr = bitcast i8* %dat_freq to float*
%tzone417 = load i8*, i8** %_impzPtr
%zone418 = bitcast i8* %tzone417 to %mzone*

; let assign value to symbol amp
%dat_amp = call i8* @llvm_zone_malloc(%mzone* %zone418, i64 4)
%ampPtr = bitcast i8* %dat_amp to float*
%tzone421 = load i8*, i8** %_impzPtr
%zone422 = bitcast i8* %tzone421 to %mzone*

; let assign value to symbol duration
%dat_duration = call i8* @llvm_zone_malloc(%mzone* %zone422, i64 8)
%durationPtr = bitcast i8* %dat_duration to i64*
%tzone424 = load i8*, i8** %_impzPtr
%zone425 = bitcast i8* %tzone424 to %mzone*

; let assign value to symbol gate
%dat_gate = call i8* @llvm_zone_malloc(%mzone* %zone425, i64 4)
%gatePtr = bitcast i8* %dat_gate to float*
%tzone433 = load i8*, i8** %_impzPtr
%zone434 = bitcast i8* %tzone433 to %mzone*

; let assign value to symbol pan
%dat_pan = call i8* @llvm_zone_malloc(%mzone* %zone434, i64 4)
%panPtr = bitcast i8* %dat_pan to float*
%tzone442 = load i8*, i8** %_impzPtr
%zone443 = bitcast i8* %tzone442 to %mzone*

; let assign value to symbol offset
%dat_offset = call i8* @llvm_zone_malloc(%mzone* %zone443, i64 4)
%offsetPtr = bitcast i8* %dat_offset to float*
%tzone457 = load i8*, i8** %_impzPtr
%zone458 = bitcast i8* %tzone457 to %mzone*

; let assign value to symbol rev
%dat_rev = call i8* @llvm_zone_malloc(%mzone* %zone458, i64 1)
%revPtr = bitcast i8* %dat_rev to i1*
%tzone461 = load i8*, i8** %_impzPtr
%zone462 = bitcast i8* %tzone461 to %mzone*

; let assign value to symbol a
%dat_a = call i8* @llvm_zone_malloc(%mzone* %zone462, i64 4)
%aPtr = bitcast i8* %dat_a to float*
%tzone465 = load i8*, i8** %_impzPtr
%zone466 = bitcast i8* %tzone465 to %mzone*

; let assign value to symbol d
%dat_d = call i8* @llvm_zone_malloc(%mzone* %zone466, i64 4)
%dPtr = bitcast i8* %dat_d to float*
%tzone469 = load i8*, i8** %_impzPtr
%zone470 = bitcast i8* %tzone469 to %mzone*

; let assign value to symbol s
%dat_s = call i8* @llvm_zone_malloc(%mzone* %zone470, i64 4)
%sPtr = bitcast i8* %dat_s to float*
%tzone473 = load i8*, i8** %_impzPtr
%zone474 = bitcast i8* %tzone473 to %mzone*

; let assign value to symbol r
%dat_r = call i8* @llvm_zone_malloc(%mzone* %zone474, i64 4)
%rPtr = bitcast i8* %dat_r to float*
%tzone481 = load i8*, i8** %_impzPtr
%zone482 = bitcast i8* %tzone481 to %mzone*

; let assign value to symbol rtime
%dat_rtime = call i8* @llvm_zone_malloc(%mzone* %zone482, i64 8)
%rtimePtr = bitcast i8* %dat_rtime to i64*
%tzone483 = load i8*, i8** %_impzPtr
%zone484 = bitcast i8* %tzone483 to %mzone*

; let assign value to symbol dt
%dat_dt = call i8* @llvm_zone_malloc(%mzone* %zone484, i64 8)
%dtPtr = bitcast i8* %dat_dt to i64*
%tzone485 = load i8*, i8** %_impzPtr
%zone486 = bitcast i8* %tzone485 to %mzone*

; let assign value to symbol rt
%dat_rt = call i8* @llvm_zone_malloc(%mzone* %zone486, i64 8)
%rtPtr = bitcast i8* %dat_rt to i64*
%tzone490 = load i8*, i8** %_impzPtr
%zone491 = bitcast i8* %tzone490 to %mzone*

; let assign value to symbol total_time
%dat_total_time = call i8* @llvm_zone_malloc(%mzone* %zone491, i64 8)
%total_timePtr = bitcast i8* %dat_total_time to i64*
%tzone493 = load i8*, i8** %_impzPtr
%zone494 = bitcast i8* %tzone493 to %mzone*

; let assign value to symbol env
%dat_env = call i8* @llvm_zone_malloc(%mzone* %zone494, i64 8)
%envPtr = bitcast i8* %dat_env to {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***
%tzone495 = load i8*, i8** %_impzPtr
%zone496 = bitcast i8* %tzone495 to %mzone*

; let assign value to symbol eamp
%dat_eamp = call i8* @llvm_zone_malloc(%mzone* %zone496, i64 4)
%eampPtr = bitcast i8* %dat_eamp to float*
%tzone501 = load i8*, i8** %_impzPtr
%zone502 = bitcast i8* %tzone501 to %mzone*

; let assign value to symbol idx_freq
%dat_idx_freq = call i8* @llvm_zone_malloc(%mzone* %zone502, i64 8)
%idx_freqPtr = bitcast i8* %dat_idx_freq to double*
%tzone511 = load i8*, i8** %_impzPtr
%zone512 = bitcast i8* %tzone511 to %mzone*

; let assign value to symbol phase
%dat_phase = call i8* @llvm_zone_malloc(%mzone* %zone512, i64 8)
%phasePtr = bitcast i8* %dat_phase to double*
%val407 = load %NoteData*, %NoteData** %dataPtr
%res408 = call ccc i64 @note_starttime(%NoteData* %val407)

; let value assignment
%starttime = select i1 true, i64 %res408, i64 %res408
store i64 %starttime, i64* %starttimePtr

%val411 = load %NoteData*, %NoteData** %dataPtr
%res412 = call ccc float @note_frequency(%NoteData* %val411)

; let value assignment
%freq = select i1 true, float %res412, float %res412
store float %freq, float* %freqPtr

%val415 = load %NoteData*, %NoteData** %dataPtr
%res416 = call ccc float @note_amplitude(%NoteData* %val415)

; let value assignment
%amp = select i1 true, float %res416, float %res416
store float %amp, float* %ampPtr

%val419 = load %NoteData*, %NoteData** %dataPtr
%res420 = call ccc i64 @note_duration(%NoteData* %val419)

; let value assignment
%duration = select i1 true, i64 %res420, i64 %res420
store i64 %duration, i64* %durationPtr

%val423 = fptrunc double 1.0000000000000000000 to float

; let value assignment
%gate = select i1 true, float %val423, float %val423
store float %gate, float* %gatePtr

%val427 = load i64, i64* %nargsPtr
%cmp428 = icmp sgt i64 %val427, 1
br i1 %cmp428, label %then426, label %else426

then426:
%val429 = load float*, float** %dargsPtr
; pointer ref
%val430 = getelementptr float, float* %val429, i64 1
%val431 = load float, float* %val430
store float %val431, float* %ifptr426
br label %ifcont426

else426:
store float 0x3fe0000000000000, float* %ifptr426
br label %ifcont426

ifcont426:
%ifres432 = load float, float* %ifptr426


; let value assignment
%pan = select i1 true, float %ifres432, float %ifres432
store float %pan, float* %panPtr

%val436 = load i64, i64* %nargsPtr
%cmp437 = icmp sgt i64 %val436, 2
br i1 %cmp437, label %then435, label %else435

then435:
%val438 = load float*, float** %dargsPtr
; pointer ref
%val439 = getelementptr float, float* %val438, i64 2
%val440 = load float, float* %val439
store float %val440, float* %ifptr435
br label %ifcont435

else435:
store float 0x0, float* %ifptr435
br label %ifcont435

ifcont435:
%ifres441 = load float, float* %ifptr435


; let value assignment
%offset = select i1 true, float %ifres441, float %ifres441
store float %offset, float* %offsetPtr

%val445 = load i64, i64* %nargsPtr
%cmp446 = icmp sgt i64 %val445, 3
br i1 %cmp446, label %then444, label %else444

then444:
%val448 = load float*, float** %dargsPtr
; pointer ref
%val449 = getelementptr float, float* %val448, i64 3
%val450 = load float, float* %val449
%cmp451 = fcmp ugt float %val450, 0x3f847ae140000000
br i1 %cmp451, label %then447, label %else447

then447:
%res452 = call ccc i1 @impc_true()
store i1 %res452, i1* %ifptr447
br label %ifcont447

else447:
%res453 = call ccc i1 @impc_false()
store i1 %res453, i1* %ifptr447
br label %ifcont447

ifcont447:
%ifres454 = load i1, i1* %ifptr447

store i1 %ifres454, i1* %ifptr444
br label %ifcont444

else444:
%res455 = call ccc i1 @impc_false()
store i1 %res455, i1* %ifptr444
br label %ifcont444

ifcont444:
%ifres456 = load i1, i1* %ifptr444


; let value assignment
%rev = select i1 true, i1 %ifres456, i1 %ifres456
store i1 %rev, i1* %revPtr

%val459 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val460 = extractvalue [4 x float] %val459, 0

; let value assignment
%a = select i1 true, float %val460, float %val460
store float %a, float* %aPtr

%val463 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val464 = extractvalue [4 x float] %val463, 1

; let value assignment
%d = select i1 true, float %val464, float %val464
store float %d, float* %dPtr

%val467 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val468 = extractvalue [4 x float] %val467, 2

; let value assignment
%s = select i1 true, float %val468, float %val468
store float %s, float* %sPtr

%val471 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val472 = extractvalue [4 x float] %val471, 3

; let value assignment
%r = select i1 true, float %val472, float %val472
store float %r, float* %rPtr

%val475 = load float, float* @SRf
%val476 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val477 = extractvalue [4 x float] %val476, 3
%val478 = fdiv float %val477, 0x408f400000000000
%val479 = fmul float %val475, %val478
%val480 = fptosi float %val479 to i64

; let value assignment
%rtime = select i1 true, i64 %val480, i64 %val480
store i64 %rtime, i64* %rtimePtr


; let value assignment
%dt = select i1 true, i64 0, i64 0
store i64 %dt, i64* %dtPtr


; let value assignment
%rt = select i1 true, i64 0, i64 0
store i64 %rt, i64* %rtPtr

%val487 = load i64, i64* %durationPtr
%val488 = load i64, i64* %rtimePtr
%val489 = add i64 %val487, %val488

; let value assignment
%total_time = select i1 true, i64 %val489, i64 %val489
store i64 %total_time, i64* %total_timePtr

%res492 = call ccc {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** @adsr_c()

; let value assignment
%env = select i1 true, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %res492, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %res492
store {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %env, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %envPtr


; let value assignment
%eamp = select i1 true, float 0x0, float 0x0
store float %eamp, float* %eampPtr

%val497 = load i64, i64* %indexPtr
%val498 = sitofp i64 %val497 to float
%res499 = call ccc float @midi2frq(float %val498)
%val500 = fpext float %res499 to double

; let value assignment
%idx_freq = select i1 true, double %val500, double %val500
store double %idx_freq, double* %idx_freqPtr

%val503 = load float, float* %offsetPtr
%val504 = load i64, i64* %indexPtr
%val505 = load [128 x i64]*, [128 x i64]** %samples_offsetsPtr
; array ref
%_val506 = getelementptr [128 x i64], [128 x i64]* %val505, i32 0, i64 %val504
%val507 = load i64, i64* %_val506
%val508 = sitofp i64 %val507 to float
%val509 = fadd float %val503, %val508
%val510 = fpext float %val509 to double

; let value assignment
%phase = select i1 true, double %val510, double %val510
store double %phase, double* %phasePtr

; promote local stack var allocations
%tzone827 = load i8*, i8** %_impzPtr
%zone828 = bitcast i8* %tzone827 to %mzone*
%ifptr513 = alloca double
%ifptr514 = alloca i1
%ifptr516 = alloca i1
%val515 = load i1, i1* %revPtr
br i1 %val515, label %then514, label %else514

then514:
%val517 = load double, double* %phasePtr
%cmp518 = fcmp ult double %val517, 0.010000000000000000208
br i1 %cmp518, label %then516, label %else516

then516:
%val519 = load double, double* %phasePtr
%cmp520 = fcmp ult double %val519, 0.010000000000000000208
store i1 %cmp520, i1* %ifptr516
br label %ifcont516

else516:
%res521 = call ccc i1 @impc_false()
store i1 %res521, i1* %ifptr516
br label %ifcont516

ifcont516:
%ifres522 = load i1, i1* %ifptr516

store i1 %ifres522, i1* %ifptr514
br label %ifcont514

else514:
%res523 = call ccc i1 @impc_false()
store i1 %res523, i1* %ifptr514
br label %ifcont514

ifcont514:
%ifres524 = load i1, i1* %ifptr514

br i1 %ifres524, label %then513, label %else513

then513:
; do set!
%val525 = load i64, i64* %indexPtr
%val526 = load [128 x i64]*, [128 x i64]** %samples_lengthPtr
; array ref
%_val527 = getelementptr [128 x i64], [128 x i64]* %val526, i32 0, i64 %val525
%val528 = load i64, i64* %_val527
%val529 = sub i64 %val528, 10
%val530 = sitofp i64 %val529 to double
store double %val530, double* %phasePtr
store double %val530, double* %ifptr513
br label %ifcont513

else513:
br label %ifcont513

ifcont513:
%ifres531 = load double, double* %ifptr513

%tzone824 = load i8*, i8** %_impzPtr
%zone825 = bitcast i8* %tzone824 to %mzone*

; let assign value to symbol _anon_lambda_2
%dat__anon_lambda_2 = call i8* @llvm_zone_malloc(%mzone* %zone825, i64 8)
%_anon_lambda_2Ptr = bitcast i8* %dat__anon_lambda_2 to { i8*, i8*, float (i8*, i8*, i64, i64)*}***
%tzone650 = load i8*, i8** %_impzPtr
%zone651 = bitcast i8* %tzone650 to %mzone*
call void @llvm_zone_mark(%mzone* %zone651)
; malloc closure structure
%clsptr652 = call i8* @llvm_zone_malloc(%mzone* %zone651, i64 24)
%closure653 = bitcast i8* %clsptr652 to { i8*, i8*, float (i8*, i8*, i64, i64)*}*

; malloc environment structure
%envptr654 = call i8* @llvm_zone_malloc(%mzone* %zone651, i64 256)
%environment655 = bitcast i8* %envptr654 to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}*

; malloc closure address table
%addytable656 = call %clsvar* @new_address_table()
%var657 = bitcast [151 x i8]* @gsxtminstruments_ext12 to i8*
%var658 = bitcast [183 x i8]* @gsxtminstruments_ext13 to i8*
%addytable659 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var657, i32 0, i8* %var658, i32 3, %clsvar* %addytable656)
%var660 = bitcast [8 x i8]* @gsxtminstruments_ext14 to i8*
%var661 = bitcast [12 x i8]* @gsxtminstruments_ext15 to i8*
%addytable662 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var660, i32 8, i8* %var661, i32 3, %clsvar* %addytable659)
%var663 = bitcast [15 x i8]* @gsxtminstruments_ext16 to i8*
%var664 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable665 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var663, i32 16, i8* %var664, i32 3, %clsvar* %addytable662)
%var666 = bitcast [6 x i8]* @gsxtminstruments_ext18 to i8*
%var667 = bitcast [7 x i8]* @gsxtminstruments_ext19 to i8*
%addytable668 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var666, i32 24, i8* %var667, i32 3, %clsvar* %addytable665)
%var669 = bitcast [6 x i8]* @gsxtminstruments_ext20 to i8*
%var670 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable671 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var669, i32 32, i8* %var670, i32 3, %clsvar* %addytable668)
%var672 = bitcast [6 x i8]* @gsxtminstruments_ext22 to i8*
%var673 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable674 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var672, i32 40, i8* %var673, i32 3, %clsvar* %addytable671)
%var675 = bitcast [17 x i8]* @gsxtminstruments_ext23 to i8*
%var676 = bitcast [13 x i8]* @gsxtminstruments_ext24 to i8*
%addytable677 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var675, i32 48, i8* %var676, i32 3, %clsvar* %addytable674)
%var678 = bitcast [16 x i8]* @gsxtminstruments_ext25 to i8*
%var679 = bitcast [13 x i8]* @gsxtminstruments_ext24 to i8*
%addytable680 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var678, i32 56, i8* %var679, i32 3, %clsvar* %addytable677)
%var681 = bitcast [15 x i8]* @gsxtminstruments_ext26 to i8*
%var682 = bitcast [13 x i8]* @gsxtminstruments_ext24 to i8*
%addytable683 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var681, i32 64, i8* %var682, i32 3, %clsvar* %addytable680)
%var684 = bitcast [8 x i8]* @gsxtminstruments_ext27 to i8*
%var685 = bitcast [16 x i8]* @gsxtminstruments_ext28 to i8*
%addytable686 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var684, i32 72, i8* %var685, i32 3, %clsvar* %addytable683)
%var687 = bitcast [5 x i8]* @gsxtminstruments_ext29 to i8*
%var688 = bitcast [11 x i8]* @gsxtminstruments_ext30 to i8*
%addytable689 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var687, i32 80, i8* %var688, i32 3, %clsvar* %addytable686)
%var690 = bitcast [6 x i8]* @gsxtminstruments_ext31 to i8*
%var691 = bitcast [7 x i8]* @gsxtminstruments_ext32 to i8*
%addytable692 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var690, i32 88, i8* %var691, i32 3, %clsvar* %addytable689)
%var693 = bitcast [9 x i8]* @gsxtminstruments_ext33 to i8*
%var694 = bitcast [7 x i8]* @gsxtminstruments_ext32 to i8*
%addytable695 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var693, i32 96, i8* %var694, i32 3, %clsvar* %addytable692)
%var696 = bitcast [5 x i8]* @gsxtminstruments_ext34 to i8*
%var697 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable698 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var696, i32 104, i8* %var697, i32 3, %clsvar* %addytable695)
%var699 = bitcast [4 x i8]* @gsxtminstruments_ext36 to i8*
%var700 = bitcast [72 x i8]* @gsxtminstruments_ext37 to i8*
%addytable701 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var699, i32 112, i8* %var700, i32 3, %clsvar* %addytable698)
%var702 = bitcast [11 x i8]* @gsxtminstruments_ext38 to i8*
%var703 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable704 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var702, i32 120, i8* %var703, i32 3, %clsvar* %addytable701)
%var705 = bitcast [3 x i8]* @gsxtminstruments_ext39 to i8*
%var706 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable707 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var705, i32 128, i8* %var706, i32 3, %clsvar* %addytable704)
%var708 = bitcast [3 x i8]* @gsxtminstruments_ext40 to i8*
%var709 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable710 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var708, i32 136, i8* %var709, i32 3, %clsvar* %addytable707)
%var711 = bitcast [6 x i8]* @gsxtminstruments_ext41 to i8*
%var712 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable713 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var711, i32 144, i8* %var712, i32 3, %clsvar* %addytable710)
%var714 = bitcast [2 x i8]* @gsxtminstruments_ext42 to i8*
%var715 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable716 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var714, i32 152, i8* %var715, i32 3, %clsvar* %addytable713)
%var717 = bitcast [2 x i8]* @gsxtminstruments_ext43 to i8*
%var718 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable719 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var717, i32 160, i8* %var718, i32 3, %clsvar* %addytable716)
%var720 = bitcast [2 x i8]* @gsxtminstruments_ext44 to i8*
%var721 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable722 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var720, i32 168, i8* %var721, i32 3, %clsvar* %addytable719)
%var723 = bitcast [2 x i8]* @gsxtminstruments_ext45 to i8*
%var724 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable725 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var723, i32 176, i8* %var724, i32 3, %clsvar* %addytable722)
%var726 = bitcast [4 x i8]* @gsxtminstruments_ext46 to i8*
%var727 = bitcast [3 x i8]* @gsxtminstruments_ext47 to i8*
%addytable728 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var726, i32 184, i8* %var727, i32 3, %clsvar* %addytable725)
%var729 = bitcast [7 x i8]* @gsxtminstruments_ext48 to i8*
%var730 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable731 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var729, i32 192, i8* %var730, i32 3, %clsvar* %addytable728)
%var732 = bitcast [4 x i8]* @gsxtminstruments_ext49 to i8*
%var733 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable734 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var732, i32 200, i8* %var733, i32 3, %clsvar* %addytable731)
%var735 = bitcast [5 x i8]* @gsxtminstruments_ext50 to i8*
%var736 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable737 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var735, i32 208, i8* %var736, i32 3, %clsvar* %addytable734)
%var738 = bitcast [9 x i8]* @gsxtminstruments_ext51 to i8*
%var739 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable740 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var738, i32 216, i8* %var739, i32 3, %clsvar* %addytable737)
%var741 = bitcast [4 x i8]* @gsxtminstruments_ext52 to i8*
%var742 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable743 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var741, i32 224, i8* %var742, i32 3, %clsvar* %addytable740)
%var744 = bitcast [5 x i8]* @gsxtminstruments_ext53 to i8*
%var745 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable746 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var744, i32 232, i8* %var745, i32 3, %clsvar* %addytable743)
%var747 = bitcast [10 x i8]* @gsxtminstruments_ext54 to i8*
%var748 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable749 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var747, i32 240, i8* %var748, i32 3, %clsvar* %addytable746)
%var750 = bitcast [15 x i8]* @gsxtminstruments_ext55 to i8*
%var751 = bitcast [42 x i8]* @gsxtminstruments_ext56 to i8*
%addytable752 = call %clsvar* @add_address_table(%mzone* %zone651, i8* %var750, i32 248, i8* %var751, i32 3, %clsvar* %addytable749)
%address-table753 = bitcast %clsvar* %addytable752 to i8*

; insert table, function and environment into closure struct
%closure.table818 = getelementptr { i8*, i8*, float (i8*, i8*, i64, i64)*}, { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure653, i32 0, i32 0
store i8* %address-table753, i8** %closure.table818
%closure.env819 = getelementptr { i8*, i8*, float (i8*, i8*, i64, i64)*}, { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure653, i32 0, i32 1
store i8* %envptr654, i8** %closure.env819
%closure.func820 = getelementptr { i8*, i8*, float (i8*, i8*, i64, i64)*}, { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure653, i32 0, i32 2
store float (i8*, i8*, i64, i64)* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__397, float (i8*, i8*, i64, i64)** %closure.func820
%closure_size821 = call i64 @llvm_zone_mark_size(%mzone* %zone651)
call void @llvm_zone_ptr_set_size(i8* %clsptr652, i64 %closure_size821)
%wrapper_ptr822 = call i8* @llvm_zone_malloc(%mzone* %zone651, i64 8)
%closure_wrapper823 = bitcast i8* %wrapper_ptr822 to { i8*, i8*, float (i8*, i8*, i64, i64)*}**
store { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure653, { i8*, i8*, float (i8*, i8*, i64, i64)*}** %closure_wrapper823

; let value assignment
%_anon_lambda_2 = select i1 true, { i8*, i8*, float (i8*, i8*, i64, i64)*}** %closure_wrapper823, { i8*, i8*, float (i8*, i8*, i64, i64)*}** %closure_wrapper823
store { i8*, i8*, float (i8*, i8*, i64, i64)*}** %_anon_lambda_2, { i8*, i8*, float (i8*, i8*, i64, i64)*}*** %_anon_lambda_2Ptr

; add data to environment
; don't need to alloc for env var sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr755 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr755

; don't need to alloc for env var amp_env
%tmp_envptr757 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 1
store [4 x float]* %amp_envPtr, [4 x float]** %tmp_envptr757

; don't need to alloc for env var _anon_lambda_1
%tmp_envptr759 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_1Ptr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr759

; don't need to alloc for env var dargs
%tmp_envptr761 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 3
store float** %dargsPtr, float*** %tmp_envptr761

; don't need to alloc for env var nargs
%tmp_envptr763 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 4
store i64* %nargsPtr, i64** %tmp_envptr763

; don't need to alloc for env var index
%tmp_envptr765 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 5
store i64* %indexPtr, i64** %tmp_envptr765

; don't need to alloc for env var samples_channels
%tmp_envptr767 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 6
store [128 x i64]** %samples_channelsPtr, [128 x i64]*** %tmp_envptr767

; don't need to alloc for env var samples_offsets
%tmp_envptr769 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 7
store [128 x i64]** %samples_offsetsPtr, [128 x i64]*** %tmp_envptr769

; don't need to alloc for env var samples_length
%tmp_envptr771 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 8
store [128 x i64]** %samples_lengthPtr, [128 x i64]*** %tmp_envptr771

; don't need to alloc for env var samples
%tmp_envptr773 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 9
store [128 x float*]** %samplesPtr, [128 x float*]*** %tmp_envptr773

; don't need to alloc for env var data
%tmp_envptr775 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 10
store %NoteData** %dataPtr, %NoteData*** %tmp_envptr775

; don't need to alloc for env var phase
%tmp_envptr777 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 11
store double* %phasePtr, double** %tmp_envptr777

; don't need to alloc for env var idx_freq
%tmp_envptr779 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 12
store double* %idx_freqPtr, double** %tmp_envptr779

; don't need to alloc for env var eamp
%tmp_envptr781 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 13
store float* %eampPtr, float** %tmp_envptr781

; don't need to alloc for env var env
%tmp_envptr783 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 14
store {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %envPtr, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**** %tmp_envptr783

; don't need to alloc for env var total_time
%tmp_envptr785 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 15
store i64* %total_timePtr, i64** %tmp_envptr785

; don't need to alloc for env var rt
%tmp_envptr787 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 16
store i64* %rtPtr, i64** %tmp_envptr787

; don't need to alloc for env var dt
%tmp_envptr789 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 17
store i64* %dtPtr, i64** %tmp_envptr789

; don't need to alloc for env var rtime
%tmp_envptr791 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 18
store i64* %rtimePtr, i64** %tmp_envptr791

; don't need to alloc for env var r
%tmp_envptr793 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 19
store float* %rPtr, float** %tmp_envptr793

; don't need to alloc for env var s
%tmp_envptr795 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 20
store float* %sPtr, float** %tmp_envptr795

; don't need to alloc for env var d
%tmp_envptr797 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 21
store float* %dPtr, float** %tmp_envptr797

; don't need to alloc for env var a
%tmp_envptr799 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 22
store float* %aPtr, float** %tmp_envptr799

; don't need to alloc for env var rev
%tmp_envptr801 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 23
store i1* %revPtr, i1** %tmp_envptr801

; don't need to alloc for env var offset
%tmp_envptr803 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 24
store float* %offsetPtr, float** %tmp_envptr803

; don't need to alloc for env var pan
%tmp_envptr805 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 25
store float* %panPtr, float** %tmp_envptr805

; don't need to alloc for env var gate
%tmp_envptr807 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 26
store float* %gatePtr, float** %tmp_envptr807

; don't need to alloc for env var duration
%tmp_envptr809 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 27
store i64* %durationPtr, i64** %tmp_envptr809

; don't need to alloc for env var amp
%tmp_envptr811 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 28
store float* %ampPtr, float** %tmp_envptr811

; don't need to alloc for env var freq
%tmp_envptr813 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 29
store float* %freqPtr, float** %tmp_envptr813

; don't need to alloc for env var starttime
%tmp_envptr815 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 30
store i64* %starttimePtr, i64** %tmp_envptr815

; don't need to alloc for env var _anon_lambda_2
%tmp_envptr817 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment655, i32 0, i32 31
store {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %_anon_lambda_2Ptr, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %tmp_envptr817


%val826 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %_anon_lambda_2Ptr
ret {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val826
}
define dllexport fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__395(i8* %_impz,i8* %_impenv) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone398 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}*
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}* %impenv, i32 0, i32 0
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_

; setup arguments


%tzone404 = load i8*, i8** %_impzPtr
%zone405 = bitcast i8* %tzone404 to %mzone*

; let assign value to symbol amp_env
%dat_amp_env = call i8* @llvm_zone_malloc(%mzone* %zone405, i64 16)
%amp_envPtr = bitcast i8* %dat_amp_env to [4 x float]*
%val399 = fptrunc double 10.000000000000000000 to float
%arrayl400 = insertvalue [4 x float] undef, float %val399, 0
%arrayl401 = insertvalue [4 x float] %arrayl400, float 0x4049000000000000, 1
%arrayl402 = insertvalue [4 x float] %arrayl401, float 0x3fe3333340000000, 2
%arrayl403 = insertvalue [4 x float] %arrayl402, float 0x4069000000000000, 3

; let value assignment
%amp_env = select i1 true, [4 x float] %arrayl403, [4 x float] %arrayl403
store [4 x float] %amp_env, [4 x float]* %amp_envPtr

%tzone860 = load i8*, i8** %_impzPtr
%zone861 = bitcast i8* %tzone860 to %mzone*

; let assign value to symbol _anon_lambda_1
%dat__anon_lambda_1 = call i8* @llvm_zone_malloc(%mzone* %zone861, i64 8)
%_anon_lambda_1Ptr = bitcast i8* %dat__anon_lambda_1 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***
%tzone831 = load i8*, i8** %_impzPtr
%zone832 = bitcast i8* %tzone831 to %mzone*
call void @llvm_zone_mark(%mzone* %zone832)
; malloc closure structure
%clsptr833 = call i8* @llvm_zone_malloc(%mzone* %zone832, i64 24)
%closure834 = bitcast i8* %clsptr833 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*

; malloc environment structure
%envptr835 = call i8* @llvm_zone_malloc(%mzone* %zone832, i64 24)
%environment836 = bitcast i8* %envptr835 to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}*

; malloc closure address table
%addytable837 = call %clsvar* @new_address_table()
%var838 = bitcast [151 x i8]* @gsxtminstruments_ext12 to i8*
%var839 = bitcast [183 x i8]* @gsxtminstruments_ext13 to i8*
%addytable840 = call %clsvar* @add_address_table(%mzone* %zone832, i8* %var838, i32 0, i8* %var839, i32 3, %clsvar* %addytable837)
%var841 = bitcast [8 x i8]* @gsxtminstruments_ext14 to i8*
%var842 = bitcast [12 x i8]* @gsxtminstruments_ext15 to i8*
%addytable843 = call %clsvar* @add_address_table(%mzone* %zone832, i8* %var841, i32 8, i8* %var842, i32 3, %clsvar* %addytable840)
%var844 = bitcast [15 x i8]* @gsxtminstruments_ext16 to i8*
%var845 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable846 = call %clsvar* @add_address_table(%mzone* %zone832, i8* %var844, i32 16, i8* %var845, i32 3, %clsvar* %addytable843)
%address-table847 = bitcast %clsvar* %addytable846 to i8*

; insert table, function and environment into closure struct
%closure.table854 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure834, i32 0, i32 0
store i8* %address-table847, i8** %closure.table854
%closure.env855 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure834, i32 0, i32 1
store i8* %envptr835, i8** %closure.env855
%closure.func856 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure834, i32 0, i32 2
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__396, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)** %closure.func856
%closure_size857 = call i64 @llvm_zone_mark_size(%mzone* %zone832)
call void @llvm_zone_ptr_set_size(i8* %clsptr833, i64 %closure_size857)
%wrapper_ptr858 = call i8* @llvm_zone_malloc(%mzone* %zone832, i64 8)
%closure_wrapper859 = bitcast i8* %wrapper_ptr858 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure834, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %closure_wrapper859

; let value assignment
%_anon_lambda_1 = select i1 true, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %closure_wrapper859, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %closure_wrapper859
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %_anon_lambda_1, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_1Ptr

; add data to environment
; don't need to alloc for env var sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr849 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %environment836, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr849

; don't need to alloc for env var amp_env
%tmp_envptr851 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %environment836, i32 0, i32 1
store [4 x float]* %amp_envPtr, [4 x float]** %tmp_envptr851

; don't need to alloc for env var _anon_lambda_1
%tmp_envptr853 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %environment836, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_1Ptr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr853


%val862 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_1Ptr
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %val862
}
define dllexport ccc {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone882 = load i8*, i8** %_impzPtr
%zone883 = bitcast i8* %tzone882 to %mzone*

; let assign value to symbol sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%dat_sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd = call i8* @llvm_zone_malloc(%mzone* %zone883, i64 8)
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = bitcast i8* %dat_sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd to { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***
%tzone863 = load i8*, i8** %_impzPtr
%zone864 = bitcast i8* %tzone863 to %mzone*
call void @llvm_zone_mark(%mzone* %zone864)
; malloc closure structure
%clsptr865 = call i8* @llvm_zone_malloc(%mzone* %zone864, i64 24)
%closure866 = bitcast i8* %clsptr865 to { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*

; malloc environment structure
%envptr867 = call i8* @llvm_zone_malloc(%mzone* %zone864, i64 8)
%environment868 = bitcast i8* %envptr867 to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}*

; malloc closure address table
%addytable869 = call %clsvar* @new_address_table()
%var870 = bitcast [151 x i8]* @gsxtminstruments_ext12 to i8*
%var871 = bitcast [183 x i8]* @gsxtminstruments_ext13 to i8*
%addytable872 = call %clsvar* @add_address_table(%mzone* %zone864, i8* %var870, i32 0, i8* %var871, i32 3, %clsvar* %addytable869)
%address-table873 = bitcast %clsvar* %addytable872 to i8*

; insert table, function and environment into closure struct
%closure.table876 = getelementptr { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure866, i32 0, i32 0
store i8* %address-table873, i8** %closure.table876
%closure.env877 = getelementptr { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure866, i32 0, i32 1
store i8* %envptr867, i8** %closure.env877
%closure.func878 = getelementptr { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure866, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__395, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %closure.func878
%closure_size879 = call i64 @llvm_zone_mark_size(%mzone* %zone864)
call void @llvm_zone_ptr_set_size(i8* %clsptr865, i64 %closure_size879)
%wrapper_ptr880 = call i8* @llvm_zone_malloc(%mzone* %zone864, i64 8)
%closure_wrapper881 = bitcast i8* %wrapper_ptr880 to { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
store { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure866, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper881

; let value assignment
%sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd = select i1 true, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper881, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper881
store { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr

; add data to environment
; don't need to alloc for env var sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr875 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}* %environment868, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr875


%val884 = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr
ret {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %val884
}


@sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var = dllexport global [1 x i8*] [ i8* null ]

@sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd() alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %result
}


define dllexport ccc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_native() alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %result
}


define dllexport ccc i8*  @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
%tmpres = bitcast {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %result to i8*
%res = call ccc i8* @mk_cptr(i8* %_sc, i8* %tmpres)
ret i8* %res
}


define dllexport ccc void @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = select i1 true, i8* %dat, i8* %dat
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_linear_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext57 = hidden constant [144 x i8] c"sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd\00"
@gsxtminstruments_ext58 = hidden constant [15 x i8] c"_anon_lambda_3\00"
@gsxtminstruments_ext59 = hidden constant [9 x i8] c"channels\00"
@gsxtminstruments_ext60 = hidden constant [15 x i8] c"_anon_lambda_4\00"
define dllexport fastcc float @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__887(i8* %_impz,i8* %_impenv, i64 %time, i64 %chan) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone1029 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}*
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 0
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_
%amp_envPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 1
%amp_envPtr = load [4 x float]*, [4 x float]** %amp_envPtr_
%_anon_lambda_3Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 2
%_anon_lambda_3Ptr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %_anon_lambda_3Ptr_
%dargsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 3
%dargsPtr = load float**, float*** %dargsPtr_
%nargsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 4
%nargsPtr = load i64*, i64** %nargsPtr_
%indexPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 5
%indexPtr = load i64*, i64** %indexPtr_
%samples_channelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 6
%samples_channelsPtr = load [128 x i64]**, [128 x i64]*** %samples_channelsPtr_
%samples_offsetsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 7
%samples_offsetsPtr = load [128 x i64]**, [128 x i64]*** %samples_offsetsPtr_
%samples_lengthPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 8
%samples_lengthPtr = load [128 x i64]**, [128 x i64]*** %samples_lengthPtr_
%samplesPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 9
%samplesPtr = load [128 x float*]**, [128 x float*]*** %samplesPtr_
%dataPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 10
%dataPtr = load %NoteData**, %NoteData*** %dataPtr_
%phasePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 11
%phasePtr = load double*, double** %phasePtr_
%channelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 12
%channelsPtr = load i64*, i64** %channelsPtr_
%idx_freqPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 13
%idx_freqPtr = load double*, double** %idx_freqPtr_
%eampPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 14
%eampPtr = load float*, float** %eampPtr_
%envPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 15
%envPtr = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**** %envPtr_
%total_timePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 16
%total_timePtr = load i64*, i64** %total_timePtr_
%rtPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 17
%rtPtr = load i64*, i64** %rtPtr_
%dtPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 18
%dtPtr = load i64*, i64** %dtPtr_
%rtimePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 19
%rtimePtr = load i64*, i64** %rtimePtr_
%rPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 20
%rPtr = load float*, float** %rPtr_
%sPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 21
%sPtr = load float*, float** %sPtr_
%dPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 22
%dPtr = load float*, float** %dPtr_
%aPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 23
%aPtr = load float*, float** %aPtr_
%revPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 24
%revPtr = load i1*, i1** %revPtr_
%offsetPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 25
%offsetPtr = load float*, float** %offsetPtr_
%panPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 26
%panPtr = load float*, float** %panPtr_
%gatePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 27
%gatePtr = load float*, float** %gatePtr_
%durationPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 28
%durationPtr = load i64*, i64** %durationPtr_
%ampPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 29
%ampPtr = load float*, float** %ampPtr_
%freqPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 30
%freqPtr = load float*, float** %freqPtr_
%starttimePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 31
%starttimePtr = load i64*, i64** %starttimePtr_
%_anon_lambda_4Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %impenv, i32 0, i32 32
%_anon_lambda_4Ptr = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %_anon_lambda_4Ptr_

; setup arguments
%timePtr = alloca i64
store i64 %time, i64* %timePtr
%chanPtr = alloca i64
store i64 %chan, i64* %chanPtr

; promote local stack var allocations
%tzone1309 = load i8*, i8** %_impzPtr
%zone1310 = bitcast i8* %tzone1309 to %mzone*
%ifptr1101 = alloca i64
%ifptr1077 = alloca double
%ifptr1080 = alloca double
%ifptr1030 = alloca i1
%ifptr1056 = alloca i1
%ifptr1061 = alloca i1
%ifptr1035 = alloca float

%val1031 = load i64, i64* %chanPtr
%cmp1032 = icmp eq i64 %val1031, 0
br i1 %cmp1032, label %then1030, label %else1030

then1030:
; do set!
%val1033 = load i64, i64* %dtPtr
%val1034 = add i64 %val1033, 1
store i64 %val1034, i64* %dtPtr
%val1036 = load i64, i64* %dtPtr
%val1037 = load i64, i64* %durationPtr
%cmp1038 = icmp sgt i64 %val1036, %val1037
br i1 %cmp1038, label %then1035, label %else1035

then1035:
; do set!
store float 0x0, float* %gatePtr
store float 0x0, float* %ifptr1035
br label %ifcont1035

else1035:
br label %ifcont1035

ifcont1035:
%ifres1039 = load float, float* %ifptr1035

; do set!
%val1040 = load i64, i64* %chanPtr
%val1041 = load float, float* %gatePtr
%val1042 = load float, float* %aPtr
%val1043 = load float, float* %dPtr
%val1044 = load float, float* %sPtr
%val1045 = load float, float* %rPtr

; apply closure 
%vval1046 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %envPtr
%val1047 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*,{i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %vval1046
%fPtr1048 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}* %val1047, i32 0, i32 2
%ePtr1049 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}* %val1047, i32 0, i32 1
%f1050 = load float (i8*, i8*, i64, float, float, float, float, float)*, float (i8*, i8*, i64, float, float, float, float, float)** %fPtr1048
%e1051 = load i8*, i8** %ePtr1049
%tzone1052 = load i8*, i8** %_impzPtr
%zone1053 = bitcast i8* %tzone1052 to %mzone*
%z1054 = bitcast %mzone* %zone1053 to i8*
%result1055 = tail call fastcc float %f1050(i8* %z1054, i8* %e1051, i64 %val1040, float %val1041, float %val1042, float %val1043, float %val1044, float %val1045)
store float %result1055, float* %eampPtr
%val1057 = load float, float* %gatePtr
%cmp1058 = fcmp ult float %val1057, 0x3fb99999a0000000
br i1 %cmp1058, label %then1056, label %else1056

then1056:
; do set!
%val1059 = load i64, i64* %rtPtr
%val1060 = add i64 %val1059, 1
store i64 %val1060, i64* %rtPtr
%val1062 = load i64, i64* %rtPtr
%val1063 = load i64, i64* %rtimePtr
%cmp1064 = icmp sgt i64 %val1062, %val1063
br i1 %cmp1064, label %then1061, label %else1061

then1061:
%val1065 = load %NoteData*, %NoteData** %dataPtr
%res1066 = call ccc i1 @impc_false()
%res1067 = call ccc i1 @note_active_set(%NoteData* %val1065, i1 %res1066)
store i1 %res1067, i1* %ifptr1061
br label %ifcont1061

else1061:
br label %ifcont1061

ifcont1061:
%ifres1068 = load i1, i1* %ifptr1061

store i1 %ifres1068, i1* %ifptr1056
br label %ifcont1056

else1056:
br label %ifcont1056

ifcont1056:
%ifres1069 = load i1, i1* %ifptr1056

store i1 %ifres1069, i1* %ifptr1030
br label %ifcont1030

else1030:
br label %ifcont1030

ifcont1030:
%ifres1070 = load i1, i1* %ifptr1030

%tzone1075 = load i8*, i8** %_impzPtr
%zone1076 = bitcast i8* %tzone1075 to %mzone*

; let assign value to symbol rate
%ratePtr = alloca double
%tzone1091 = load i8*, i8** %_impzPtr
%zone1092 = bitcast i8* %tzone1091 to %mzone*

; let assign value to symbol pos
%posPtr = alloca double
%tzone1096 = load i8*, i8** %_impzPtr
%zone1097 = bitcast i8* %tzone1096 to %mzone*

; let assign value to symbol posi
%posiPtr = alloca i64
%tzone1108 = load i8*, i8** %_impzPtr
%zone1109 = bitcast i8* %tzone1108 to %mzone*

; let assign value to symbol posx
%posxPtr = alloca i64
%tzone1115 = load i8*, i8** %_impzPtr
%zone1116 = bitcast i8* %tzone1115 to %mzone*

; let assign value to symbol lgth
%lgthPtr = alloca i64
%tzone1121 = load i8*, i8** %_impzPtr
%zone1122 = bitcast i8* %tzone1121 to %mzone*

; let assign value to symbol dat
%datPtr = alloca float*
%val1071 = load float, float* %freqPtr
%val1072 = fpext float %val1071 to double
%val1073 = load double, double* %idx_freqPtr
%val1074 = fdiv double %val1072, %val1073

; let value assignment
%rate = select i1 true, double %val1074, double %val1074
store double %rate, double* %ratePtr

%val1078 = load i64, i64* %chanPtr
%cmp1079 = icmp eq i64 %val1078, 0
br i1 %cmp1079, label %then1077, label %else1077

then1077:
%val1081 = load i1, i1* %revPtr
br i1 %val1081, label %then1080, label %else1080

then1080:
; do set!
%val1082 = load double, double* %phasePtr
%val1083 = load double, double* %ratePtr
%val1084 = fsub double %val1082, %val1083
store double %val1084, double* %phasePtr
store double %val1084, double* %ifptr1080
br label %ifcont1080

else1080:
; do set!
%val1085 = load double, double* %phasePtr
%val1086 = load double, double* %ratePtr
%val1087 = fadd double %val1085, %val1086
store double %val1087, double* %phasePtr
store double %val1087, double* %ifptr1080
br label %ifcont1080

ifcont1080:
%ifres1088 = load double, double* %ifptr1080

store double %ifres1088, double* %ifptr1077
br label %ifcont1077

else1077:
%val1089 = load double, double* %phasePtr
store double %val1089, double* %ifptr1077
br label %ifcont1077

ifcont1077:
%ifres1090 = load double, double* %ifptr1077


; let value assignment
%pos = select i1 true, double %ifres1090, double %ifres1090
store double %pos, double* %posPtr

%val1093 = load double, double* %posPtr
%val1094 = call double @llvm.floor.f64(double %val1093)
%val1095 = fptosi double %val1094 to i64

; let value assignment
%posi = select i1 true, i64 %val1095, i64 %val1095
store i64 %posi, i64* %posiPtr

%val1098 = load i64, i64* %posiPtr
%val1099 = load i64, i64* %channelsPtr
%val1100 = mul i64 %val1098, %val1099
%val1102 = load i64, i64* %chanPtr
%val1103 = load i64, i64* %channelsPtr
%cmp1104 = icmp slt i64 %val1102, %val1103
br i1 %cmp1104, label %then1101, label %else1101

then1101:
%val1105 = load i64, i64* %chanPtr
store i64 %val1105, i64* %ifptr1101
br label %ifcont1101

else1101:
store i64 0, i64* %ifptr1101
br label %ifcont1101

ifcont1101:
%ifres1106 = load i64, i64* %ifptr1101

%val1107 = add i64 %val1100, %ifres1106

; let value assignment
%posx = select i1 true, i64 %val1107, i64 %val1107
store i64 %posx, i64* %posxPtr

%val1110 = load i64, i64* %indexPtr
%val1111 = load [128 x i64]*, [128 x i64]** %samples_lengthPtr
; array ref
%_val1112 = getelementptr [128 x i64], [128 x i64]* %val1111, i32 0, i64 %val1110
%val1113 = load i64, i64* %_val1112
%val1114 = sub i64 %val1113, 10

; let value assignment
%lgth = select i1 true, i64 %val1114, i64 %val1114
store i64 %lgth, i64* %lgthPtr

%val1117 = load i64, i64* %indexPtr
%val1118 = load [128 x float*]*, [128 x float*]** %samplesPtr
; array ref
%_val1119 = getelementptr [128 x float*], [128 x float*]* %val1118, i32 0, i64 %val1117
%val1120 = load float*, float** %_val1119

; let value assignment
%dat = select i1 true, float* %val1120, float* %val1120
store float* %dat, float** %datPtr

; promote local stack var allocations
%tzone1307 = load i8*, i8** %_impzPtr
%zone1308 = bitcast i8* %tzone1307 to %mzone*
%ifptr1251 = alloca float
%ifptr1271 = alloca float
%ifptr1252 = alloca i1
%ifptr1261 = alloca i1
%ifptr1213 = alloca float
%ifptr1233 = alloca float
%ifptr1214 = alloca i1
%ifptr1223 = alloca i1
%ifptr1190 = alloca float
%ifptr1191 = alloca i1
%ifptr1198 = alloca i1
%ifptr1156 = alloca float
%ifptr1172 = alloca float
%ifptr1157 = alloca i1
%ifptr1164 = alloca i1
%ifptr1129 = alloca i1
%ifptr1136 = alloca i1
%val1124 = load double, double* %ratePtr
%val1125 = fsub double %val1124, 1.0000000000000000000
%val1126 = call double @llvm.fabs.f64(double %val1125)
%cmp1127 = fcmp ult double %val1126, 0.010000000000000000208
br i1 %cmp1127, label %then1123, label %else1123

then1123:
%val1130 = load i64, i64* %posiPtr
%val1131 = load i64, i64* %lgthPtr
%cmp1132 = icmp sgt i64 %val1130, %val1131
br i1 %cmp1132, label %then1129, label %else1129

then1129:
%val1133 = load i64, i64* %posiPtr
%val1134 = load i64, i64* %lgthPtr
%cmp1135 = icmp sgt i64 %val1133, %val1134
store i1 %cmp1135, i1* %ifptr1129
br label %ifcont1129

else1129:
%val1137 = load i64, i64* %posiPtr
%cmp1138 = icmp slt i64 %val1137, 0
br i1 %cmp1138, label %then1136, label %else1136

then1136:
%val1139 = load i64, i64* %posiPtr
%cmp1140 = icmp slt i64 %val1139, 0
store i1 %cmp1140, i1* %ifptr1136
br label %ifcont1136

else1136:
%res1141 = call ccc i1 @impc_false()
store i1 %res1141, i1* %ifptr1136
br label %ifcont1136

ifcont1136:
%ifres1142 = load i1, i1* %ifptr1136

store i1 %ifres1142, i1* %ifptr1129
br label %ifcont1129

ifcont1129:
%ifres1143 = load i1, i1* %ifptr1129

br i1 %ifres1143, label %then1128, label %else1128

then1128:
ret float 0x0

else1128:
%val1144 = load float, float* %ampPtr
%val1145 = load float, float* %eampPtr
%val1146 = fmul float %val1144, %val1145
%val1147 = load i64, i64* %chanPtr
%val1148 = load float, float* %panPtr
%res1149 = call ccc float @panner(i64 %val1147, float %val1148)
%val1150 = fmul float %val1146, %res1149
%val1151 = load i64, i64* %posxPtr
%val1152 = load float*, float** %datPtr
; pointer ref
%val1153 = getelementptr float, float* %val1152, i64 %val1151
%val1154 = load float, float* %val1153
%val1155 = fmul float %val1150, %val1154
ret float %val1155

else1123:
%tzone1188 = load i8*, i8** %_impzPtr
%zone1189 = bitcast i8* %tzone1188 to %mzone*

; let assign value to symbol y1
%y1Ptr = alloca float
%tzone1211 = load i8*, i8** %_impzPtr
%zone1212 = bitcast i8* %tzone1211 to %mzone*

; let assign value to symbol x0
%x0Ptr = alloca float
%tzone1249 = load i8*, i8** %_impzPtr
%zone1250 = bitcast i8* %tzone1249 to %mzone*

; let assign value to symbol x1
%x1Ptr = alloca float
%tzone1289 = load i8*, i8** %_impzPtr
%zone1290 = bitcast i8* %tzone1289 to %mzone*

; let assign value to symbol x2
%x2Ptr = alloca float
%val1158 = load i64, i64* %posiPtr
%val1159 = load i64, i64* %lgthPtr
%cmp1160 = icmp sgt i64 %val1158, %val1159
br i1 %cmp1160, label %then1157, label %else1157

then1157:
%val1161 = load i64, i64* %posiPtr
%val1162 = load i64, i64* %lgthPtr
%cmp1163 = icmp sgt i64 %val1161, %val1162
store i1 %cmp1163, i1* %ifptr1157
br label %ifcont1157

else1157:
%val1165 = load i64, i64* %posiPtr
%cmp1166 = icmp slt i64 %val1165, 1
br i1 %cmp1166, label %then1164, label %else1164

then1164:
%val1167 = load i64, i64* %posiPtr
%cmp1168 = icmp slt i64 %val1167, 1
store i1 %cmp1168, i1* %ifptr1164
br label %ifcont1164

else1164:
%res1169 = call ccc i1 @impc_false()
store i1 %res1169, i1* %ifptr1164
br label %ifcont1164

ifcont1164:
%ifres1170 = load i1, i1* %ifptr1164

store i1 %ifres1170, i1* %ifptr1157
br label %ifcont1157

ifcont1157:
%ifres1171 = load i1, i1* %ifptr1157

br i1 %ifres1171, label %then1156, label %else1156

then1156:
store float 0x0, float* %ifptr1156
br label %ifcont1156

else1156:
%val1173 = load i1, i1* %revPtr
br i1 %val1173, label %then1172, label %else1172

then1172:
%val1174 = load i64, i64* %posxPtr
%val1175 = load i64, i64* %channelsPtr
%val1176 = add i64 %val1174, %val1175
%val1177 = load float*, float** %datPtr
; pointer ref
%val1178 = getelementptr float, float* %val1177, i64 %val1176
%val1179 = load float, float* %val1178
store float %val1179, float* %ifptr1172
br label %ifcont1172

else1172:
%val1180 = load i64, i64* %posxPtr
%val1181 = load i64, i64* %channelsPtr
%val1182 = sub i64 %val1180, %val1181
%val1183 = load float*, float** %datPtr
; pointer ref
%val1184 = getelementptr float, float* %val1183, i64 %val1182
%val1185 = load float, float* %val1184
store float %val1185, float* %ifptr1172
br label %ifcont1172

ifcont1172:
%ifres1186 = load float, float* %ifptr1172

store float %ifres1186, float* %ifptr1156
br label %ifcont1156

ifcont1156:
%ifres1187 = load float, float* %ifptr1156


; let value assignment
%y1 = select i1 true, float %ifres1187, float %ifres1187
store float %y1, float* %y1Ptr

%val1192 = load i64, i64* %posiPtr
%val1193 = load i64, i64* %lgthPtr
%cmp1194 = icmp sgt i64 %val1192, %val1193
br i1 %cmp1194, label %then1191, label %else1191

then1191:
%val1195 = load i64, i64* %posiPtr
%val1196 = load i64, i64* %lgthPtr
%cmp1197 = icmp sgt i64 %val1195, %val1196
store i1 %cmp1197, i1* %ifptr1191
br label %ifcont1191

else1191:
%val1199 = load i64, i64* %posiPtr
%cmp1200 = icmp slt i64 %val1199, 0
br i1 %cmp1200, label %then1198, label %else1198

then1198:
%val1201 = load i64, i64* %posiPtr
%cmp1202 = icmp slt i64 %val1201, 0
store i1 %cmp1202, i1* %ifptr1198
br label %ifcont1198

else1198:
%res1203 = call ccc i1 @impc_false()
store i1 %res1203, i1* %ifptr1198
br label %ifcont1198

ifcont1198:
%ifres1204 = load i1, i1* %ifptr1198

store i1 %ifres1204, i1* %ifptr1191
br label %ifcont1191

ifcont1191:
%ifres1205 = load i1, i1* %ifptr1191

br i1 %ifres1205, label %then1190, label %else1190

then1190:
store float 0x0, float* %ifptr1190
br label %ifcont1190

else1190:
%val1206 = load i64, i64* %posxPtr
%val1207 = load float*, float** %datPtr
; pointer ref
%val1208 = getelementptr float, float* %val1207, i64 %val1206
%val1209 = load float, float* %val1208
store float %val1209, float* %ifptr1190
br label %ifcont1190

ifcont1190:
%ifres1210 = load float, float* %ifptr1190


; let value assignment
%x0 = select i1 true, float %ifres1210, float %ifres1210
store float %x0, float* %x0Ptr

%val1215 = load i64, i64* %posiPtr
%val1216 = add i64 %val1215, 1
%val1217 = load i64, i64* %lgthPtr
%cmp1218 = icmp sgt i64 %val1216, %val1217
br i1 %cmp1218, label %then1214, label %else1214

then1214:
%val1219 = load i64, i64* %posiPtr
%val1220 = add i64 %val1219, 1
%val1221 = load i64, i64* %lgthPtr
%cmp1222 = icmp sgt i64 %val1220, %val1221
store i1 %cmp1222, i1* %ifptr1214
br label %ifcont1214

else1214:
%val1224 = load i64, i64* %posiPtr
%val1225 = sub i64 %val1224, 1
%cmp1226 = icmp slt i64 %val1225, 0
br i1 %cmp1226, label %then1223, label %else1223

then1223:
%val1227 = load i64, i64* %posiPtr
%val1228 = sub i64 %val1227, 1
%cmp1229 = icmp slt i64 %val1228, 0
store i1 %cmp1229, i1* %ifptr1223
br label %ifcont1223

else1223:
%res1230 = call ccc i1 @impc_false()
store i1 %res1230, i1* %ifptr1223
br label %ifcont1223

ifcont1223:
%ifres1231 = load i1, i1* %ifptr1223

store i1 %ifres1231, i1* %ifptr1214
br label %ifcont1214

ifcont1214:
%ifres1232 = load i1, i1* %ifptr1214

br i1 %ifres1232, label %then1213, label %else1213

then1213:
store float 0x0, float* %ifptr1213
br label %ifcont1213

else1213:
%val1234 = load i1, i1* %revPtr
br i1 %val1234, label %then1233, label %else1233

then1233:
%val1235 = load i64, i64* %posxPtr
%val1236 = load i64, i64* %channelsPtr
%val1237 = sub i64 %val1235, %val1236
%val1238 = load float*, float** %datPtr
; pointer ref
%val1239 = getelementptr float, float* %val1238, i64 %val1237
%val1240 = load float, float* %val1239
store float %val1240, float* %ifptr1233
br label %ifcont1233

else1233:
%val1241 = load i64, i64* %posxPtr
%val1242 = load i64, i64* %channelsPtr
%val1243 = add i64 %val1241, %val1242
%val1244 = load float*, float** %datPtr
; pointer ref
%val1245 = getelementptr float, float* %val1244, i64 %val1243
%val1246 = load float, float* %val1245
store float %val1246, float* %ifptr1233
br label %ifcont1233

ifcont1233:
%ifres1247 = load float, float* %ifptr1233

store float %ifres1247, float* %ifptr1213
br label %ifcont1213

ifcont1213:
%ifres1248 = load float, float* %ifptr1213


; let value assignment
%x1 = select i1 true, float %ifres1248, float %ifres1248
store float %x1, float* %x1Ptr

%val1253 = load i64, i64* %posiPtr
%val1254 = add i64 %val1253, 2
%val1255 = load i64, i64* %lgthPtr
%cmp1256 = icmp sgt i64 %val1254, %val1255
br i1 %cmp1256, label %then1252, label %else1252

then1252:
%val1257 = load i64, i64* %posiPtr
%val1258 = add i64 %val1257, 2
%val1259 = load i64, i64* %lgthPtr
%cmp1260 = icmp sgt i64 %val1258, %val1259
store i1 %cmp1260, i1* %ifptr1252
br label %ifcont1252

else1252:
%val1262 = load i64, i64* %posiPtr
%val1263 = sub i64 %val1262, 2
%cmp1264 = icmp slt i64 %val1263, 0
br i1 %cmp1264, label %then1261, label %else1261

then1261:
%val1265 = load i64, i64* %posiPtr
%val1266 = sub i64 %val1265, 2
%cmp1267 = icmp slt i64 %val1266, 0
store i1 %cmp1267, i1* %ifptr1261
br label %ifcont1261

else1261:
%res1268 = call ccc i1 @impc_false()
store i1 %res1268, i1* %ifptr1261
br label %ifcont1261

ifcont1261:
%ifres1269 = load i1, i1* %ifptr1261

store i1 %ifres1269, i1* %ifptr1252
br label %ifcont1252

ifcont1252:
%ifres1270 = load i1, i1* %ifptr1252

br i1 %ifres1270, label %then1251, label %else1251

then1251:
store float 0x0, float* %ifptr1251
br label %ifcont1251

else1251:
%val1272 = load i1, i1* %revPtr
br i1 %val1272, label %then1271, label %else1271

then1271:
%val1273 = load i64, i64* %posxPtr
%val1274 = load i64, i64* %channelsPtr
%val1275 = mul i64 2, %val1274
%val1276 = sub i64 %val1273, %val1275
%val1277 = load float*, float** %datPtr
; pointer ref
%val1278 = getelementptr float, float* %val1277, i64 %val1276
%val1279 = load float, float* %val1278
store float %val1279, float* %ifptr1271
br label %ifcont1271

else1271:
%val1280 = load i64, i64* %posxPtr
%val1281 = load i64, i64* %channelsPtr
%val1282 = mul i64 2, %val1281
%val1283 = add i64 %val1280, %val1282
%val1284 = load float*, float** %datPtr
; pointer ref
%val1285 = getelementptr float, float* %val1284, i64 %val1283
%val1286 = load float, float* %val1285
store float %val1286, float* %ifptr1271
br label %ifcont1271

ifcont1271:
%ifres1287 = load float, float* %ifptr1271

store float %ifres1287, float* %ifptr1251
br label %ifcont1251

ifcont1251:
%ifres1288 = load float, float* %ifptr1251


; let value assignment
%x2 = select i1 true, float %ifres1288, float %ifres1288
store float %x2, float* %x2Ptr

%val1291 = load i64, i64* %chanPtr
%val1292 = load float, float* %panPtr
%res1293 = call ccc float @panner(i64 %val1291, float %val1292)
%val1294 = load float, float* %ampPtr
%val1295 = fmul float %res1293, %val1294
%val1296 = load float, float* %eampPtr
%val1297 = fmul float %val1295, %val1296
%val1298 = load double, double* %posPtr
%val1299 = frem double %val1298, 1.0000000000000000000
%res1300 = call ccc float @dtof(double %val1299)
%val1301 = load float, float* %y1Ptr
%val1302 = load float, float* %x0Ptr
%val1303 = load float, float* %x1Ptr
%val1304 = load float, float* %x2Ptr
%res1305 = call ccc float @hermite_interp(float %res1300, float %val1301, float %val1302, float %val1303, float %val1304)
%val1306 = fmul float %val1297, %res1305
ret float %val1306
}
define dllexport fastcc {i8*, i8*, float (i8*, i8*, i64, i64)*}** @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__886(i8* %_impz,i8* %_impenv, %NoteData* %data, [128 x float*]* %samples, [128 x i64]* %samples_length, [128 x i64]* %samples_offsets, [128 x i64]* %samples_channels, i64 %index, i64 %nargs, float* %dargs) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone896 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}*
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %impenv, i32 0, i32 0
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_
%amp_envPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %impenv, i32 0, i32 1
%amp_envPtr = load [4 x float]*, [4 x float]** %amp_envPtr_
%_anon_lambda_3Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %impenv, i32 0, i32 2
%_anon_lambda_3Ptr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %_anon_lambda_3Ptr_

; setup arguments
%dat_data = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%dataPtr = bitcast i8* %dat_data to %NoteData**
store %NoteData* %data, %NoteData** %dataPtr
%dat_samples = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%samplesPtr = bitcast i8* %dat_samples to [128 x float*]**
store [128 x float*]* %samples, [128 x float*]** %samplesPtr
%dat_samples_length = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%samples_lengthPtr = bitcast i8* %dat_samples_length to [128 x i64]**
store [128 x i64]* %samples_length, [128 x i64]** %samples_lengthPtr
%dat_samples_offsets = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%samples_offsetsPtr = bitcast i8* %dat_samples_offsets to [128 x i64]**
store [128 x i64]* %samples_offsets, [128 x i64]** %samples_offsetsPtr
%dat_samples_channels = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%samples_channelsPtr = bitcast i8* %dat_samples_channels to [128 x i64]**
store [128 x i64]* %samples_channels, [128 x i64]** %samples_channelsPtr
%dat_index = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%indexPtr = bitcast i8* %dat_index to i64*
store i64 %index, i64* %indexPtr
%dat_nargs = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%nargsPtr = bitcast i8* %dat_nargs to i64*
store i64 %nargs, i64* %nargsPtr
%dat_dargs = call i8* @llvm_zone_malloc(%mzone* %zone896, i64 8)
%dargsPtr = bitcast i8* %dat_dargs to float**
store float* %dargs, float** %dargsPtr

; promote local stack var allocations
%tzone1495 = load i8*, i8** %_impzPtr
%zone1496 = bitcast i8* %tzone1495 to %mzone*
%ifptr934 = alloca i1
%ifptr937 = alloca i1
%ifptr925 = alloca float
%ifptr916 = alloca float

%tzone899 = load i8*, i8** %_impzPtr
%zone900 = bitcast i8* %tzone899 to %mzone*

; let assign value to symbol starttime
%dat_starttime = call i8* @llvm_zone_malloc(%mzone* %zone900, i64 8)
%starttimePtr = bitcast i8* %dat_starttime to i64*
%tzone903 = load i8*, i8** %_impzPtr
%zone904 = bitcast i8* %tzone903 to %mzone*

; let assign value to symbol freq
%dat_freq = call i8* @llvm_zone_malloc(%mzone* %zone904, i64 4)
%freqPtr = bitcast i8* %dat_freq to float*
%tzone907 = load i8*, i8** %_impzPtr
%zone908 = bitcast i8* %tzone907 to %mzone*

; let assign value to symbol amp
%dat_amp = call i8* @llvm_zone_malloc(%mzone* %zone908, i64 4)
%ampPtr = bitcast i8* %dat_amp to float*
%tzone911 = load i8*, i8** %_impzPtr
%zone912 = bitcast i8* %tzone911 to %mzone*

; let assign value to symbol duration
%dat_duration = call i8* @llvm_zone_malloc(%mzone* %zone912, i64 8)
%durationPtr = bitcast i8* %dat_duration to i64*
%tzone914 = load i8*, i8** %_impzPtr
%zone915 = bitcast i8* %tzone914 to %mzone*

; let assign value to symbol gate
%dat_gate = call i8* @llvm_zone_malloc(%mzone* %zone915, i64 4)
%gatePtr = bitcast i8* %dat_gate to float*
%tzone923 = load i8*, i8** %_impzPtr
%zone924 = bitcast i8* %tzone923 to %mzone*

; let assign value to symbol pan
%dat_pan = call i8* @llvm_zone_malloc(%mzone* %zone924, i64 4)
%panPtr = bitcast i8* %dat_pan to float*
%tzone932 = load i8*, i8** %_impzPtr
%zone933 = bitcast i8* %tzone932 to %mzone*

; let assign value to symbol offset
%dat_offset = call i8* @llvm_zone_malloc(%mzone* %zone933, i64 4)
%offsetPtr = bitcast i8* %dat_offset to float*
%tzone947 = load i8*, i8** %_impzPtr
%zone948 = bitcast i8* %tzone947 to %mzone*

; let assign value to symbol rev
%dat_rev = call i8* @llvm_zone_malloc(%mzone* %zone948, i64 1)
%revPtr = bitcast i8* %dat_rev to i1*
%tzone951 = load i8*, i8** %_impzPtr
%zone952 = bitcast i8* %tzone951 to %mzone*

; let assign value to symbol a
%dat_a = call i8* @llvm_zone_malloc(%mzone* %zone952, i64 4)
%aPtr = bitcast i8* %dat_a to float*
%tzone955 = load i8*, i8** %_impzPtr
%zone956 = bitcast i8* %tzone955 to %mzone*

; let assign value to symbol d
%dat_d = call i8* @llvm_zone_malloc(%mzone* %zone956, i64 4)
%dPtr = bitcast i8* %dat_d to float*
%tzone959 = load i8*, i8** %_impzPtr
%zone960 = bitcast i8* %tzone959 to %mzone*

; let assign value to symbol s
%dat_s = call i8* @llvm_zone_malloc(%mzone* %zone960, i64 4)
%sPtr = bitcast i8* %dat_s to float*
%tzone963 = load i8*, i8** %_impzPtr
%zone964 = bitcast i8* %tzone963 to %mzone*

; let assign value to symbol r
%dat_r = call i8* @llvm_zone_malloc(%mzone* %zone964, i64 4)
%rPtr = bitcast i8* %dat_r to float*
%tzone971 = load i8*, i8** %_impzPtr
%zone972 = bitcast i8* %tzone971 to %mzone*

; let assign value to symbol rtime
%dat_rtime = call i8* @llvm_zone_malloc(%mzone* %zone972, i64 8)
%rtimePtr = bitcast i8* %dat_rtime to i64*
%tzone973 = load i8*, i8** %_impzPtr
%zone974 = bitcast i8* %tzone973 to %mzone*

; let assign value to symbol dt
%dat_dt = call i8* @llvm_zone_malloc(%mzone* %zone974, i64 8)
%dtPtr = bitcast i8* %dat_dt to i64*
%tzone975 = load i8*, i8** %_impzPtr
%zone976 = bitcast i8* %tzone975 to %mzone*

; let assign value to symbol rt
%dat_rt = call i8* @llvm_zone_malloc(%mzone* %zone976, i64 8)
%rtPtr = bitcast i8* %dat_rt to i64*
%tzone980 = load i8*, i8** %_impzPtr
%zone981 = bitcast i8* %tzone980 to %mzone*

; let assign value to symbol total_time
%dat_total_time = call i8* @llvm_zone_malloc(%mzone* %zone981, i64 8)
%total_timePtr = bitcast i8* %dat_total_time to i64*
%tzone983 = load i8*, i8** %_impzPtr
%zone984 = bitcast i8* %tzone983 to %mzone*

; let assign value to symbol env
%dat_env = call i8* @llvm_zone_malloc(%mzone* %zone984, i64 8)
%envPtr = bitcast i8* %dat_env to {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***
%tzone985 = load i8*, i8** %_impzPtr
%zone986 = bitcast i8* %tzone985 to %mzone*

; let assign value to symbol eamp
%dat_eamp = call i8* @llvm_zone_malloc(%mzone* %zone986, i64 4)
%eampPtr = bitcast i8* %dat_eamp to float*
%tzone991 = load i8*, i8** %_impzPtr
%zone992 = bitcast i8* %tzone991 to %mzone*

; let assign value to symbol idx_freq
%dat_idx_freq = call i8* @llvm_zone_malloc(%mzone* %zone992, i64 8)
%idx_freqPtr = bitcast i8* %dat_idx_freq to double*
%tzone998 = load i8*, i8** %_impzPtr
%zone999 = bitcast i8* %tzone998 to %mzone*

; let assign value to symbol channels
%dat_channels = call i8* @llvm_zone_malloc(%mzone* %zone999, i64 8)
%channelsPtr = bitcast i8* %dat_channels to i64*
%tzone1008 = load i8*, i8** %_impzPtr
%zone1009 = bitcast i8* %tzone1008 to %mzone*

; let assign value to symbol phase
%dat_phase = call i8* @llvm_zone_malloc(%mzone* %zone1009, i64 8)
%phasePtr = bitcast i8* %dat_phase to double*
%val897 = load %NoteData*, %NoteData** %dataPtr
%res898 = call ccc i64 @note_starttime(%NoteData* %val897)

; let value assignment
%starttime = select i1 true, i64 %res898, i64 %res898
store i64 %starttime, i64* %starttimePtr

%val901 = load %NoteData*, %NoteData** %dataPtr
%res902 = call ccc float @note_frequency(%NoteData* %val901)

; let value assignment
%freq = select i1 true, float %res902, float %res902
store float %freq, float* %freqPtr

%val905 = load %NoteData*, %NoteData** %dataPtr
%res906 = call ccc float @note_amplitude(%NoteData* %val905)

; let value assignment
%amp = select i1 true, float %res906, float %res906
store float %amp, float* %ampPtr

%val909 = load %NoteData*, %NoteData** %dataPtr
%res910 = call ccc i64 @note_duration(%NoteData* %val909)

; let value assignment
%duration = select i1 true, i64 %res910, i64 %res910
store i64 %duration, i64* %durationPtr

%val913 = fptrunc double 1.0000000000000000000 to float

; let value assignment
%gate = select i1 true, float %val913, float %val913
store float %gate, float* %gatePtr

%val917 = load i64, i64* %nargsPtr
%cmp918 = icmp sgt i64 %val917, 1
br i1 %cmp918, label %then916, label %else916

then916:
%val919 = load float*, float** %dargsPtr
; pointer ref
%val920 = getelementptr float, float* %val919, i64 1
%val921 = load float, float* %val920
store float %val921, float* %ifptr916
br label %ifcont916

else916:
store float 0x3fe0000000000000, float* %ifptr916
br label %ifcont916

ifcont916:
%ifres922 = load float, float* %ifptr916


; let value assignment
%pan = select i1 true, float %ifres922, float %ifres922
store float %pan, float* %panPtr

%val926 = load i64, i64* %nargsPtr
%cmp927 = icmp sgt i64 %val926, 2
br i1 %cmp927, label %then925, label %else925

then925:
%val928 = load float*, float** %dargsPtr
; pointer ref
%val929 = getelementptr float, float* %val928, i64 2
%val930 = load float, float* %val929
store float %val930, float* %ifptr925
br label %ifcont925

else925:
store float 0x0, float* %ifptr925
br label %ifcont925

ifcont925:
%ifres931 = load float, float* %ifptr925


; let value assignment
%offset = select i1 true, float %ifres931, float %ifres931
store float %offset, float* %offsetPtr

%val935 = load i64, i64* %nargsPtr
%cmp936 = icmp sgt i64 %val935, 3
br i1 %cmp936, label %then934, label %else934

then934:
%val938 = load float*, float** %dargsPtr
; pointer ref
%val939 = getelementptr float, float* %val938, i64 3
%val940 = load float, float* %val939
%cmp941 = fcmp ugt float %val940, 0x3f847ae140000000
br i1 %cmp941, label %then937, label %else937

then937:
%res942 = call ccc i1 @impc_true()
store i1 %res942, i1* %ifptr937
br label %ifcont937

else937:
%res943 = call ccc i1 @impc_false()
store i1 %res943, i1* %ifptr937
br label %ifcont937

ifcont937:
%ifres944 = load i1, i1* %ifptr937

store i1 %ifres944, i1* %ifptr934
br label %ifcont934

else934:
%res945 = call ccc i1 @impc_false()
store i1 %res945, i1* %ifptr934
br label %ifcont934

ifcont934:
%ifres946 = load i1, i1* %ifptr934


; let value assignment
%rev = select i1 true, i1 %ifres946, i1 %ifres946
store i1 %rev, i1* %revPtr

%val949 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val950 = extractvalue [4 x float] %val949, 0

; let value assignment
%a = select i1 true, float %val950, float %val950
store float %a, float* %aPtr

%val953 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val954 = extractvalue [4 x float] %val953, 1

; let value assignment
%d = select i1 true, float %val954, float %val954
store float %d, float* %dPtr

%val957 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val958 = extractvalue [4 x float] %val957, 2

; let value assignment
%s = select i1 true, float %val958, float %val958
store float %s, float* %sPtr

%val961 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val962 = extractvalue [4 x float] %val961, 3

; let value assignment
%r = select i1 true, float %val962, float %val962
store float %r, float* %rPtr

%val965 = load float, float* @SRf
%val966 = load [4 x float], [4 x float]* %amp_envPtr
; array ref
%val967 = extractvalue [4 x float] %val966, 3
%val968 = fdiv float %val967, 0x408f400000000000
%val969 = fmul float %val965, %val968
%val970 = fptosi float %val969 to i64

; let value assignment
%rtime = select i1 true, i64 %val970, i64 %val970
store i64 %rtime, i64* %rtimePtr


; let value assignment
%dt = select i1 true, i64 0, i64 0
store i64 %dt, i64* %dtPtr


; let value assignment
%rt = select i1 true, i64 0, i64 0
store i64 %rt, i64* %rtPtr

%val977 = load i64, i64* %durationPtr
%val978 = load i64, i64* %rtimePtr
%val979 = add i64 %val977, %val978

; let value assignment
%total_time = select i1 true, i64 %val979, i64 %val979
store i64 %total_time, i64* %total_timePtr

%res982 = call ccc {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** @adsr_c()

; let value assignment
%env = select i1 true, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %res982, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %res982
store {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %env, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %envPtr


; let value assignment
%eamp = select i1 true, float 0x0, float 0x0
store float %eamp, float* %eampPtr

%val987 = load i64, i64* %indexPtr
%val988 = sitofp i64 %val987 to float
%res989 = call ccc float @midi2frq(float %val988)
%val990 = fpext float %res989 to double

; let value assignment
%idx_freq = select i1 true, double %val990, double %val990
store double %idx_freq, double* %idx_freqPtr

%val993 = load i64, i64* %indexPtr
%val994 = load [128 x i64]*, [128 x i64]** %samples_channelsPtr
; array ref
%_val995 = getelementptr [128 x i64], [128 x i64]* %val994, i32 0, i64 %val993
%val996 = load i64, i64* %_val995
%val997 = bitcast i64 %val996 to i64

; let value assignment
%channels = select i1 true, i64 %val997, i64 %val997
store i64 %channels, i64* %channelsPtr

%val1000 = load float, float* %offsetPtr
%val1001 = load i64, i64* %indexPtr
%val1002 = load [128 x i64]*, [128 x i64]** %samples_offsetsPtr
; array ref
%_val1003 = getelementptr [128 x i64], [128 x i64]* %val1002, i32 0, i64 %val1001
%val1004 = load i64, i64* %_val1003
%val1005 = sitofp i64 %val1004 to float
%val1006 = fadd float %val1000, %val1005
%val1007 = fpext float %val1006 to double

; let value assignment
%phase = select i1 true, double %val1007, double %val1007
store double %phase, double* %phasePtr

; promote local stack var allocations
%tzone1493 = load i8*, i8** %_impzPtr
%zone1494 = bitcast i8* %tzone1493 to %mzone*
%ifptr1010 = alloca double
%ifptr1011 = alloca i1
%ifptr1013 = alloca i1
%val1012 = load i1, i1* %revPtr
br i1 %val1012, label %then1011, label %else1011

then1011:
%val1014 = load double, double* %phasePtr
%cmp1015 = fcmp ult double %val1014, 0.010000000000000000208
br i1 %cmp1015, label %then1013, label %else1013

then1013:
%val1016 = load double, double* %phasePtr
%cmp1017 = fcmp ult double %val1016, 0.010000000000000000208
store i1 %cmp1017, i1* %ifptr1013
br label %ifcont1013

else1013:
%res1018 = call ccc i1 @impc_false()
store i1 %res1018, i1* %ifptr1013
br label %ifcont1013

ifcont1013:
%ifres1019 = load i1, i1* %ifptr1013

store i1 %ifres1019, i1* %ifptr1011
br label %ifcont1011

else1011:
%res1020 = call ccc i1 @impc_false()
store i1 %res1020, i1* %ifptr1011
br label %ifcont1011

ifcont1011:
%ifres1021 = load i1, i1* %ifptr1011

br i1 %ifres1021, label %then1010, label %else1010

then1010:
; do set!
%val1022 = load i64, i64* %indexPtr
%val1023 = load [128 x i64]*, [128 x i64]** %samples_lengthPtr
; array ref
%_val1024 = getelementptr [128 x i64], [128 x i64]* %val1023, i32 0, i64 %val1022
%val1025 = load i64, i64* %_val1024
%val1026 = sub i64 %val1025, 10
%val1027 = sitofp i64 %val1026 to double
store double %val1027, double* %phasePtr
store double %val1027, double* %ifptr1010
br label %ifcont1010

else1010:
br label %ifcont1010

ifcont1010:
%ifres1028 = load double, double* %ifptr1010

%tzone1490 = load i8*, i8** %_impzPtr
%zone1491 = bitcast i8* %tzone1490 to %mzone*

; let assign value to symbol _anon_lambda_4
%dat__anon_lambda_4 = call i8* @llvm_zone_malloc(%mzone* %zone1491, i64 8)
%_anon_lambda_4Ptr = bitcast i8* %dat__anon_lambda_4 to { i8*, i8*, float (i8*, i8*, i64, i64)*}***
%tzone1311 = load i8*, i8** %_impzPtr
%zone1312 = bitcast i8* %tzone1311 to %mzone*
call void @llvm_zone_mark(%mzone* %zone1312)
; malloc closure structure
%clsptr1313 = call i8* @llvm_zone_malloc(%mzone* %zone1312, i64 24)
%closure1314 = bitcast i8* %clsptr1313 to { i8*, i8*, float (i8*, i8*, i64, i64)*}*

; malloc environment structure
%envptr1315 = call i8* @llvm_zone_malloc(%mzone* %zone1312, i64 264)
%environment1316 = bitcast i8* %envptr1315 to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}*

; malloc closure address table
%addytable1317 = call %clsvar* @new_address_table()
%var1318 = bitcast [144 x i8]* @gsxtminstruments_ext57 to i8*
%var1319 = bitcast [183 x i8]* @gsxtminstruments_ext13 to i8*
%addytable1320 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1318, i32 0, i8* %var1319, i32 3, %clsvar* %addytable1317)
%var1321 = bitcast [8 x i8]* @gsxtminstruments_ext14 to i8*
%var1322 = bitcast [12 x i8]* @gsxtminstruments_ext15 to i8*
%addytable1323 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1321, i32 8, i8* %var1322, i32 3, %clsvar* %addytable1320)
%var1324 = bitcast [15 x i8]* @gsxtminstruments_ext58 to i8*
%var1325 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable1326 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1324, i32 16, i8* %var1325, i32 3, %clsvar* %addytable1323)
%var1327 = bitcast [6 x i8]* @gsxtminstruments_ext18 to i8*
%var1328 = bitcast [7 x i8]* @gsxtminstruments_ext19 to i8*
%addytable1329 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1327, i32 24, i8* %var1328, i32 3, %clsvar* %addytable1326)
%var1330 = bitcast [6 x i8]* @gsxtminstruments_ext20 to i8*
%var1331 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1332 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1330, i32 32, i8* %var1331, i32 3, %clsvar* %addytable1329)
%var1333 = bitcast [6 x i8]* @gsxtminstruments_ext22 to i8*
%var1334 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1335 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1333, i32 40, i8* %var1334, i32 3, %clsvar* %addytable1332)
%var1336 = bitcast [17 x i8]* @gsxtminstruments_ext23 to i8*
%var1337 = bitcast [13 x i8]* @gsxtminstruments_ext24 to i8*
%addytable1338 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1336, i32 48, i8* %var1337, i32 3, %clsvar* %addytable1335)
%var1339 = bitcast [16 x i8]* @gsxtminstruments_ext25 to i8*
%var1340 = bitcast [13 x i8]* @gsxtminstruments_ext24 to i8*
%addytable1341 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1339, i32 56, i8* %var1340, i32 3, %clsvar* %addytable1338)
%var1342 = bitcast [15 x i8]* @gsxtminstruments_ext26 to i8*
%var1343 = bitcast [13 x i8]* @gsxtminstruments_ext24 to i8*
%addytable1344 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1342, i32 64, i8* %var1343, i32 3, %clsvar* %addytable1341)
%var1345 = bitcast [8 x i8]* @gsxtminstruments_ext27 to i8*
%var1346 = bitcast [16 x i8]* @gsxtminstruments_ext28 to i8*
%addytable1347 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1345, i32 72, i8* %var1346, i32 3, %clsvar* %addytable1344)
%var1348 = bitcast [5 x i8]* @gsxtminstruments_ext29 to i8*
%var1349 = bitcast [11 x i8]* @gsxtminstruments_ext30 to i8*
%addytable1350 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1348, i32 80, i8* %var1349, i32 3, %clsvar* %addytable1347)
%var1351 = bitcast [6 x i8]* @gsxtminstruments_ext31 to i8*
%var1352 = bitcast [7 x i8]* @gsxtminstruments_ext32 to i8*
%addytable1353 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1351, i32 88, i8* %var1352, i32 3, %clsvar* %addytable1350)
%var1354 = bitcast [9 x i8]* @gsxtminstruments_ext59 to i8*
%var1355 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1356 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1354, i32 96, i8* %var1355, i32 3, %clsvar* %addytable1353)
%var1357 = bitcast [9 x i8]* @gsxtminstruments_ext33 to i8*
%var1358 = bitcast [7 x i8]* @gsxtminstruments_ext32 to i8*
%addytable1359 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1357, i32 104, i8* %var1358, i32 3, %clsvar* %addytable1356)
%var1360 = bitcast [5 x i8]* @gsxtminstruments_ext34 to i8*
%var1361 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1362 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1360, i32 112, i8* %var1361, i32 3, %clsvar* %addytable1359)
%var1363 = bitcast [4 x i8]* @gsxtminstruments_ext36 to i8*
%var1364 = bitcast [72 x i8]* @gsxtminstruments_ext37 to i8*
%addytable1365 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1363, i32 120, i8* %var1364, i32 3, %clsvar* %addytable1362)
%var1366 = bitcast [11 x i8]* @gsxtminstruments_ext38 to i8*
%var1367 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1368 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1366, i32 128, i8* %var1367, i32 3, %clsvar* %addytable1365)
%var1369 = bitcast [3 x i8]* @gsxtminstruments_ext39 to i8*
%var1370 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1371 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1369, i32 136, i8* %var1370, i32 3, %clsvar* %addytable1368)
%var1372 = bitcast [3 x i8]* @gsxtminstruments_ext40 to i8*
%var1373 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1374 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1372, i32 144, i8* %var1373, i32 3, %clsvar* %addytable1371)
%var1375 = bitcast [6 x i8]* @gsxtminstruments_ext41 to i8*
%var1376 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1377 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1375, i32 152, i8* %var1376, i32 3, %clsvar* %addytable1374)
%var1378 = bitcast [2 x i8]* @gsxtminstruments_ext42 to i8*
%var1379 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1380 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1378, i32 160, i8* %var1379, i32 3, %clsvar* %addytable1377)
%var1381 = bitcast [2 x i8]* @gsxtminstruments_ext43 to i8*
%var1382 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1383 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1381, i32 168, i8* %var1382, i32 3, %clsvar* %addytable1380)
%var1384 = bitcast [2 x i8]* @gsxtminstruments_ext44 to i8*
%var1385 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1386 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1384, i32 176, i8* %var1385, i32 3, %clsvar* %addytable1383)
%var1387 = bitcast [2 x i8]* @gsxtminstruments_ext45 to i8*
%var1388 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1389 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1387, i32 184, i8* %var1388, i32 3, %clsvar* %addytable1386)
%var1390 = bitcast [4 x i8]* @gsxtminstruments_ext46 to i8*
%var1391 = bitcast [3 x i8]* @gsxtminstruments_ext47 to i8*
%addytable1392 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1390, i32 192, i8* %var1391, i32 3, %clsvar* %addytable1389)
%var1393 = bitcast [7 x i8]* @gsxtminstruments_ext48 to i8*
%var1394 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1395 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1393, i32 200, i8* %var1394, i32 3, %clsvar* %addytable1392)
%var1396 = bitcast [4 x i8]* @gsxtminstruments_ext49 to i8*
%var1397 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1398 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1396, i32 208, i8* %var1397, i32 3, %clsvar* %addytable1395)
%var1399 = bitcast [5 x i8]* @gsxtminstruments_ext50 to i8*
%var1400 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1401 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1399, i32 216, i8* %var1400, i32 3, %clsvar* %addytable1398)
%var1402 = bitcast [9 x i8]* @gsxtminstruments_ext51 to i8*
%var1403 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1404 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1402, i32 224, i8* %var1403, i32 3, %clsvar* %addytable1401)
%var1405 = bitcast [4 x i8]* @gsxtminstruments_ext52 to i8*
%var1406 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1407 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1405, i32 232, i8* %var1406, i32 3, %clsvar* %addytable1404)
%var1408 = bitcast [5 x i8]* @gsxtminstruments_ext53 to i8*
%var1409 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1410 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1408, i32 240, i8* %var1409, i32 3, %clsvar* %addytable1407)
%var1411 = bitcast [10 x i8]* @gsxtminstruments_ext54 to i8*
%var1412 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1413 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1411, i32 248, i8* %var1412, i32 3, %clsvar* %addytable1410)
%var1414 = bitcast [15 x i8]* @gsxtminstruments_ext60 to i8*
%var1415 = bitcast [42 x i8]* @gsxtminstruments_ext56 to i8*
%addytable1416 = call %clsvar* @add_address_table(%mzone* %zone1312, i8* %var1414, i32 256, i8* %var1415, i32 3, %clsvar* %addytable1413)
%address-table1417 = bitcast %clsvar* %addytable1416 to i8*

; insert table, function and environment into closure struct
%closure.table1484 = getelementptr { i8*, i8*, float (i8*, i8*, i64, i64)*}, { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure1314, i32 0, i32 0
store i8* %address-table1417, i8** %closure.table1484
%closure.env1485 = getelementptr { i8*, i8*, float (i8*, i8*, i64, i64)*}, { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure1314, i32 0, i32 1
store i8* %envptr1315, i8** %closure.env1485
%closure.func1486 = getelementptr { i8*, i8*, float (i8*, i8*, i64, i64)*}, { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure1314, i32 0, i32 2
store float (i8*, i8*, i64, i64)* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__887, float (i8*, i8*, i64, i64)** %closure.func1486
%closure_size1487 = call i64 @llvm_zone_mark_size(%mzone* %zone1312)
call void @llvm_zone_ptr_set_size(i8* %clsptr1313, i64 %closure_size1487)
%wrapper_ptr1488 = call i8* @llvm_zone_malloc(%mzone* %zone1312, i64 8)
%closure_wrapper1489 = bitcast i8* %wrapper_ptr1488 to { i8*, i8*, float (i8*, i8*, i64, i64)*}**
store { i8*, i8*, float (i8*, i8*, i64, i64)*}* %closure1314, { i8*, i8*, float (i8*, i8*, i64, i64)*}** %closure_wrapper1489

; let value assignment
%_anon_lambda_4 = select i1 true, { i8*, i8*, float (i8*, i8*, i64, i64)*}** %closure_wrapper1489, { i8*, i8*, float (i8*, i8*, i64, i64)*}** %closure_wrapper1489
store { i8*, i8*, float (i8*, i8*, i64, i64)*}** %_anon_lambda_4, { i8*, i8*, float (i8*, i8*, i64, i64)*}*** %_anon_lambda_4Ptr

; add data to environment
; don't need to alloc for env var sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr1419 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr1419

; don't need to alloc for env var amp_env
%tmp_envptr1421 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 1
store [4 x float]* %amp_envPtr, [4 x float]** %tmp_envptr1421

; don't need to alloc for env var _anon_lambda_3
%tmp_envptr1423 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_3Ptr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr1423

; don't need to alloc for env var dargs
%tmp_envptr1425 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 3
store float** %dargsPtr, float*** %tmp_envptr1425

; don't need to alloc for env var nargs
%tmp_envptr1427 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 4
store i64* %nargsPtr, i64** %tmp_envptr1427

; don't need to alloc for env var index
%tmp_envptr1429 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 5
store i64* %indexPtr, i64** %tmp_envptr1429

; don't need to alloc for env var samples_channels
%tmp_envptr1431 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 6
store [128 x i64]** %samples_channelsPtr, [128 x i64]*** %tmp_envptr1431

; don't need to alloc for env var samples_offsets
%tmp_envptr1433 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 7
store [128 x i64]** %samples_offsetsPtr, [128 x i64]*** %tmp_envptr1433

; don't need to alloc for env var samples_length
%tmp_envptr1435 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 8
store [128 x i64]** %samples_lengthPtr, [128 x i64]*** %tmp_envptr1435

; don't need to alloc for env var samples
%tmp_envptr1437 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 9
store [128 x float*]** %samplesPtr, [128 x float*]*** %tmp_envptr1437

; don't need to alloc for env var data
%tmp_envptr1439 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 10
store %NoteData** %dataPtr, %NoteData*** %tmp_envptr1439

; don't need to alloc for env var phase
%tmp_envptr1441 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 11
store double* %phasePtr, double** %tmp_envptr1441

; don't need to alloc for env var channels
%tmp_envptr1443 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 12
store i64* %channelsPtr, i64** %tmp_envptr1443

; don't need to alloc for env var idx_freq
%tmp_envptr1445 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 13
store double* %idx_freqPtr, double** %tmp_envptr1445

; don't need to alloc for env var eamp
%tmp_envptr1447 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 14
store float* %eampPtr, float** %tmp_envptr1447

; don't need to alloc for env var env
%tmp_envptr1449 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 15
store {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %envPtr, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**** %tmp_envptr1449

; don't need to alloc for env var total_time
%tmp_envptr1451 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 16
store i64* %total_timePtr, i64** %tmp_envptr1451

; don't need to alloc for env var rt
%tmp_envptr1453 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 17
store i64* %rtPtr, i64** %tmp_envptr1453

; don't need to alloc for env var dt
%tmp_envptr1455 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 18
store i64* %dtPtr, i64** %tmp_envptr1455

; don't need to alloc for env var rtime
%tmp_envptr1457 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 19
store i64* %rtimePtr, i64** %tmp_envptr1457

; don't need to alloc for env var r
%tmp_envptr1459 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 20
store float* %rPtr, float** %tmp_envptr1459

; don't need to alloc for env var s
%tmp_envptr1461 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 21
store float* %sPtr, float** %tmp_envptr1461

; don't need to alloc for env var d
%tmp_envptr1463 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 22
store float* %dPtr, float** %tmp_envptr1463

; don't need to alloc for env var a
%tmp_envptr1465 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 23
store float* %aPtr, float** %tmp_envptr1465

; don't need to alloc for env var rev
%tmp_envptr1467 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 24
store i1* %revPtr, i1** %tmp_envptr1467

; don't need to alloc for env var offset
%tmp_envptr1469 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 25
store float* %offsetPtr, float** %tmp_envptr1469

; don't need to alloc for env var pan
%tmp_envptr1471 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 26
store float* %panPtr, float** %tmp_envptr1471

; don't need to alloc for env var gate
%tmp_envptr1473 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 27
store float* %gatePtr, float** %tmp_envptr1473

; don't need to alloc for env var duration
%tmp_envptr1475 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 28
store i64* %durationPtr, i64** %tmp_envptr1475

; don't need to alloc for env var amp
%tmp_envptr1477 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 29
store float* %ampPtr, float** %tmp_envptr1477

; don't need to alloc for env var freq
%tmp_envptr1479 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 30
store float* %freqPtr, float** %tmp_envptr1479

; don't need to alloc for env var starttime
%tmp_envptr1481 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 31
store i64* %starttimePtr, i64** %tmp_envptr1481

; don't need to alloc for env var _anon_lambda_4
%tmp_envptr1483 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, float**, i64*, i64*, [128 x i64]**, [128 x i64]**, [128 x i64]**, [128 x float*]**, %NoteData**, double*, i64*, double*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, i64*, i64*, i64*, i64*, float*, float*, float*, float*, i1*, float*, float*, float*, i64*, float*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***}* %environment1316, i32 0, i32 32
store {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %_anon_lambda_4Ptr, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %tmp_envptr1483


%val1492 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %_anon_lambda_4Ptr
ret {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1492
}
define dllexport fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__885(i8* %_impz,i8* %_impenv) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone888 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}*
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}* %impenv, i32 0, i32 0
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr_

; setup arguments


%tzone894 = load i8*, i8** %_impzPtr
%zone895 = bitcast i8* %tzone894 to %mzone*

; let assign value to symbol amp_env
%dat_amp_env = call i8* @llvm_zone_malloc(%mzone* %zone895, i64 16)
%amp_envPtr = bitcast i8* %dat_amp_env to [4 x float]*
%val889 = fptrunc double 3.0000000000000000000 to float
%arrayl890 = insertvalue [4 x float] undef, float %val889, 0
%arrayl891 = insertvalue [4 x float] %arrayl890, float 0x0, 1
%arrayl892 = insertvalue [4 x float] %arrayl891, float 0x3ff0000000000000, 2
%arrayl893 = insertvalue [4 x float] %arrayl892, float 0x4034000000000000, 3

; let value assignment
%amp_env = select i1 true, [4 x float] %arrayl893, [4 x float] %arrayl893
store [4 x float] %amp_env, [4 x float]* %amp_envPtr

%tzone1526 = load i8*, i8** %_impzPtr
%zone1527 = bitcast i8* %tzone1526 to %mzone*

; let assign value to symbol _anon_lambda_3
%dat__anon_lambda_3 = call i8* @llvm_zone_malloc(%mzone* %zone1527, i64 8)
%_anon_lambda_3Ptr = bitcast i8* %dat__anon_lambda_3 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***
%tzone1497 = load i8*, i8** %_impzPtr
%zone1498 = bitcast i8* %tzone1497 to %mzone*
call void @llvm_zone_mark(%mzone* %zone1498)
; malloc closure structure
%clsptr1499 = call i8* @llvm_zone_malloc(%mzone* %zone1498, i64 24)
%closure1500 = bitcast i8* %clsptr1499 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*

; malloc environment structure
%envptr1501 = call i8* @llvm_zone_malloc(%mzone* %zone1498, i64 24)
%environment1502 = bitcast i8* %envptr1501 to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}*

; malloc closure address table
%addytable1503 = call %clsvar* @new_address_table()
%var1504 = bitcast [144 x i8]* @gsxtminstruments_ext57 to i8*
%var1505 = bitcast [183 x i8]* @gsxtminstruments_ext13 to i8*
%addytable1506 = call %clsvar* @add_address_table(%mzone* %zone1498, i8* %var1504, i32 0, i8* %var1505, i32 3, %clsvar* %addytable1503)
%var1507 = bitcast [8 x i8]* @gsxtminstruments_ext14 to i8*
%var1508 = bitcast [12 x i8]* @gsxtminstruments_ext15 to i8*
%addytable1509 = call %clsvar* @add_address_table(%mzone* %zone1498, i8* %var1507, i32 8, i8* %var1508, i32 3, %clsvar* %addytable1506)
%var1510 = bitcast [15 x i8]* @gsxtminstruments_ext58 to i8*
%var1511 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable1512 = call %clsvar* @add_address_table(%mzone* %zone1498, i8* %var1510, i32 16, i8* %var1511, i32 3, %clsvar* %addytable1509)
%address-table1513 = bitcast %clsvar* %addytable1512 to i8*

; insert table, function and environment into closure struct
%closure.table1520 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure1500, i32 0, i32 0
store i8* %address-table1513, i8** %closure.table1520
%closure.env1521 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure1500, i32 0, i32 1
store i8* %envptr1501, i8** %closure.env1521
%closure.func1522 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure1500, i32 0, i32 2
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__886, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)** %closure.func1522
%closure_size1523 = call i64 @llvm_zone_mark_size(%mzone* %zone1498)
call void @llvm_zone_ptr_set_size(i8* %clsptr1499, i64 %closure_size1523)
%wrapper_ptr1524 = call i8* @llvm_zone_malloc(%mzone* %zone1498, i64 8)
%closure_wrapper1525 = bitcast i8* %wrapper_ptr1524 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %closure1500, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %closure_wrapper1525

; let value assignment
%_anon_lambda_3 = select i1 true, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %closure_wrapper1525, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %closure_wrapper1525
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %_anon_lambda_3, { i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_3Ptr

; add data to environment
; don't need to alloc for env var sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr1515 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %environment1502, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr1515

; don't need to alloc for env var amp_env
%tmp_envptr1517 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %environment1502, i32 0, i32 1
store [4 x float]* %amp_envPtr, [4 x float]** %tmp_envptr1517

; don't need to alloc for env var _anon_lambda_3
%tmp_envptr1519 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***, [4 x float]*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***}* %environment1502, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_3Ptr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr1519


%val1528 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %_anon_lambda_3Ptr
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %val1528
}
define dllexport ccc {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone1548 = load i8*, i8** %_impzPtr
%zone1549 = bitcast i8* %tzone1548 to %mzone*

; let assign value to symbol sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%dat_sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd = call i8* @llvm_zone_malloc(%mzone* %zone1549, i64 8)
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr = bitcast i8* %dat_sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd to { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***
%tzone1529 = load i8*, i8** %_impzPtr
%zone1530 = bitcast i8* %tzone1529 to %mzone*
call void @llvm_zone_mark(%mzone* %zone1530)
; malloc closure structure
%clsptr1531 = call i8* @llvm_zone_malloc(%mzone* %zone1530, i64 24)
%closure1532 = bitcast i8* %clsptr1531 to { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*

; malloc environment structure
%envptr1533 = call i8* @llvm_zone_malloc(%mzone* %zone1530, i64 8)
%environment1534 = bitcast i8* %envptr1533 to {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}*

; malloc closure address table
%addytable1535 = call %clsvar* @new_address_table()
%var1536 = bitcast [144 x i8]* @gsxtminstruments_ext57 to i8*
%var1537 = bitcast [183 x i8]* @gsxtminstruments_ext13 to i8*
%addytable1538 = call %clsvar* @add_address_table(%mzone* %zone1530, i8* %var1536, i32 0, i8* %var1537, i32 3, %clsvar* %addytable1535)
%address-table1539 = bitcast %clsvar* %addytable1538 to i8*

; insert table, function and environment into closure struct
%closure.table1542 = getelementptr { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure1532, i32 0, i32 0
store i8* %address-table1539, i8** %closure.table1542
%closure.env1543 = getelementptr { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure1532, i32 0, i32 1
store i8* %envptr1533, i8** %closure.env1543
%closure.func1544 = getelementptr { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure1532, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd__885, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %closure.func1544
%closure_size1545 = call i64 @llvm_zone_mark_size(%mzone* %zone1530)
call void @llvm_zone_ptr_set_size(i8* %clsptr1531, i64 %closure_size1545)
%wrapper_ptr1546 = call i8* @llvm_zone_malloc(%mzone* %zone1530, i64 8)
%closure_wrapper1547 = bitcast i8* %wrapper_ptr1546 to { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
store { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure1532, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper1547

; let value assignment
%sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd = select i1 true, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper1547, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper1547
store { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd, { i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr

; add data to environment
; don't need to alloc for env var sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr1541 = getelementptr {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}, {{i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}***}* %environment1534, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr1541


%val1550 = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpdPtr
ret {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %val1550
}


@sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var = dllexport global [1 x i8*] [ i8* null ]

@sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd() alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %result
}


define dllexport ccc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_native() alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %result
}


define dllexport ccc i8*  @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
%tmpres = bitcast {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %result to i8*
%res = call ccc i8* @mk_cptr(i8* %_sc, i8* %tmpres)
ret i8* %res
}


define dllexport ccc void @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = select i1 true, i8* %dat, i8* %dat
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_note_adhoc_W1tbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext61 = hidden constant [227 x i8] c"make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd\00"
@gsxtminstruments_ext62 = hidden constant [299 x i8] c"{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**\00"
@gsxtminstruments_ext63 = hidden constant [14 x i8] c"effect_kernel\00"
@gsxtminstruments_ext64 = hidden constant [57 x i8] c"{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**\00"
@gsxtminstruments_ext65 = hidden constant [12 x i8] c"note_kernel\00"
@gsxtminstruments_ext66 = hidden constant [9 x i8] c"new_note\00"
@gsxtminstruments_ext67 = hidden constant [74 x i8] c"{i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}**\00"
@gsxtminstruments_ext68 = hidden constant [2 x i8] c"i\00"
@gsxtminstruments_ext69 = hidden constant [2 x i8] c"k\00"
@gsxtminstruments_ext70 = hidden constant [4 x i8] c"out\00"
@gsxtminstruments_ext71 = hidden constant [7 x i8] c"kernel\00"
@gsxtminstruments_ext72 = hidden constant [8 x i8] c"kernels\00"
@gsxtminstruments_ext73 = hidden constant [43 x i8] c"{i8*, i8*, float (i8*, i8*, i64, i64)*}***\00"
@gsxtminstruments_ext74 = hidden constant [5 x i8] c"note\00"
@gsxtminstruments_ext75 = hidden constant [6 x i8] c"notes\00"
@gsxtminstruments_ext76 = hidden constant [12 x i8] c"%NoteData**\00"
@gsxtminstruments_ext77 = hidden constant [5 x i8] c"poly\00"
define dllexport fastcc %NoteData* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd__1552(i8* %_impz,i8* %_impenv, i64 %start, float %freq, i64 %dur, float %amp, i64 %nargs, float* %dargs) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone1629 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}*
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 0
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr_
%effect_kernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 1
%effect_kernelPtr = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %effect_kernelPtr_
%note_kernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 2
%note_kernelPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %note_kernelPtr_
%new_notePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 3
%new_notePtr = load {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}**** %new_notePtr_
%iPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 4
%iPtr = load i64*, i64** %iPtr_
%kPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 5
%kPtr = load i64*, i64** %kPtr_
%outPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 6
%outPtr = load float*, float** %outPtr_
%starttimePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 7
%starttimePtr = load i64*, i64** %starttimePtr_
%kernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 8
%kernelPtr = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelPtr_
%kernelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 9
%kernelsPtr = load {i8*, i8*, float (i8*, i8*, i64, i64)*}****, {i8*, i8*, float (i8*, i8*, i64, i64)*}***** %kernelsPtr_
%notePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 10
%notePtr = load %NoteData**, %NoteData*** %notePtr_
%notesPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 11
%notesPtr = load %NoteData***, %NoteData**** %notesPtr_
%samples_offsetsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 12
%samples_offsetsPtr = load [20 x [128 x i64]]**, [20 x [128 x i64]]*** %samples_offsetsPtr_
%samples_channelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 13
%samples_channelsPtr = load [20 x [128 x i64]]**, [20 x [128 x i64]]*** %samples_channelsPtr_
%samples_lengthPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 14
%samples_lengthPtr = load [20 x [128 x i64]]**, [20 x [128 x i64]]*** %samples_lengthPtr_
%samplesPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 15
%samplesPtr = load [20 x [128 x float*]]**, [20 x [128 x float*]]*** %samplesPtr_
%polyPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %impenv, i32 0, i32 16
%polyPtr = load i64*, i64** %polyPtr_

; setup arguments
%startPtr = alloca i64
store i64 %start, i64* %startPtr
%freqPtr = alloca float
store float %freq, float* %freqPtr
%durPtr = alloca i64
store i64 %dur, i64* %durPtr
%ampPtr = alloca float
store float %amp, float* %ampPtr
%nargsPtr = alloca i64
store i64 %nargs, i64* %nargsPtr
%dargsPtr = alloca float*
store float* %dargs, float** %dargsPtr

; promote local stack var allocations
%tzone1805 = load i8*, i8** %_impzPtr
%zone1806 = bitcast i8* %tzone1805 to %mzone*
%ifptr1643 = alloca i32

%tzone1633 = load i8*, i8** %_impzPtr
%zone1634 = bitcast i8* %tzone1633 to %mzone*

; let assign value to symbol free_note
%free_notePtr = alloca %NoteData*
%tzone1637 = load i8*, i8** %_impzPtr
%zone1638 = bitcast i8* %tzone1637 to %mzone*

; let assign value to symbol idx
%idxPtr = alloca i64
%tzone1641 = load i8*, i8** %_impzPtr
%zone1642 = bitcast i8* %tzone1641 to %mzone*

; let assign value to symbol zone
%zonePtr = alloca %mzone*
%tzone1652 = load i8*, i8** %_impzPtr
%zone1653 = bitcast i8* %tzone1652 to %mzone*

; let assign value to symbol bank
%bankPtr = alloca i32
%tzone1658 = load i8*, i8** %_impzPtr
%zone1659 = bitcast i8* %tzone1658 to %mzone*

; let assign value to symbol midiidx
%midiidxPtr = alloca i64
%tzone1660 = load i8*, i8** %_impzPtr
%zone1661 = bitcast i8* %tzone1660 to %mzone*

; let assign value to symbol closest
%closestPtr = alloca i64
%tzone1662 = load i8*, i8** %_impzPtr
%zone1663 = bitcast i8* %tzone1662 to %mzone*

; let assign value to symbol i_s_1
%i_s_1Ptr = alloca i64
%tzone1664 = load i8*, i8** %_impzPtr
%zone1665 = bitcast i8* %tzone1664 to %mzone*

; let assign value to symbol iii
%iiiPtr = alloca i64
%tzone1666 = load i8*, i8** %_impzPtr
%zone1667 = bitcast i8* %tzone1666 to %mzone*

; let assign value to symbol idxi
%idxiPtr = alloca i64
%tzone1669 = load i8*, i8** %_impzPtr
%zone1670 = bitcast i8* %tzone1669 to %mzone*

; let assign value to symbol new_idx
%new_idxPtr = alloca i64
%val1630 = load %NoteData**, %NoteData*** %notesPtr
%val1631 = load i64, i64* %polyPtr
%res1632 = call fastcc %NoteData* @instrument_find_note_adhoc_W05vdGVEYXRhKixOb3RlRGF0YSoqLGk2NF0(%NoteData** %val1630, i64 %val1631)

; let value assignment
%free_note = select i1 true, %NoteData* %res1632, %NoteData* %res1632
store %NoteData* %free_note, %NoteData** %free_notePtr

%val1635 = load %NoteData*, %NoteData** %free_notePtr
%res1636 = call ccc i64 @note_idx(%NoteData* %val1635)

; let value assignment
%idx = select i1 true, i64 %res1636, i64 %res1636
store i64 %idx, i64* %idxPtr

%val1639 = load %NoteData*, %NoteData** %free_notePtr
%res1640 = call ccc %mzone* @note_zone(%NoteData* %val1639)

; let value assignment
%zone = select i1 true, %mzone* %res1640, %mzone* %res1640
store %mzone* %zone, %mzone** %zonePtr

%val1644 = load i64, i64* %nargsPtr
%cmp1645 = icmp slt i64 %val1644, 1
br i1 %cmp1645, label %then1643, label %else1643

then1643:
%res1646 = call ccc i32 @i64toi32(i64 0)
store i32 %res1646, i32* %ifptr1643
br label %ifcont1643

else1643:
%val1647 = load float*, float** %dargsPtr
; pointer ref
%val1648 = getelementptr float, float* %val1647, i64 0
%val1649 = load float, float* %val1648
%val1650 = fptosi float %val1649 to i32
store i32 %val1650, i32* %ifptr1643
br label %ifcont1643

ifcont1643:
%ifres1651 = load i32, i32* %ifptr1643


; let value assignment
%bank = select i1 true, i32 %ifres1651, i32 %ifres1651
store i32 %bank, i32* %bankPtr

%val1654 = load float, float* %freqPtr
%res1655 = call ccc float @frq2midi(float %val1654)
%val1656 = call float @llvm.floor.f32(float %res1655)
%val1657 = fptosi float %val1656 to i64

; let value assignment
%midiidx = select i1 true, i64 %val1657, i64 %val1657
store i64 %midiidx, i64* %midiidxPtr


; let value assignment
%closest = select i1 true, i64 1000000, i64 1000000
store i64 %closest, i64* %closestPtr


; let value assignment
%i_s_1 = select i1 true, i64 0, i64 0
store i64 %i_s_1, i64* %i_s_1Ptr


; let value assignment
%iii = select i1 true, i64 0, i64 0
store i64 %iii, i64* %iiiPtr


; let value assignment
%idxi = select i1 true, i64 0, i64 0
store i64 %idxi, i64* %idxiPtr

%val1668 = load i64, i64* %idxPtr

; let value assignment
%new_idx = select i1 true, i64 %val1668, i64 %val1668
store i64 %new_idx, i64* %new_idxPtr

; setup loop
store i64 0, i64* %idxiPtr
%val1703 = load i64, i64* %idxiPtr
%num1704 = add i64 128, %val1703
%comp1705 = icmp ult i64 128, 1
br i1 %comp1705, label %after1671, label %loop1671

loop1671:
%tzone1676 = load i8*, i8** %_impzPtr
%zone1677 = bitcast i8* %tzone1676 to %mzone*

; let assign value to symbol v
%vPtr = alloca i64
%val1672 = load i64, i64* %midiidxPtr
%val1673 = load i64, i64* %idxiPtr
%val1674 = sub i64 %val1672, %val1673
%res1675 = call ccc i64 @llabs(i64 %val1674)

; let value assignment
%v = select i1 true, i64 %res1675, i64 %res1675
store i64 %v, i64* %vPtr

; promote local stack var allocations
%tzone1701 = load i8*, i8** %_impzPtr
%zone1702 = bitcast i8* %tzone1701 to %mzone*
%ifptr1678 = alloca i64
%ifptr1679 = alloca i1
%ifptr1687 = alloca i1
%val1680 = load i64, i64* %idxiPtr
%val1681 = load i32, i32* %bankPtr
%val1682 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val1683 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val1682, i32 0, i32 %val1681
; array ref
%_val1684 = getelementptr [128 x i64], [128 x i64]* %val1683, i32 0, i64 %val1680
%val1685 = load i64, i64* %_val1684
%cmp1686 = icmp ne i64 %val1685, 0
br i1 %cmp1686, label %then1679, label %else1679

then1679:
%val1688 = load i64, i64* %vPtr
%val1689 = load i64, i64* %closestPtr
%cmp1690 = icmp slt i64 %val1688, %val1689
br i1 %cmp1690, label %then1687, label %else1687

then1687:
%val1691 = load i64, i64* %vPtr
%val1692 = load i64, i64* %closestPtr
%cmp1693 = icmp slt i64 %val1691, %val1692
store i1 %cmp1693, i1* %ifptr1687
br label %ifcont1687

else1687:
%res1694 = call ccc i1 @impc_false()
store i1 %res1694, i1* %ifptr1687
br label %ifcont1687

ifcont1687:
%ifres1695 = load i1, i1* %ifptr1687

store i1 %ifres1695, i1* %ifptr1679
br label %ifcont1679

else1679:
%res1696 = call ccc i1 @impc_false()
store i1 %res1696, i1* %ifptr1679
br label %ifcont1679

ifcont1679:
%ifres1697 = load i1, i1* %ifptr1679

br i1 %ifres1697, label %then1678, label %else1678

then1678:
; do set!
%val1698 = load i64, i64* %idxiPtr
store i64 %val1698, i64* %new_idxPtr
; do set!
%val1699 = load i64, i64* %vPtr
store i64 %val1699, i64* %closestPtr
store i64 0, i64* %ifptr1678
br label %ifcont1678

else1678:
br label %ifcont1678

ifcont1678:
%ifres1700 = load i64, i64* %ifptr1678

%loop_cnt1671 = load i64, i64* %idxiPtr
%next1671 = add i64 %loop_cnt1671, 1
store i64 %next1671, i64* %idxiPtr
%cmp1671 = icmp ult i64 %next1671, %num1704
br i1 %cmp1671, label %loop1671, label %after1671

after1671:
%val1708 = load %NoteData*, %NoteData** %free_notePtr
%val1709 = icmp eq %NoteData* %val1708, null
br i1 %val1709, label %then1707, label %else1707

then1707:
%null1710 = bitcast i8* null to %NoteData*
ret %NoteData* %null1710

else1707:
%val1712 = load %NoteData*, %NoteData** %free_notePtr
%res1713 = call ccc i1 @note_active_get(%NoteData* %val1712)
br i1 %res1713, label %then1711, label %else1711

then1711:
%val1714 = load %NoteData*, %NoteData** %free_notePtr
%val1715 = load i64, i64* %idxPtr
; set tuple
%val1716 = getelementptr %NoteData, %NoteData* %val1714, i64 0, i32 0
store i64 %val1715, i64* %val1716
%val1717 = load %NoteData*, %NoteData** %free_notePtr
%val1718 = load i64, i64* %startPtr
; set tuple
%val1719 = getelementptr %NoteData, %NoteData* %val1717, i64 0, i32 1
store i64 %val1718, i64* %val1719
%val1720 = load %NoteData*, %NoteData** %free_notePtr
%val1721 = load float, float* %freqPtr
; set tuple
%val1722 = getelementptr %NoteData, %NoteData* %val1720, i64 0, i32 2
store float %val1721, float* %val1722
%val1723 = load %NoteData*, %NoteData** %free_notePtr
%val1724 = load float, float* %ampPtr
; set tuple
%val1725 = getelementptr %NoteData, %NoteData* %val1723, i64 0, i32 3
store float %val1724, float* %val1725
%val1726 = load %NoteData*, %NoteData** %free_notePtr
%val1727 = load i64, i64* %durPtr
; set tuple
%val1728 = getelementptr %NoteData, %NoteData* %val1726, i64 0, i32 4
store i64 %val1727, i64* %val1728
%val1729 = load %NoteData*, %NoteData** %free_notePtr
; set tuple
%val1730 = getelementptr %NoteData, %NoteData* %val1729, i64 0, i32 5
store float 0x3ff0000000000000, float* %val1730
%val1731 = load %NoteData*, %NoteData** %free_notePtr
%res1732 = call ccc i1 @impc_true()
; set tuple
%val1733 = getelementptr %NoteData, %NoteData* %val1731, i64 0, i32 6
store i1 %res1732, i1* %val1733
%val1734 = load %NoteData*, %NoteData** %free_notePtr
; set tuple
%val1735 = getelementptr %NoteData, %NoteData* %val1734, i64 0, i32 7
store i64 0, i64* %val1735
%val1736 = load %NoteData*, %NoteData** %free_notePtr
%val1737 = load %mzone*, %mzone** %zonePtr
%val1738 = bitcast %mzone* %val1737 to i8*
; set tuple
%val1739 = getelementptr %NoteData, %NoteData* %val1736, i64 0, i32 8
store i8* %val1738, i8** %val1739
%val1740 = load %NoteData*, %NoteData** %free_notePtr
ret %NoteData* %val1740

else1711:
%val1741 = load %mzone*, %mzone** %zonePtr
%res1742 = call fastcc %mzone* @reset_zone_adhoc_W216b25lKixtem9uZSpd(%mzone* %val1741)
%val1743 = load %mzone*, %mzone** %zonePtr
call void @llvm_push_zone_stack(%mzone* %val1743)
%zone_ptr1744 = bitcast %mzone* %val1743 to i8*
store i8* %zone_ptr1744, i8** %_impzPtr
%val1746 = load %NoteData*, %NoteData** %free_notePtr
%val1747 = load i64, i64* %idxPtr
; set tuple
%val1748 = getelementptr %NoteData, %NoteData* %val1746, i64 0, i32 0
store i64 %val1747, i64* %val1748
%val1749 = load %NoteData*, %NoteData** %free_notePtr
%val1750 = load i64, i64* %startPtr
; set tuple
%val1751 = getelementptr %NoteData, %NoteData* %val1749, i64 0, i32 1
store i64 %val1750, i64* %val1751
%val1752 = load %NoteData*, %NoteData** %free_notePtr
%val1753 = load float, float* %freqPtr
; set tuple
%val1754 = getelementptr %NoteData, %NoteData* %val1752, i64 0, i32 2
store float %val1753, float* %val1754
%val1755 = load %NoteData*, %NoteData** %free_notePtr
%val1756 = load float, float* %ampPtr
; set tuple
%val1757 = getelementptr %NoteData, %NoteData* %val1755, i64 0, i32 3
store float %val1756, float* %val1757
%val1758 = load %NoteData*, %NoteData** %free_notePtr
%val1759 = load i64, i64* %durPtr
; set tuple
%val1760 = getelementptr %NoteData, %NoteData* %val1758, i64 0, i32 4
store i64 %val1759, i64* %val1760
%val1761 = load %NoteData*, %NoteData** %free_notePtr
; set tuple
%val1762 = getelementptr %NoteData, %NoteData* %val1761, i64 0, i32 5
store float 0x3ff0000000000000, float* %val1762
%val1763 = load %NoteData*, %NoteData** %free_notePtr
%res1764 = call ccc i1 @impc_true()
; set tuple
%val1765 = getelementptr %NoteData, %NoteData* %val1763, i64 0, i32 6
store i1 %res1764, i1* %val1765
%val1766 = load %NoteData*, %NoteData** %free_notePtr
; set tuple
%val1767 = getelementptr %NoteData, %NoteData* %val1766, i64 0, i32 7
store i64 0, i64* %val1767
%val1768 = load %NoteData*, %NoteData** %free_notePtr
%val1769 = load %mzone*, %mzone** %zonePtr
%val1770 = bitcast %mzone* %val1769 to i8*
; set tuple
%val1771 = getelementptr %NoteData, %NoteData* %val1768, i64 0, i32 8
store i8* %val1770, i8** %val1771
%val1772 = load i64, i64* %idxPtr
%val1773 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr
%val1774 = load %NoteData*, %NoteData** %free_notePtr
%val1775 = load i32, i32* %bankPtr
%val1776 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %samplesPtr
; array ref
%val1777 = getelementptr [20 x [128 x float*]], [20 x [128 x float*]]* %val1776, i32 0, i32 %val1775
%val1778 = load i32, i32* %bankPtr
%val1779 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val1780 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val1779, i32 0, i32 %val1778
%val1781 = load i32, i32* %bankPtr
%val1782 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_offsetsPtr
; array ref
%val1783 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val1782, i32 0, i32 %val1781
%val1784 = load i32, i32* %bankPtr
%val1785 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_channelsPtr
; array ref
%val1786 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val1785, i32 0, i32 %val1784
%val1787 = load i64, i64* %new_idxPtr
%val1788 = load i64, i64* %nargsPtr
%val1789 = load float*, float** %dargsPtr

; apply closure 
%vval1790 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %note_kernelPtr
%val1791 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*,{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %vval1790
%fPtr1792 = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %val1791, i32 0, i32 2
%ePtr1793 = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}* %val1791, i32 0, i32 1
%f1794 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)** %fPtr1792
%e1795 = load i8*, i8** %ePtr1793
%tzone1796 = load i8*, i8** %_impzPtr
%zone1797 = bitcast i8* %tzone1796 to %mzone*
%z1798 = bitcast %mzone* %zone1797 to i8*
%result1799 = tail call fastcc {i8*, i8*, float (i8*, i8*, i64, i64)*}** %f1794(i8* %z1798, i8* %e1795, %NoteData* %val1774, [128 x float*]* %val1777, [128 x i64]* %val1780, [128 x i64]* %val1783, [128 x i64]* %val1786, i64 %val1787, i64 %val1788, float* %val1789)
; set pointer
%val1800 = getelementptr {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1773, i64 %val1772
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** %result1799, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1800
%oldzone1801 = call %mzone* @llvm_pop_zone_stack()
%newzone1802 = call %mzone* @llvm_peek_zone_stack()
%zone_ptr1803 = bitcast %mzone* %newzone1802 to i8*
store i8* %zone_ptr1803, i8** %_impzPtr
%val1804 = load %NoteData*, %NoteData** %free_notePtr
ret %NoteData* %val1804
}
@gsxtminstruments_ext78 = hidden constant [15 x i8] c"_anon_lambda_5\00"
define dllexport fastcc float @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd__1553(i8* %_impz,i8* %_impenv, float %in, i64 %time, i64 %chan, float* %dat) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone1949 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}*
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 0
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr_
%effect_kernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 1
%effect_kernelPtr = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %effect_kernelPtr_
%note_kernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 2
%note_kernelPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %note_kernelPtr_
%new_notePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 3
%new_notePtr = load {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}**** %new_notePtr_
%iPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 4
%iPtr = load i64*, i64** %iPtr_
%kPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 5
%kPtr = load i64*, i64** %kPtr_
%outPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 6
%outPtr = load float*, float** %outPtr_
%starttimePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 7
%starttimePtr = load i64*, i64** %starttimePtr_
%kernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 8
%kernelPtr = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelPtr_
%kernelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 9
%kernelsPtr = load {i8*, i8*, float (i8*, i8*, i64, i64)*}****, {i8*, i8*, float (i8*, i8*, i64, i64)*}***** %kernelsPtr_
%notePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 10
%notePtr = load %NoteData**, %NoteData*** %notePtr_
%notesPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 11
%notesPtr = load %NoteData***, %NoteData**** %notesPtr_
%samples_offsetsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 12
%samples_offsetsPtr = load [20 x [128 x i64]]**, [20 x [128 x i64]]*** %samples_offsetsPtr_
%samples_channelsPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 13
%samples_channelsPtr = load [20 x [128 x i64]]**, [20 x [128 x i64]]*** %samples_channelsPtr_
%samples_lengthPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 14
%samples_lengthPtr = load [20 x [128 x i64]]**, [20 x [128 x i64]]*** %samples_lengthPtr_
%samplesPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 15
%samplesPtr = load [20 x [128 x float*]]**, [20 x [128 x float*]]*** %samplesPtr_
%polyPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 16
%polyPtr = load i64*, i64** %polyPtr_
%_anon_lambda_5Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 17
%_anon_lambda_5Ptr = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %_anon_lambda_5Ptr_

; setup arguments
%inPtr = alloca float
store float %in, float* %inPtr
%timePtr = alloca i64
store i64 %time, i64* %timePtr
%chanPtr = alloca i64
store i64 %chan, i64* %chanPtr
%datPtr = alloca float*
store float* %dat, float** %datPtr

; promote local stack var allocations
%tzone2033 = load i8*, i8** %_impzPtr
%zone2034 = bitcast i8* %tzone2033 to %mzone*
%ifptr1976 = alloca float
%ifptr1977 = alloca i1
%ifptr1981 = alloca i1
%ifptr1988 = alloca i1
%ifptr1982 = alloca i1
%ifptr1959 = alloca {i8*, i8*, float (i8*, i8*, i64, i64)*}**
%ifptr1960 = alloca i1

; do set!
store float 0x0, float* %outPtr
; setup loop
%val1952 = load i64, i64* %polyPtr
store i64 0, i64* %kPtr
%val2014 = load i64, i64* %kPtr
%num2015 = add i64 %val1952, %val2014
%comp2016 = icmp ult i64 %val1952, 1
br i1 %comp2016, label %after1950, label %loop1950

loop1950:
; do set!
%val1953 = load i64, i64* %kPtr
%val1954 = load %NoteData**, %NoteData*** %notesPtr
; pointer ref
%val1955 = getelementptr %NoteData*, %NoteData** %val1954, i64 %val1953
%val1956 = load %NoteData*, %NoteData** %val1955
store %NoteData* %val1956, %NoteData** %notePtr
; do set!
%val1957 = load %NoteData*, %NoteData** %notePtr
%res1958 = call ccc i64 @note_starttime(%NoteData* %val1957)
store i64 %res1958, i64* %starttimePtr
%val1961 = load %NoteData*, %NoteData** %notePtr
%res1962 = call ccc i1 @note_active_get(%NoteData* %val1961)
br i1 %res1962, label %then1960, label %else1960

then1960:
%res1963 = call ccc i1 @impc_false()
store i1 %res1963, i1* %ifptr1960
br label %ifcont1960

else1960:
%res1964 = call ccc i1 @impc_true()
store i1 %res1964, i1* %ifptr1960
br label %ifcont1960

ifcont1960:
%ifres1965 = load i1, i1* %ifptr1960

br i1 %ifres1965, label %then1959, label %else1959

then1959:
%val1966 = load i64, i64* %kPtr
%val1967 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr
%null1968 = bitcast i8* null to i8*
%val1969 = bitcast i8* %null1968 to {i8*, i8*, float (i8*, i8*, i64, i64)*}**
; set pointer
%val1970 = getelementptr {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1967, i64 %val1966
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1969, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1970
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1969, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %ifptr1959
br label %ifcont1959

else1959:
br label %ifcont1959

ifcont1959:
%ifres1971 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %ifptr1959

; do set!
%val1972 = load i64, i64* %kPtr
%val1973 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr
; pointer ref
%val1974 = getelementptr {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1973, i64 %val1972
%val1975 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1974
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1975, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr
%val1978 = load i64, i64* %timePtr
%val1979 = load i64, i64* %starttimePtr
%cmp1980 = icmp sgt i64 %val1978, %val1979
br i1 %cmp1980, label %then1977, label %else1977

then1977:
%val1983 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr
%val1984 = icmp eq {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1983, null
br i1 %val1984, label %then1982, label %else1982

then1982:
%res1985 = call ccc i1 @impc_false()
store i1 %res1985, i1* %ifptr1982
br label %ifcont1982

else1982:
%res1986 = call ccc i1 @impc_true()
store i1 %res1986, i1* %ifptr1982
br label %ifcont1982

ifcont1982:
%ifres1987 = load i1, i1* %ifptr1982

br i1 %ifres1987, label %then1981, label %else1981

then1981:
%val1989 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr
%val1990 = icmp eq {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1989, null
br i1 %val1990, label %then1988, label %else1988

then1988:
%res1991 = call ccc i1 @impc_false()
store i1 %res1991, i1* %ifptr1988
br label %ifcont1988

else1988:
%res1992 = call ccc i1 @impc_true()
store i1 %res1992, i1* %ifptr1988
br label %ifcont1988

ifcont1988:
%ifres1993 = load i1, i1* %ifptr1988

store i1 %ifres1993, i1* %ifptr1981
br label %ifcont1981

else1981:
%res1994 = call ccc i1 @impc_false()
store i1 %res1994, i1* %ifptr1981
br label %ifcont1981

ifcont1981:
%ifres1995 = load i1, i1* %ifptr1981

store i1 %ifres1995, i1* %ifptr1977
br label %ifcont1977

else1977:
%res1996 = call ccc i1 @impc_false()
store i1 %res1996, i1* %ifptr1977
br label %ifcont1977

ifcont1977:
%ifres1997 = load i1, i1* %ifptr1977

br i1 %ifres1997, label %then1976, label %else1976

then1976:
; do set!
%val1998 = load float, float* %outPtr
%val1999 = load i64, i64* %timePtr
%val2000 = load i64, i64* %chanPtr

; apply closure 
%vval2001 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr
%val2002 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}*,{i8*, i8*, float (i8*, i8*, i64, i64)*}** %vval2001
%fPtr2003 = getelementptr {i8*, i8*, float (i8*, i8*, i64, i64)*}, {i8*, i8*, float (i8*, i8*, i64, i64)*}* %val2002, i32 0, i32 2
%ePtr2004 = getelementptr {i8*, i8*, float (i8*, i8*, i64, i64)*}, {i8*, i8*, float (i8*, i8*, i64, i64)*}* %val2002, i32 0, i32 1
%f2005 = load float (i8*, i8*, i64, i64)*, float (i8*, i8*, i64, i64)** %fPtr2003
%e2006 = load i8*, i8** %ePtr2004
%tzone2007 = load i8*, i8** %_impzPtr
%zone2008 = bitcast i8* %tzone2007 to %mzone*
%z2009 = bitcast %mzone* %zone2008 to i8*
%result2010 = tail call fastcc float %f2005(i8* %z2009, i8* %e2006, i64 %val1999, i64 %val2000)
%val2011 = fmul float 0x3fd3333340000000, %result2010
%val2012 = fadd float %val1998, %val2011
store float %val2012, float* %outPtr
store float %val2012, float* %ifptr1976
br label %ifcont1976

else1976:
br label %ifcont1976

ifcont1976:
%ifres2013 = load float, float* %ifptr1976

%loop_cnt1950 = load i64, i64* %kPtr
%next1950 = add i64 %loop_cnt1950, 1
store i64 %next1950, i64* %kPtr
%cmp1950 = icmp ult i64 %next1950, %num2015
br i1 %cmp1950, label %loop1950, label %after1950

after1950:
%val2018 = load float, float* %outPtr
%val2019 = load i64, i64* %timePtr
%val2020 = load i64, i64* %chanPtr
%val2021 = load float*, float** %datPtr

; apply closure 
%vval2022 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %effect_kernelPtr
%val2023 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*,{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %vval2022
%fPtr2024 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %val2023, i32 0, i32 2
%ePtr2025 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %val2023, i32 0, i32 1
%f2026 = load float (i8*, i8*, float, i64, i64, float*)*, float (i8*, i8*, float, i64, i64, float*)** %fPtr2024
%e2027 = load i8*, i8** %ePtr2025
%tzone2028 = load i8*, i8** %_impzPtr
%zone2029 = bitcast i8* %tzone2028 to %mzone*
%z2030 = bitcast %mzone* %zone2029 to i8*
%result2031 = tail call fastcc float %f2026(i8* %z2030, i8* %e2027, float %val2018, i64 %val2019, i64 %val2020, float* %val2021)
%val2032 = fmul float 0x4000000000000000, %result2031
ret float %val2032
}
define dllexport fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd__1551(i8* %_impz,i8* %_impenv, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %note_kernel, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %effect_kernel) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone1554 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***}*
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***}* %impenv, i32 0, i32 0
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr_

; setup arguments
%dat_note_kernel = call i8* @llvm_zone_malloc(%mzone* %zone1554, i64 8)
%note_kernelPtr = bitcast i8* %dat_note_kernel to {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %note_kernel, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %note_kernelPtr
%dat_effect_kernel = call i8* @llvm_zone_malloc(%mzone* %zone1554, i64 8)
%effect_kernelPtr = bitcast i8* %dat_effect_kernel to {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %effect_kernel, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %effect_kernelPtr



; closure set! 
%val1556 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %effect_kernelPtr
%var1558 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%val1557 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %note_kernelPtr
%closure1559 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val1556
%tablePtr1560 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure1559, i32 0, i32 0
%tmp1561 = bitcast i8** %tablePtr1560 to %clsvar**
%table1562 = load %clsvar*, %clsvar** %tmp1561
%ePtr1563 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure1559, i32 0, i32 1
%e1564 = load i8*, i8** %ePtr1563
%offset1565 = call i32 @get_address_offset(i64 5266453129974903, %clsvar* %table1562)
%valPtr1566 = getelementptr i8, i8* %e1564, i32 %offset1565
%val1567 = bitcast i8* %valPtr1566 to i8**
%val1568 = load i8*, i8** %val1567
%val1569 = bitcast i8* %val1568 to {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***
%check1570 = call i1 @check_address_type(i64 5266453129974903, %clsvar* %table1562, i8* %var1558)
br i1 %check1570, label %then1555, label %else1555

then1555:
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %val1557, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %val1569
br label %cont1555

else1555:
br label %cont1555

cont1555:
%tzone1571 = load i8*, i8** %_impzPtr
%zone1572 = bitcast i8* %tzone1571 to %mzone*

; let assign value to symbol poly
%dat_poly = call i8* @llvm_zone_malloc(%mzone* %zone1572, i64 8)
%polyPtr = bitcast i8* %dat_poly to i64*
%tzone1577 = load i8*, i8** %_impzPtr
%zone1578 = bitcast i8* %tzone1577 to %mzone*

; let assign value to symbol samples
%dat_samples = call i8* @llvm_zone_malloc(%mzone* %zone1578, i64 8)
%samplesPtr = bitcast i8* %dat_samples to [20 x [128 x float*]]**
%tzone1583 = load i8*, i8** %_impzPtr
%zone1584 = bitcast i8* %tzone1583 to %mzone*

; let assign value to symbol samples_length
%dat_samples_length = call i8* @llvm_zone_malloc(%mzone* %zone1584, i64 8)
%samples_lengthPtr = bitcast i8* %dat_samples_length to [20 x [128 x i64]]**
%tzone1589 = load i8*, i8** %_impzPtr
%zone1590 = bitcast i8* %tzone1589 to %mzone*

; let assign value to symbol samples_channels
%dat_samples_channels = call i8* @llvm_zone_malloc(%mzone* %zone1590, i64 8)
%samples_channelsPtr = bitcast i8* %dat_samples_channels to [20 x [128 x i64]]**
%tzone1595 = load i8*, i8** %_impzPtr
%zone1596 = bitcast i8* %tzone1595 to %mzone*

; let assign value to symbol samples_offsets
%dat_samples_offsets = call i8* @llvm_zone_malloc(%mzone* %zone1596, i64 8)
%samples_offsetsPtr = bitcast i8* %dat_samples_offsets to [20 x [128 x i64]]**
%tzone1604 = load i8*, i8** %_impzPtr
%zone1605 = bitcast i8* %tzone1604 to %mzone*

; let assign value to symbol notes
%dat_notes = call i8* @llvm_zone_malloc(%mzone* %zone1605, i64 8)
%notesPtr = bitcast i8* %dat_notes to %NoteData***
%tzone1607 = load i8*, i8** %_impzPtr
%zone1608 = bitcast i8* %tzone1607 to %mzone*

; let assign value to symbol note
%dat_note = call i8* @llvm_zone_malloc(%mzone* %zone1608, i64 8)
%notePtr = bitcast i8* %dat_note to %NoteData**
%tzone1616 = load i8*, i8** %_impzPtr
%zone1617 = bitcast i8* %tzone1616 to %mzone*

; let assign value to symbol kernels
%dat_kernels = call i8* @llvm_zone_malloc(%mzone* %zone1617, i64 8)
%kernelsPtr = bitcast i8* %dat_kernels to {i8*, i8*, float (i8*, i8*, i64, i64)*}****
%tzone1619 = load i8*, i8** %_impzPtr
%zone1620 = bitcast i8* %tzone1619 to %mzone*

; let assign value to symbol kernel
%dat_kernel = call i8* @llvm_zone_malloc(%mzone* %zone1620, i64 8)
%kernelPtr = bitcast i8* %dat_kernel to {i8*, i8*, float (i8*, i8*, i64, i64)*}***
%tzone1621 = load i8*, i8** %_impzPtr
%zone1622 = bitcast i8* %tzone1621 to %mzone*

; let assign value to symbol starttime
%dat_starttime = call i8* @llvm_zone_malloc(%mzone* %zone1622, i64 8)
%starttimePtr = bitcast i8* %dat_starttime to i64*
%tzone1623 = load i8*, i8** %_impzPtr
%zone1624 = bitcast i8* %tzone1623 to %mzone*

; let assign value to symbol out
%dat_out = call i8* @llvm_zone_malloc(%mzone* %zone1624, i64 4)
%outPtr = bitcast i8* %dat_out to float*
%tzone1625 = load i8*, i8** %_impzPtr
%zone1626 = bitcast i8* %tzone1625 to %mzone*

; let assign value to symbol k
%dat_k = call i8* @llvm_zone_malloc(%mzone* %zone1626, i64 8)
%kPtr = bitcast i8* %dat_k to i64*
%tzone1627 = load i8*, i8** %_impzPtr
%zone1628 = bitcast i8* %tzone1627 to %mzone*

; let assign value to symbol i
%dat_i = call i8* @llvm_zone_malloc(%mzone* %zone1628, i64 8)
%iPtr = bitcast i8* %dat_i to i64*
%tzone1906 = load i8*, i8** %_impzPtr
%zone1907 = bitcast i8* %tzone1906 to %mzone*

; let assign value to symbol new_note
%dat_new_note = call i8* @llvm_zone_malloc(%mzone* %zone1907, i64 8)
%new_notePtr = bitcast i8* %dat_new_note to { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***

; let value assignment
%poly = select i1 true, i64 36, i64 36
store i64 %poly, i64* %polyPtr

%tzone1573 = load i8*, i8** %_impzPtr
%zone1574 = bitcast i8* %tzone1573 to %mzone*
%dat1575 = call i8* @llvm_zone_malloc(%mzone* %zone1574, i64 20480)
call i8* @memset(i8* %dat1575, i32 0, i64 20480)
%val1576 = bitcast i8* %dat1575 to [20 x [128 x float*]]*

; let value assignment
%samples = select i1 true, [20 x [128 x float*]]* %val1576, [20 x [128 x float*]]* %val1576
store [20 x [128 x float*]]* %samples, [20 x [128 x float*]]** %samplesPtr

%tzone1579 = load i8*, i8** %_impzPtr
%zone1580 = bitcast i8* %tzone1579 to %mzone*
%dat1581 = call i8* @llvm_zone_malloc(%mzone* %zone1580, i64 20480)
call i8* @memset(i8* %dat1581, i32 0, i64 20480)
%val1582 = bitcast i8* %dat1581 to [20 x [128 x i64]]*

; let value assignment
%samples_length = select i1 true, [20 x [128 x i64]]* %val1582, [20 x [128 x i64]]* %val1582
store [20 x [128 x i64]]* %samples_length, [20 x [128 x i64]]** %samples_lengthPtr

%tzone1585 = load i8*, i8** %_impzPtr
%zone1586 = bitcast i8* %tzone1585 to %mzone*
%dat1587 = call i8* @llvm_zone_malloc(%mzone* %zone1586, i64 20480)
call i8* @memset(i8* %dat1587, i32 0, i64 20480)
%val1588 = bitcast i8* %dat1587 to [20 x [128 x i64]]*

; let value assignment
%samples_channels = select i1 true, [20 x [128 x i64]]* %val1588, [20 x [128 x i64]]* %val1588
store [20 x [128 x i64]]* %samples_channels, [20 x [128 x i64]]** %samples_channelsPtr

%tzone1591 = load i8*, i8** %_impzPtr
%zone1592 = bitcast i8* %tzone1591 to %mzone*
%dat1593 = call i8* @llvm_zone_malloc(%mzone* %zone1592, i64 20480)
call i8* @memset(i8* %dat1593, i32 0, i64 20480)
%val1594 = bitcast i8* %dat1593 to [20 x [128 x i64]]*

; let value assignment
%samples_offsets = select i1 true, [20 x [128 x i64]]* %val1594, [20 x [128 x i64]]* %val1594
store [20 x [128 x i64]]* %samples_offsets, [20 x [128 x i64]]** %samples_offsetsPtr

%val1597 = load i64, i64* %polyPtr
%val1598 = getelementptr i64, i64* null, i32 1
%zonesize1599 = mul i64 8, %val1597
%tzone1600 = load i8*, i8** %_impzPtr
%zone1601 = bitcast i8* %tzone1600 to %mzone*
%dat1602 = call i8* @llvm_zone_malloc(%mzone* %zone1601, i64 %zonesize1599)
call i8* @memset(i8* %dat1602, i32 0, i64 %zonesize1599)
%val1603 = bitcast i8* %dat1602 to %NoteData**

; let value assignment
%notes = select i1 true, %NoteData** %val1603, %NoteData** %val1603
store %NoteData** %notes, %NoteData*** %notesPtr

%null1606 = bitcast i8* null to %NoteData*

; let value assignment
%note = select i1 true, %NoteData* %null1606, %NoteData* %null1606
store %NoteData* %note, %NoteData** %notePtr

%val1609 = load i64, i64* %polyPtr
%val1610 = getelementptr i64, i64* null, i32 1
%zonesize1611 = mul i64 8, %val1609
%tzone1612 = load i8*, i8** %_impzPtr
%zone1613 = bitcast i8* %tzone1612 to %mzone*
%dat1614 = call i8* @llvm_zone_malloc(%mzone* %zone1613, i64 %zonesize1611)
call i8* @memset(i8* %dat1614, i32 0, i64 %zonesize1611)
%val1615 = bitcast i8* %dat1614 to {i8*, i8*, float (i8*, i8*, i64, i64)*}***

; let value assignment
%kernels = select i1 true, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1615, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1615
store {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernels, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr

%null1618 = bitcast i8* null to {i8*, i8*, float (i8*, i8*, i64, i64)*}**

; let value assignment
%kernel = select i1 true, {i8*, i8*, float (i8*, i8*, i64, i64)*}** %null1618, {i8*, i8*, float (i8*, i8*, i64, i64)*}** %null1618
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** %kernel, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr


; let value assignment
%starttime = select i1 true, i64 0, i64 0
store i64 %starttime, i64* %starttimePtr


; let value assignment
%out = select i1 true, float 0x0, float 0x0
store float %out, float* %outPtr


; let value assignment
%k = select i1 true, i64 0, i64 0
store i64 %k, i64* %kPtr


; let value assignment
%i = select i1 true, i64 0, i64 0
store i64 %i, i64* %iPtr

%tzone1807 = load i8*, i8** %_impzPtr
%zone1808 = bitcast i8* %tzone1807 to %mzone*
call void @llvm_zone_mark(%mzone* %zone1808)
; malloc closure structure
%clsptr1809 = call i8* @llvm_zone_malloc(%mzone* %zone1808, i64 24)
%closure1810 = bitcast i8* %clsptr1809 to { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}*

; malloc environment structure
%envptr1811 = call i8* @llvm_zone_malloc(%mzone* %zone1808, i64 136)
%environment1812 = bitcast i8* %envptr1811 to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}*

; malloc closure address table
%addytable1813 = call %clsvar* @new_address_table()
%var1814 = bitcast [227 x i8]* @gsxtminstruments_ext61 to i8*
%var1815 = bitcast [299 x i8]* @gsxtminstruments_ext62 to i8*
%addytable1816 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1814, i32 0, i8* %var1815, i32 3, %clsvar* %addytable1813)
%var1817 = bitcast [14 x i8]* @gsxtminstruments_ext63 to i8*
%var1818 = bitcast [57 x i8]* @gsxtminstruments_ext64 to i8*
%addytable1819 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1817, i32 8, i8* %var1818, i32 3, %clsvar* %addytable1816)
%var1820 = bitcast [12 x i8]* @gsxtminstruments_ext65 to i8*
%var1821 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable1822 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1820, i32 16, i8* %var1821, i32 3, %clsvar* %addytable1819)
%var1823 = bitcast [9 x i8]* @gsxtminstruments_ext66 to i8*
%var1824 = bitcast [74 x i8]* @gsxtminstruments_ext67 to i8*
%addytable1825 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1823, i32 24, i8* %var1824, i32 3, %clsvar* %addytable1822)
%var1826 = bitcast [2 x i8]* @gsxtminstruments_ext68 to i8*
%var1827 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1828 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1826, i32 32, i8* %var1827, i32 3, %clsvar* %addytable1825)
%var1829 = bitcast [2 x i8]* @gsxtminstruments_ext69 to i8*
%var1830 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1831 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1829, i32 40, i8* %var1830, i32 3, %clsvar* %addytable1828)
%var1832 = bitcast [4 x i8]* @gsxtminstruments_ext70 to i8*
%var1833 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable1834 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1832, i32 48, i8* %var1833, i32 3, %clsvar* %addytable1831)
%var1835 = bitcast [10 x i8]* @gsxtminstruments_ext54 to i8*
%var1836 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1837 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1835, i32 56, i8* %var1836, i32 3, %clsvar* %addytable1834)
%var1838 = bitcast [7 x i8]* @gsxtminstruments_ext71 to i8*
%var1839 = bitcast [42 x i8]* @gsxtminstruments_ext56 to i8*
%addytable1840 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1838, i32 64, i8* %var1839, i32 3, %clsvar* %addytable1837)
%var1841 = bitcast [8 x i8]* @gsxtminstruments_ext72 to i8*
%var1842 = bitcast [43 x i8]* @gsxtminstruments_ext73 to i8*
%addytable1843 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1841, i32 72, i8* %var1842, i32 3, %clsvar* %addytable1840)
%var1844 = bitcast [5 x i8]* @gsxtminstruments_ext74 to i8*
%var1845 = bitcast [11 x i8]* @gsxtminstruments_ext30 to i8*
%addytable1846 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1844, i32 80, i8* %var1845, i32 3, %clsvar* %addytable1843)
%var1847 = bitcast [6 x i8]* @gsxtminstruments_ext75 to i8*
%var1848 = bitcast [12 x i8]* @gsxtminstruments_ext76 to i8*
%addytable1849 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1847, i32 88, i8* %var1848, i32 3, %clsvar* %addytable1846)
%var1850 = bitcast [16 x i8]* @gsxtminstruments_ext25 to i8*
%var1851 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%addytable1852 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1850, i32 96, i8* %var1851, i32 3, %clsvar* %addytable1849)
%var1853 = bitcast [17 x i8]* @gsxtminstruments_ext23 to i8*
%var1854 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%addytable1855 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1853, i32 104, i8* %var1854, i32 3, %clsvar* %addytable1852)
%var1856 = bitcast [15 x i8]* @gsxtminstruments_ext26 to i8*
%var1857 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%addytable1858 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1856, i32 112, i8* %var1857, i32 3, %clsvar* %addytable1855)
%var1859 = bitcast [8 x i8]* @gsxtminstruments_ext27 to i8*
%var1860 = bitcast [23 x i8]* @gsxtminstruments_ext0 to i8*
%addytable1861 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1859, i32 120, i8* %var1860, i32 3, %clsvar* %addytable1858)
%var1862 = bitcast [5 x i8]* @gsxtminstruments_ext77 to i8*
%var1863 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable1864 = call %clsvar* @add_address_table(%mzone* %zone1808, i8* %var1862, i32 128, i8* %var1863, i32 3, %clsvar* %addytable1861)
%address-table1865 = bitcast %clsvar* %addytable1864 to i8*

; insert table, function and environment into closure struct
%closure.table1900 = getelementptr { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}* %closure1810, i32 0, i32 0
store i8* %address-table1865, i8** %closure.table1900
%closure.env1901 = getelementptr { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}* %closure1810, i32 0, i32 1
store i8* %envptr1811, i8** %closure.env1901
%closure.func1902 = getelementptr { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}* %closure1810, i32 0, i32 2
store %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd__1552, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)** %closure.func1902
%closure_size1903 = call i64 @llvm_zone_mark_size(%mzone* %zone1808)
call void @llvm_zone_ptr_set_size(i8* %clsptr1809, i64 %closure_size1903)
%wrapper_ptr1904 = call i8* @llvm_zone_malloc(%mzone* %zone1808, i64 8)
%closure_wrapper1905 = bitcast i8* %wrapper_ptr1904 to { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}**
store { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}* %closure1810, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}** %closure_wrapper1905

; let value assignment
%new_note = select i1 true, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}** %closure_wrapper1905, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}** %closure_wrapper1905
store { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}** %new_note, { i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}*** %new_notePtr

; add data to environment
; don't need to alloc for env var make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr1867 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**** %tmp_envptr1867

; don't need to alloc for env var effect_kernel
%tmp_envptr1869 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 1
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %effect_kernelPtr, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %tmp_envptr1869

; don't need to alloc for env var note_kernel
%tmp_envptr1871 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %note_kernelPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr1871

; don't need to alloc for env var new_note
%tmp_envptr1873 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 3
store {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}*** %new_notePtr, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}**** %tmp_envptr1873

; don't need to alloc for env var i
%tmp_envptr1875 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 4
store i64* %iPtr, i64** %tmp_envptr1875

; don't need to alloc for env var k
%tmp_envptr1877 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 5
store i64* %kPtr, i64** %tmp_envptr1877

; don't need to alloc for env var out
%tmp_envptr1879 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 6
store float* %outPtr, float** %tmp_envptr1879

; don't need to alloc for env var starttime
%tmp_envptr1881 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 7
store i64* %starttimePtr, i64** %tmp_envptr1881

; don't need to alloc for env var kernel
%tmp_envptr1883 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 8
store {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %tmp_envptr1883

; don't need to alloc for env var kernels
%tmp_envptr1885 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 9
store {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr, {i8*, i8*, float (i8*, i8*, i64, i64)*}***** %tmp_envptr1885

; don't need to alloc for env var note
%tmp_envptr1887 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 10
store %NoteData** %notePtr, %NoteData*** %tmp_envptr1887

; don't need to alloc for env var notes
%tmp_envptr1889 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 11
store %NoteData*** %notesPtr, %NoteData**** %tmp_envptr1889

; don't need to alloc for env var samples_offsets
%tmp_envptr1891 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 12
store [20 x [128 x i64]]** %samples_offsetsPtr, [20 x [128 x i64]]*** %tmp_envptr1891

; don't need to alloc for env var samples_channels
%tmp_envptr1893 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 13
store [20 x [128 x i64]]** %samples_channelsPtr, [20 x [128 x i64]]*** %tmp_envptr1893

; don't need to alloc for env var samples_length
%tmp_envptr1895 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 14
store [20 x [128 x i64]]** %samples_lengthPtr, [20 x [128 x i64]]*** %tmp_envptr1895

; don't need to alloc for env var samples
%tmp_envptr1897 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 15
store [20 x [128 x float*]]** %samplesPtr, [20 x [128 x float*]]*** %tmp_envptr1897

; don't need to alloc for env var poly
%tmp_envptr1899 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*}* %environment1812, i32 0, i32 16
store i64* %polyPtr, i64** %tmp_envptr1899


; setup loop
store i64 0, i64* %kPtr
%val1924 = load i64, i64* %kPtr
%num1925 = add i64 128, %val1924
%comp1926 = icmp ult i64 128, 1
br i1 %comp1926, label %after1908, label %loop1908

loop1908:
; setup loop
store i64 0, i64* %iPtr
%val1920 = load i64, i64* %iPtr
%num1921 = add i64 20, %val1920
%comp1922 = icmp ult i64 20, 1
br i1 %comp1922, label %after1909, label %loop1909

loop1909:
%val1910 = load i64, i64* %kPtr
%val1911 = load i64, i64* %iPtr
%val1912 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_offsetsPtr
; array ref
%val1913 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val1912, i32 0, i64 %val1911
; set array
%val1914 = getelementptr [128 x i64], [128 x i64]* %val1913, i32 0, i64 %val1910
store i64 0, i64* %val1914
%val1915 = load i64, i64* %kPtr
%val1916 = load i64, i64* %iPtr
%val1917 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val1918 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val1917, i32 0, i64 %val1916
; set array
%val1919 = getelementptr [128 x i64], [128 x i64]* %val1918, i32 0, i64 %val1915
store i64 0, i64* %val1919
%loop_cnt1909 = load i64, i64* %iPtr
%next1909 = add i64 %loop_cnt1909, 1
store i64 %next1909, i64* %iPtr
%cmp1909 = icmp ult i64 %next1909, %num1921
br i1 %cmp1909, label %loop1909, label %after1909

after1909:
%loop_cnt1908 = load i64, i64* %kPtr
%next1908 = add i64 %loop_cnt1908, 1
store i64 %next1908, i64* %kPtr
%cmp1908 = icmp ult i64 %next1908, %num1925
br i1 %cmp1908, label %loop1908, label %after1908

after1908:
; setup loop
%val1930 = load i64, i64* %polyPtr
store i64 0, i64* %iPtr
%val1945 = load i64, i64* %iPtr
%num1946 = add i64 %val1930, %val1945
%comp1947 = icmp ult i64 %val1930, 1
br i1 %comp1947, label %after1928, label %loop1928

loop1928:
%val1931 = load i64, i64* %iPtr
%val1932 = load {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr
%null1933 = bitcast i8* null to i8*
%val1934 = bitcast i8* %null1933 to {i8*, i8*, float (i8*, i8*, i64, i64)*}**
; set pointer
%val1935 = getelementptr {i8*, i8*, float (i8*, i8*, i64, i64)*}**, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1932, i64 %val1931
store {i8*, i8*, float (i8*, i8*, i64, i64)*}** %val1934, {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %val1935
%val1936 = load i64, i64* %iPtr
%val1937 = load %NoteData**, %NoteData*** %notesPtr
%val1938 = load i64, i64* %iPtr
%res1939 = call ccc i1 @impc_false()
%val1940 = mul i64 10, 1024
%ret1941 = call %mzone* @llvm_zone_create(i64 %val1940)
%val1942 = bitcast %mzone* %ret1941 to i8*
%res1943 = call fastcc %NoteData* @NoteData_adhoc_W05vdGVEYXRhKixpNjQsaTY0LGZsb2F0LGZsb2F0LGk2NCxmbG9hdCxpMSxpNjQsaTgqXQ(i64 %val1938, i64 0, float 0x0, float 0x0, i64 0, float 0x3ff0000000000000, i1 %res1939, i64 0, i8* %val1942)
; set pointer
%val1944 = getelementptr %NoteData*, %NoteData** %val1937, i64 %val1936
store %NoteData* %res1943, %NoteData** %val1944
%loop_cnt1928 = load i64, i64* %iPtr
%next1928 = add i64 %loop_cnt1928, 1
store i64 %next1928, i64* %iPtr
%cmp1928 = icmp ult i64 %next1928, %num1946
br i1 %cmp1928, label %loop1928, label %after1928

after1928:
%tzone2139 = load i8*, i8** %_impzPtr
%zone2140 = bitcast i8* %tzone2139 to %mzone*

; let assign value to symbol _anon_lambda_5
%dat__anon_lambda_5 = call i8* @llvm_zone_malloc(%mzone* %zone2140, i64 8)
%_anon_lambda_5Ptr = bitcast i8* %dat__anon_lambda_5 to { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***
%tzone2035 = load i8*, i8** %_impzPtr
%zone2036 = bitcast i8* %tzone2035 to %mzone*
call void @llvm_zone_mark(%mzone* %zone2036)
; malloc closure structure
%clsptr2037 = call i8* @llvm_zone_malloc(%mzone* %zone2036, i64 24)
%closure2038 = bitcast i8* %clsptr2037 to { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*

; malloc environment structure
%envptr2039 = call i8* @llvm_zone_malloc(%mzone* %zone2036, i64 144)
%environment2040 = bitcast i8* %envptr2039 to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}*

; malloc closure address table
%addytable2041 = call %clsvar* @new_address_table()
%var2042 = bitcast [227 x i8]* @gsxtminstruments_ext61 to i8*
%var2043 = bitcast [299 x i8]* @gsxtminstruments_ext62 to i8*
%addytable2044 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2042, i32 0, i8* %var2043, i32 3, %clsvar* %addytable2041)
%var2045 = bitcast [14 x i8]* @gsxtminstruments_ext63 to i8*
%var2046 = bitcast [57 x i8]* @gsxtminstruments_ext64 to i8*
%addytable2047 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2045, i32 8, i8* %var2046, i32 3, %clsvar* %addytable2044)
%var2048 = bitcast [12 x i8]* @gsxtminstruments_ext65 to i8*
%var2049 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable2050 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2048, i32 16, i8* %var2049, i32 3, %clsvar* %addytable2047)
%var2051 = bitcast [9 x i8]* @gsxtminstruments_ext66 to i8*
%var2052 = bitcast [74 x i8]* @gsxtminstruments_ext67 to i8*
%addytable2053 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2051, i32 24, i8* %var2052, i32 3, %clsvar* %addytable2050)
%var2054 = bitcast [2 x i8]* @gsxtminstruments_ext68 to i8*
%var2055 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable2056 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2054, i32 32, i8* %var2055, i32 3, %clsvar* %addytable2053)
%var2057 = bitcast [2 x i8]* @gsxtminstruments_ext69 to i8*
%var2058 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable2059 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2057, i32 40, i8* %var2058, i32 3, %clsvar* %addytable2056)
%var2060 = bitcast [4 x i8]* @gsxtminstruments_ext70 to i8*
%var2061 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2062 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2060, i32 48, i8* %var2061, i32 3, %clsvar* %addytable2059)
%var2063 = bitcast [10 x i8]* @gsxtminstruments_ext54 to i8*
%var2064 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable2065 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2063, i32 56, i8* %var2064, i32 3, %clsvar* %addytable2062)
%var2066 = bitcast [7 x i8]* @gsxtminstruments_ext71 to i8*
%var2067 = bitcast [42 x i8]* @gsxtminstruments_ext56 to i8*
%addytable2068 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2066, i32 64, i8* %var2067, i32 3, %clsvar* %addytable2065)
%var2069 = bitcast [8 x i8]* @gsxtminstruments_ext72 to i8*
%var2070 = bitcast [43 x i8]* @gsxtminstruments_ext73 to i8*
%addytable2071 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2069, i32 72, i8* %var2070, i32 3, %clsvar* %addytable2068)
%var2072 = bitcast [5 x i8]* @gsxtminstruments_ext74 to i8*
%var2073 = bitcast [11 x i8]* @gsxtminstruments_ext30 to i8*
%addytable2074 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2072, i32 80, i8* %var2073, i32 3, %clsvar* %addytable2071)
%var2075 = bitcast [6 x i8]* @gsxtminstruments_ext75 to i8*
%var2076 = bitcast [12 x i8]* @gsxtminstruments_ext76 to i8*
%addytable2077 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2075, i32 88, i8* %var2076, i32 3, %clsvar* %addytable2074)
%var2078 = bitcast [16 x i8]* @gsxtminstruments_ext25 to i8*
%var2079 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%addytable2080 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2078, i32 96, i8* %var2079, i32 3, %clsvar* %addytable2077)
%var2081 = bitcast [17 x i8]* @gsxtminstruments_ext23 to i8*
%var2082 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%addytable2083 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2081, i32 104, i8* %var2082, i32 3, %clsvar* %addytable2080)
%var2084 = bitcast [15 x i8]* @gsxtminstruments_ext26 to i8*
%var2085 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%addytable2086 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2084, i32 112, i8* %var2085, i32 3, %clsvar* %addytable2083)
%var2087 = bitcast [8 x i8]* @gsxtminstruments_ext27 to i8*
%var2088 = bitcast [23 x i8]* @gsxtminstruments_ext0 to i8*
%addytable2089 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2087, i32 120, i8* %var2088, i32 3, %clsvar* %addytable2086)
%var2090 = bitcast [5 x i8]* @gsxtminstruments_ext77 to i8*
%var2091 = bitcast [4 x i8]* @gsxtminstruments_ext21 to i8*
%addytable2092 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2090, i32 128, i8* %var2091, i32 3, %clsvar* %addytable2089)
%var2093 = bitcast [15 x i8]* @gsxtminstruments_ext78 to i8*
%var2094 = bitcast [57 x i8]* @gsxtminstruments_ext64 to i8*
%addytable2095 = call %clsvar* @add_address_table(%mzone* %zone2036, i8* %var2093, i32 136, i8* %var2094, i32 3, %clsvar* %addytable2092)
%address-table2096 = bitcast %clsvar* %addytable2095 to i8*

; insert table, function and environment into closure struct
%closure.table2133 = getelementptr { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2038, i32 0, i32 0
store i8* %address-table2096, i8** %closure.table2133
%closure.env2134 = getelementptr { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2038, i32 0, i32 1
store i8* %envptr2039, i8** %closure.env2134
%closure.func2135 = getelementptr { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2038, i32 0, i32 2
store float (i8*, i8*, float, i64, i64, float*)* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd__1553, float (i8*, i8*, float, i64, i64, float*)** %closure.func2135
%closure_size2136 = call i64 @llvm_zone_mark_size(%mzone* %zone2036)
call void @llvm_zone_ptr_set_size(i8* %clsptr2037, i64 %closure_size2136)
%wrapper_ptr2137 = call i8* @llvm_zone_malloc(%mzone* %zone2036, i64 8)
%closure_wrapper2138 = bitcast i8* %wrapper_ptr2137 to { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
store { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2038, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %closure_wrapper2138

; let value assignment
%_anon_lambda_5 = select i1 true, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %closure_wrapper2138, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %closure_wrapper2138
store { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %_anon_lambda_5, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %_anon_lambda_5Ptr

; add data to environment
; don't need to alloc for env var make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr2098 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**** %tmp_envptr2098

; don't need to alloc for env var effect_kernel
%tmp_envptr2100 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 1
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %effect_kernelPtr, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %tmp_envptr2100

; don't need to alloc for env var note_kernel
%tmp_envptr2102 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 2
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %note_kernelPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr2102

; don't need to alloc for env var new_note
%tmp_envptr2104 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 3
store {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}*** %new_notePtr, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}**** %tmp_envptr2104

; don't need to alloc for env var i
%tmp_envptr2106 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 4
store i64* %iPtr, i64** %tmp_envptr2106

; don't need to alloc for env var k
%tmp_envptr2108 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 5
store i64* %kPtr, i64** %tmp_envptr2108

; don't need to alloc for env var out
%tmp_envptr2110 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 6
store float* %outPtr, float** %tmp_envptr2110

; don't need to alloc for env var starttime
%tmp_envptr2112 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 7
store i64* %starttimePtr, i64** %tmp_envptr2112

; don't need to alloc for env var kernel
%tmp_envptr2114 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 8
store {i8*, i8*, float (i8*, i8*, i64, i64)*}*** %kernelPtr, {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %tmp_envptr2114

; don't need to alloc for env var kernels
%tmp_envptr2116 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 9
store {i8*, i8*, float (i8*, i8*, i64, i64)*}**** %kernelsPtr, {i8*, i8*, float (i8*, i8*, i64, i64)*}***** %tmp_envptr2116

; don't need to alloc for env var note
%tmp_envptr2118 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 10
store %NoteData** %notePtr, %NoteData*** %tmp_envptr2118

; don't need to alloc for env var notes
%tmp_envptr2120 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 11
store %NoteData*** %notesPtr, %NoteData**** %tmp_envptr2120

; don't need to alloc for env var samples_offsets
%tmp_envptr2122 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 12
store [20 x [128 x i64]]** %samples_offsetsPtr, [20 x [128 x i64]]*** %tmp_envptr2122

; don't need to alloc for env var samples_channels
%tmp_envptr2124 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 13
store [20 x [128 x i64]]** %samples_channelsPtr, [20 x [128 x i64]]*** %tmp_envptr2124

; don't need to alloc for env var samples_length
%tmp_envptr2126 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 14
store [20 x [128 x i64]]** %samples_lengthPtr, [20 x [128 x i64]]*** %tmp_envptr2126

; don't need to alloc for env var samples
%tmp_envptr2128 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 15
store [20 x [128 x float*]]** %samplesPtr, [20 x [128 x float*]]*** %tmp_envptr2128

; don't need to alloc for env var poly
%tmp_envptr2130 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 16
store i64* %polyPtr, i64** %tmp_envptr2130

; don't need to alloc for env var _anon_lambda_5
%tmp_envptr2132 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, %NoteData* (i8*, i8*, i64, float, i64, float, i64, float*)*}***, i64*, i64*, float*, i64*, {i8*, i8*, float (i8*, i8*, i64, i64)*}***, {i8*, i8*, float (i8*, i8*, i64, i64)*}****, %NoteData**, %NoteData***, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x i64]]**, [20 x [128 x float*]]**, i64*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2040, i32 0, i32 17
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %_anon_lambda_5Ptr, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %tmp_envptr2132


%val2141 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %_anon_lambda_5Ptr
ret {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val2141
}
@gsxtminstruments_ext79 = hidden constant [280 x i8] c"make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd Scheme wrapper error: check the arg arity and types
\00"
define dllexport ccc {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone2161 = load i8*, i8** %_impzPtr
%zone2162 = bitcast i8* %tzone2161 to %mzone*

; let assign value to symbol make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd
%dat_make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd = call i8* @llvm_zone_malloc(%mzone* %zone2162, i64 8)
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr = bitcast i8* %dat_make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd to { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***
%tzone2142 = load i8*, i8** %_impzPtr
%zone2143 = bitcast i8* %tzone2142 to %mzone*
call void @llvm_zone_mark(%mzone* %zone2143)
; malloc closure structure
%clsptr2144 = call i8* @llvm_zone_malloc(%mzone* %zone2143, i64 24)
%closure2145 = bitcast i8* %clsptr2144 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*

; malloc environment structure
%envptr2146 = call i8* @llvm_zone_malloc(%mzone* %zone2143, i64 8)
%environment2147 = bitcast i8* %envptr2146 to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***}*

; malloc closure address table
%addytable2148 = call %clsvar* @new_address_table()
%var2149 = bitcast [227 x i8]* @gsxtminstruments_ext61 to i8*
%var2150 = bitcast [299 x i8]* @gsxtminstruments_ext62 to i8*
%addytable2151 = call %clsvar* @add_address_table(%mzone* %zone2143, i8* %var2149, i32 0, i8* %var2150, i32 3, %clsvar* %addytable2148)
%address-table2152 = bitcast %clsvar* %addytable2151 to i8*

; insert table, function and environment into closure struct
%closure.table2155 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure2145, i32 0, i32 0
store i8* %address-table2152, i8** %closure.table2155
%closure.env2156 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure2145, i32 0, i32 1
store i8* %envptr2146, i8** %closure.env2156
%closure.func2157 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure2145, i32 0, i32 2
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd__1551, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)** %closure.func2157
%closure_size2158 = call i64 @llvm_zone_mark_size(%mzone* %zone2143)
call void @llvm_zone_ptr_set_size(i8* %clsptr2144, i64 %closure_size2158)
%wrapper_ptr2159 = call i8* @llvm_zone_malloc(%mzone* %zone2143, i64 8)
%closure_wrapper2160 = bitcast i8* %wrapper_ptr2159 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure2145, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_wrapper2160

; let value assignment
%make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd = select i1 true, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_wrapper2160, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_wrapper2160
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr

; add data to environment
; don't need to alloc for env var make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd
%tmp_envptr2154 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}***}* %environment2147, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**** %tmp_envptr2154


%val2163 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*** %make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpdPtr
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %val2163
}


@make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var = dllexport global [1 x i8*] [ i8* null ]

@make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd({i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %arg_0,{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_1) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %arg_0, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_1)
ret {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %result
}


define dllexport ccc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_native({i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %arg_0,{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_1) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %arg_0, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_1)
ret {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %result
}


define dllexport ccc i8*  @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%arg_0_val = call ccc i8* @list_ref(i8* %_sc, i32 0,i8* %args)
%arg_0_rt_check = call i32 @is_cptr(i8* %arg_0_val)
%arg_0_bool = icmp ne i32 %arg_0_rt_check, 0
br i1 %arg_0_bool, label %arg_0_true, label %arg_0_false

arg_0_true:
br label %arg_0_continue

arg_0_false:
%var2164 = bitcast [280 x i8]* @gsxtminstruments_ext79 to i8*
call i32 (i8*, ...) @printf(i8* %var2164)
%arg_0_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_0_errret

arg_0_continue:
%ttv_0 = call ccc i8* @cptr_value(i8* %arg_0_val)
%arg_0 = bitcast i8* %ttv_0 to {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**
%arg_1_val = call ccc i8* @list_ref(i8* %_sc, i32 1,i8* %args)
%arg_1_rt_check = call i32 @is_cptr(i8* %arg_1_val)
%arg_1_bool = icmp ne i32 %arg_1_rt_check, 0
br i1 %arg_1_bool, label %arg_1_true, label %arg_1_false

arg_1_true:
br label %arg_1_continue

arg_1_false:
%var2165 = bitcast [280 x i8]* @gsxtminstruments_ext79 to i8*
call i32 (i8*, ...) @printf(i8* %var2165)
%arg_1_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_1_errret

arg_1_continue:
%ttv_1 = call ccc i8* @cptr_value(i8* %arg_1_val)
%arg_1 = bitcast i8* %ttv_1 to {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
%ptr = getelementptr [1 x i8*], [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %arg_0, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_1)
%tmpres = bitcast {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %result to i8*
%res = call ccc i8* @mk_cptr(i8* %_sc, i8* %tmpres)
ret i8* %res
}


define dllexport ccc void @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = bitcast i8* %dat to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**}*
%arg_p_0 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**}* %fstruct, i32 0, i32 0
%arg_0 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %arg_p_0
%arg_p_1 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**}* %fstruct, i32 0, i32 1
%arg_1 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %arg_p_1
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @make_instrument_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qLFtbZmxvYXQsaTY0LGk2NF0qLE5vdGVEYXRhKix8MTI4LGZsb2F0KnwqLHwxMjgsaTY0fCosfDEyOCxpNjR8Kix8MTI4LGk2NHwqLGk2NCxpNjQsZmxvYXQqXSosW2Zsb2F0LGZsb2F0LGk2NCxpNjQsZmxvYXQqXSpd_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %arg_0, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_1)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext80 = hidden constant [60 x i8] c"sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ\00"
@gsxtminstruments_ext81 = hidden constant [83 x i8] c"{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**\00"
@gsxtminstruments_ext82 = hidden constant [5 x i8] c"gain\00"
@gsxtminstruments_ext83 = hidden constant [10 x i8] c"pan_width\00"
@gsxtminstruments_ext84 = hidden constant [8 x i8] c"pan_pos\00"
@gsxtminstruments_ext85 = hidden constant [58 x i8] c"{i8*, i8*, float (i8*, i8*, i64, float, float, float)*}**\00"
@gsxtminstruments_ext86 = hidden constant [14 x i8] c"reverb_absorb\00"
@gsxtminstruments_ext87 = hidden constant [12 x i8] c"reverb_size\00"
@gsxtminstruments_ext88 = hidden constant [16 x i8] c"reverb_predelay\00"
@gsxtminstruments_ext89 = hidden constant [11 x i8] c"reverb_mix\00"
@gsxtminstruments_ext90 = hidden constant [7 x i8] c"reverb\00"
@gsxtminstruments_ext91 = hidden constant [11 x i8] c"notekernel\00"
@gsxtminstruments_ext92 = hidden constant [15 x i8] c"_anon_lambda_6\00"
define dllexport fastcc float @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ__2167(i8* %_impz,i8* %_impenv, float %in, i64 %time, i64 %chan, float* %dat) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone2196 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}*
%sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 0
%sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr_
%outPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 1
%outPtr = load float*, float** %outPtr_
%gainPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 2
%gainPtr = load float*, float** %gainPtr_
%pan_widthPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 3
%pan_widthPtr = load float*, float** %pan_widthPtr_
%pan_posPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 4
%pan_posPtr = load float*, float** %pan_posPtr_
%panPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 5
%panPtr = load {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}**** %panPtr_
%reverb_absorbPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 6
%reverb_absorbPtr = load float*, float** %reverb_absorbPtr_
%reverb_sizePtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 7
%reverb_sizePtr = load float*, float** %reverb_sizePtr_
%reverb_predelayPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 8
%reverb_predelayPtr = load float*, float** %reverb_predelayPtr_
%reverb_mixPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 9
%reverb_mixPtr = load float*, float** %reverb_mixPtr_
%reverbPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 10
%reverbPtr = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**** %reverbPtr_
%notekernelPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 11
%notekernelPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %notekernelPtr_
%_anon_lambda_6Ptr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %impenv, i32 0, i32 12
%_anon_lambda_6Ptr = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %_anon_lambda_6Ptr_

; setup arguments
%inPtr = alloca float
store float %in, float* %inPtr
%timePtr = alloca i64
store i64 %time, i64* %timePtr
%chanPtr = alloca i64
store i64 %chan, i64* %chanPtr
%datPtr = alloca float*
store float* %dat, float** %datPtr

; promote local stack var allocations
%tzone2234 = load i8*, i8** %_impzPtr
%zone2235 = bitcast i8* %tzone2234 to %mzone*
%ifptr2211 = alloca float

; do set!
%val2197 = load i64, i64* %chanPtr
%val2198 = load float, float* %inPtr
%val2199 = load float, float* %pan_widthPtr
%val2200 = load float, float* %pan_posPtr

; apply closure 
%vval2201 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}**, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}*** %panPtr
%val2202 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}*,{i8*, i8*, float (i8*, i8*, i64, float, float, float)*}** %vval2201
%fPtr2203 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}* %val2202, i32 0, i32 2
%ePtr2204 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}* %val2202, i32 0, i32 1
%f2205 = load float (i8*, i8*, i64, float, float, float)*, float (i8*, i8*, i64, float, float, float)** %fPtr2203
%e2206 = load i8*, i8** %ePtr2204
%tzone2207 = load i8*, i8** %_impzPtr
%zone2208 = bitcast i8* %tzone2207 to %mzone*
%z2209 = bitcast %mzone* %zone2208 to i8*
%result2210 = tail call fastcc float %f2205(i8* %z2209, i8* %e2206, i64 %val2197, float %val2198, float %val2199, float %val2200)
store float %result2210, float* %outPtr
%val2212 = load float, float* %reverb_mixPtr
%cmp2213 = fcmp ugt float %val2212, 0x3f50624de0000000
br i1 %cmp2213, label %then2211, label %else2211

then2211:
; do set!
%val2214 = load i64, i64* %chanPtr
%val2215 = load float, float* %outPtr
%val2216 = load float, float* %reverb_sizePtr
%val2217 = load float, float* %reverb_predelayPtr
%val2218 = load float, float* %reverb_absorbPtr
%val2219 = load float, float* %reverb_mixPtr

; apply closure 
%vval2220 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %reverbPtr
%val2221 = load {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*,{i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %vval2220
%fPtr2222 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}* %val2221, i32 0, i32 2
%ePtr2223 = getelementptr {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}* %val2221, i32 0, i32 1
%f2224 = load float (i8*, i8*, i64, float, float, float, float, float)*, float (i8*, i8*, i64, float, float, float, float, float)** %fPtr2222
%e2225 = load i8*, i8** %ePtr2223
%tzone2226 = load i8*, i8** %_impzPtr
%zone2227 = bitcast i8* %tzone2226 to %mzone*
%z2228 = bitcast %mzone* %zone2227 to i8*
%result2229 = tail call fastcc float %f2224(i8* %z2228, i8* %e2225, i64 %val2214, float %val2215, float %val2216, float %val2217, float %val2218, float %val2219)
store float %result2229, float* %outPtr
store float %result2229, float* %ifptr2211
br label %ifcont2211

else2211:
br label %ifcont2211

ifcont2211:
%ifres2230 = load float, float* %ifptr2211

%val2231 = load float, float* %gainPtr
%val2232 = load float, float* %outPtr
%val2233 = fmul float %val2231, %val2232
ret float %val2233
}
define dllexport fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ__2166(i8* %_impz,i8* %_impenv) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone2168 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***}*
%sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr_ = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***}* %impenv, i32 0, i32 0
%sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr_

; setup arguments


%tzone2170 = load i8*, i8** %_impzPtr
%zone2171 = bitcast i8* %tzone2170 to %mzone*

; let assign value to symbol notekernel
%dat_notekernel = call i8* @llvm_zone_malloc(%mzone* %zone2171, i64 8)
%notekernelPtr = bitcast i8* %dat_notekernel to {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***
%tzone2173 = load i8*, i8** %_impzPtr
%zone2174 = bitcast i8* %tzone2173 to %mzone*

; let assign value to symbol reverb
%dat_reverb = call i8* @llvm_zone_malloc(%mzone* %zone2174, i64 8)
%reverbPtr = bitcast i8* %dat_reverb to {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***
%tzone2175 = load i8*, i8** %_impzPtr
%zone2176 = bitcast i8* %tzone2175 to %mzone*

; let assign value to symbol reverb_mix
%dat_reverb_mix = call i8* @llvm_zone_malloc(%mzone* %zone2176, i64 4)
%reverb_mixPtr = bitcast i8* %dat_reverb_mix to float*
%tzone2177 = load i8*, i8** %_impzPtr
%zone2178 = bitcast i8* %tzone2177 to %mzone*

; let assign value to symbol reverb_predelay
%dat_reverb_predelay = call i8* @llvm_zone_malloc(%mzone* %zone2178, i64 4)
%reverb_predelayPtr = bitcast i8* %dat_reverb_predelay to float*
%tzone2179 = load i8*, i8** %_impzPtr
%zone2180 = bitcast i8* %tzone2179 to %mzone*

; let assign value to symbol reverb_size
%dat_reverb_size = call i8* @llvm_zone_malloc(%mzone* %zone2180, i64 4)
%reverb_sizePtr = bitcast i8* %dat_reverb_size to float*
%tzone2181 = load i8*, i8** %_impzPtr
%zone2182 = bitcast i8* %tzone2181 to %mzone*

; let assign value to symbol reverb_absorb
%dat_reverb_absorb = call i8* @llvm_zone_malloc(%mzone* %zone2182, i64 4)
%reverb_absorbPtr = bitcast i8* %dat_reverb_absorb to float*
%tzone2186 = load i8*, i8** %_impzPtr
%zone2187 = bitcast i8* %tzone2186 to %mzone*

; let assign value to symbol pan
%dat_pan = call i8* @llvm_zone_malloc(%mzone* %zone2187, i64 8)
%panPtr = bitcast i8* %dat_pan to {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***
%tzone2188 = load i8*, i8** %_impzPtr
%zone2189 = bitcast i8* %tzone2188 to %mzone*

; let assign value to symbol pan_pos
%dat_pan_pos = call i8* @llvm_zone_malloc(%mzone* %zone2189, i64 4)
%pan_posPtr = bitcast i8* %dat_pan_pos to float*
%tzone2190 = load i8*, i8** %_impzPtr
%zone2191 = bitcast i8* %tzone2190 to %mzone*

; let assign value to symbol pan_width
%dat_pan_width = call i8* @llvm_zone_malloc(%mzone* %zone2191, i64 4)
%pan_widthPtr = bitcast i8* %dat_pan_width to float*
%tzone2192 = load i8*, i8** %_impzPtr
%zone2193 = bitcast i8* %tzone2192 to %mzone*

; let assign value to symbol gain
%dat_gain = call i8* @llvm_zone_malloc(%mzone* %zone2193, i64 4)
%gainPtr = bitcast i8* %dat_gain to float*
%tzone2194 = load i8*, i8** %_impzPtr
%zone2195 = bitcast i8* %tzone2194 to %mzone*

; let assign value to symbol out
%dat_out = call i8* @llvm_zone_malloc(%mzone* %zone2195, i64 4)
%outPtr = bitcast i8* %dat_out to float*
%null2169 = bitcast i8* null to {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**

; let value assignment
%notekernel = select i1 true, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %null2169, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %null2169
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}** %notekernel, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %notekernelPtr

%res2172 = call ccc {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** @reverb_st_c()

; let value assignment
%reverb = select i1 true, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %res2172, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %res2172
store {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}** %reverb, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %reverbPtr


; let value assignment
%reverb_mix = select i1 true, float 0x3fc3333340000000, float 0x3fc3333340000000
store float %reverb_mix, float* %reverb_mixPtr


; let value assignment
%reverb_predelay = select i1 true, float 0x4044000000000000, float 0x4044000000000000
store float %reverb_predelay, float* %reverb_predelayPtr


; let value assignment
%reverb_size = select i1 true, float 0x3fd3333340000000, float 0x3fd3333340000000
store float %reverb_size, float* %reverb_sizePtr


; let value assignment
%reverb_absorb = select i1 true, float 0x3fdcccccc0000000, float 0x3fdcccccc0000000
store float %reverb_absorb, float* %reverb_absorbPtr

%val2183 = load i32, i32* @CHANNELS
%res2184 = call ccc i64 @i32toi64(i32 %val2183)
%res2185 = call ccc {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}** @pan_c(i64 %res2184)

; let value assignment
%pan = select i1 true, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}** %res2185, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}** %res2185
store {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}** %pan, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}*** %panPtr


; let value assignment
%pan_pos = select i1 true, float 0x3fe0000000000000, float 0x3fe0000000000000
store float %pan_pos, float* %pan_posPtr


; let value assignment
%pan_width = select i1 true, float 0x3ff0000000000000, float 0x3ff0000000000000
store float %pan_width, float* %pan_widthPtr


; let value assignment
%gain = select i1 true, float 0x4000000000000000, float 0x4000000000000000
store float %gain, float* %gainPtr


; let value assignment
%out = select i1 true, float 0x0, float 0x0
store float %out, float* %outPtr

%tzone2315 = load i8*, i8** %_impzPtr
%zone2316 = bitcast i8* %tzone2315 to %mzone*

; let assign value to symbol _anon_lambda_6
%dat__anon_lambda_6 = call i8* @llvm_zone_malloc(%mzone* %zone2316, i64 8)
%_anon_lambda_6Ptr = bitcast i8* %dat__anon_lambda_6 to { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***
%tzone2236 = load i8*, i8** %_impzPtr
%zone2237 = bitcast i8* %tzone2236 to %mzone*
call void @llvm_zone_mark(%mzone* %zone2237)
; malloc closure structure
%clsptr2238 = call i8* @llvm_zone_malloc(%mzone* %zone2237, i64 24)
%closure2239 = bitcast i8* %clsptr2238 to { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*

; malloc environment structure
%envptr2240 = call i8* @llvm_zone_malloc(%mzone* %zone2237, i64 104)
%environment2241 = bitcast i8* %envptr2240 to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}*

; malloc closure address table
%addytable2242 = call %clsvar* @new_address_table()
%var2243 = bitcast [60 x i8]* @gsxtminstruments_ext80 to i8*
%var2244 = bitcast [83 x i8]* @gsxtminstruments_ext81 to i8*
%addytable2245 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2243, i32 0, i8* %var2244, i32 3, %clsvar* %addytable2242)
%var2246 = bitcast [4 x i8]* @gsxtminstruments_ext70 to i8*
%var2247 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2248 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2246, i32 8, i8* %var2247, i32 3, %clsvar* %addytable2245)
%var2249 = bitcast [5 x i8]* @gsxtminstruments_ext82 to i8*
%var2250 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2251 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2249, i32 16, i8* %var2250, i32 3, %clsvar* %addytable2248)
%var2252 = bitcast [10 x i8]* @gsxtminstruments_ext83 to i8*
%var2253 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2254 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2252, i32 24, i8* %var2253, i32 3, %clsvar* %addytable2251)
%var2255 = bitcast [8 x i8]* @gsxtminstruments_ext84 to i8*
%var2256 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2257 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2255, i32 32, i8* %var2256, i32 3, %clsvar* %addytable2254)
%var2258 = bitcast [4 x i8]* @gsxtminstruments_ext49 to i8*
%var2259 = bitcast [58 x i8]* @gsxtminstruments_ext85 to i8*
%addytable2260 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2258, i32 40, i8* %var2259, i32 3, %clsvar* %addytable2257)
%var2261 = bitcast [14 x i8]* @gsxtminstruments_ext86 to i8*
%var2262 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2263 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2261, i32 48, i8* %var2262, i32 3, %clsvar* %addytable2260)
%var2264 = bitcast [12 x i8]* @gsxtminstruments_ext87 to i8*
%var2265 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2266 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2264, i32 56, i8* %var2265, i32 3, %clsvar* %addytable2263)
%var2267 = bitcast [16 x i8]* @gsxtminstruments_ext88 to i8*
%var2268 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2269 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2267, i32 64, i8* %var2268, i32 3, %clsvar* %addytable2266)
%var2270 = bitcast [11 x i8]* @gsxtminstruments_ext89 to i8*
%var2271 = bitcast [6 x i8]* @gsxtminstruments_ext35 to i8*
%addytable2272 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2270, i32 72, i8* %var2271, i32 3, %clsvar* %addytable2269)
%var2273 = bitcast [7 x i8]* @gsxtminstruments_ext90 to i8*
%var2274 = bitcast [72 x i8]* @gsxtminstruments_ext37 to i8*
%addytable2275 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2273, i32 80, i8* %var2274, i32 3, %clsvar* %addytable2272)
%var2276 = bitcast [11 x i8]* @gsxtminstruments_ext91 to i8*
%var2277 = bitcast [157 x i8]* @gsxtminstruments_ext17 to i8*
%addytable2278 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2276, i32 88, i8* %var2277, i32 3, %clsvar* %addytable2275)
%var2279 = bitcast [15 x i8]* @gsxtminstruments_ext92 to i8*
%var2280 = bitcast [57 x i8]* @gsxtminstruments_ext64 to i8*
%addytable2281 = call %clsvar* @add_address_table(%mzone* %zone2237, i8* %var2279, i32 96, i8* %var2280, i32 3, %clsvar* %addytable2278)
%address-table2282 = bitcast %clsvar* %addytable2281 to i8*

; insert table, function and environment into closure struct
%closure.table2309 = getelementptr { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2239, i32 0, i32 0
store i8* %address-table2282, i8** %closure.table2309
%closure.env2310 = getelementptr { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2239, i32 0, i32 1
store i8* %envptr2240, i8** %closure.env2310
%closure.func2311 = getelementptr { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2239, i32 0, i32 2
store float (i8*, i8*, float, i64, i64, float*)* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ__2167, float (i8*, i8*, float, i64, i64, float*)** %closure.func2311
%closure_size2312 = call i64 @llvm_zone_mark_size(%mzone* %zone2237)
call void @llvm_zone_ptr_set_size(i8* %clsptr2238, i64 %closure_size2312)
%wrapper_ptr2313 = call i8* @llvm_zone_malloc(%mzone* %zone2237, i64 8)
%closure_wrapper2314 = bitcast i8* %wrapper_ptr2313 to { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
store { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2239, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %closure_wrapper2314

; let value assignment
%_anon_lambda_6 = select i1 true, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %closure_wrapper2314, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %closure_wrapper2314
store { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %_anon_lambda_6, { i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %_anon_lambda_6Ptr

; add data to environment
; don't need to alloc for env var sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ
%tmp_envptr2284 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr2284

; don't need to alloc for env var out
%tmp_envptr2286 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 1
store float* %outPtr, float** %tmp_envptr2286

; don't need to alloc for env var gain
%tmp_envptr2288 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 2
store float* %gainPtr, float** %tmp_envptr2288

; don't need to alloc for env var pan_width
%tmp_envptr2290 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 3
store float* %pan_widthPtr, float** %tmp_envptr2290

; don't need to alloc for env var pan_pos
%tmp_envptr2292 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 4
store float* %pan_posPtr, float** %tmp_envptr2292

; don't need to alloc for env var pan
%tmp_envptr2294 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 5
store {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}*** %panPtr, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}**** %tmp_envptr2294

; don't need to alloc for env var reverb_absorb
%tmp_envptr2296 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 6
store float* %reverb_absorbPtr, float** %tmp_envptr2296

; don't need to alloc for env var reverb_size
%tmp_envptr2298 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 7
store float* %reverb_sizePtr, float** %tmp_envptr2298

; don't need to alloc for env var reverb_predelay
%tmp_envptr2300 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 8
store float* %reverb_predelayPtr, float** %tmp_envptr2300

; don't need to alloc for env var reverb_mix
%tmp_envptr2302 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 9
store float* %reverb_mixPtr, float** %tmp_envptr2302

; don't need to alloc for env var reverb
%tmp_envptr2304 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 10
store {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}*** %reverbPtr, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}**** %tmp_envptr2304

; don't need to alloc for env var notekernel
%tmp_envptr2306 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 11
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}*** %notekernelPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}**** %tmp_envptr2306

; don't need to alloc for env var _anon_lambda_6
%tmp_envptr2308 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float)*}***, float*, float*, float*, float*, {i8*, i8*, float (i8*, i8*, i64, float, float, float, float, float)*}***, {i8*, i8*, {i8*, i8*, float (i8*, i8*, i64, i64)*}** (i8*, i8*, %NoteData*, [128 x float*]*, [128 x i64]*, [128 x i64]*, [128 x i64]*, i64, i64, float*)*}***, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}***}* %environment2241, i32 0, i32 12
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %_anon_lambda_6Ptr, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**** %tmp_envptr2308


%val2317 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %_anon_lambda_6Ptr
ret {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val2317
}
define dllexport ccc {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone2337 = load i8*, i8** %_impzPtr
%zone2338 = bitcast i8* %tzone2337 to %mzone*

; let assign value to symbol sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ
%dat_sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ = call i8* @llvm_zone_malloc(%mzone* %zone2338, i64 8)
%sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr = bitcast i8* %dat_sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ to { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***
%tzone2318 = load i8*, i8** %_impzPtr
%zone2319 = bitcast i8* %tzone2318 to %mzone*
call void @llvm_zone_mark(%mzone* %zone2319)
; malloc closure structure
%clsptr2320 = call i8* @llvm_zone_malloc(%mzone* %zone2319, i64 24)
%closure2321 = bitcast i8* %clsptr2320 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*

; malloc environment structure
%envptr2322 = call i8* @llvm_zone_malloc(%mzone* %zone2319, i64 8)
%environment2323 = bitcast i8* %envptr2322 to {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***}*

; malloc closure address table
%addytable2324 = call %clsvar* @new_address_table()
%var2325 = bitcast [60 x i8]* @gsxtminstruments_ext80 to i8*
%var2326 = bitcast [83 x i8]* @gsxtminstruments_ext81 to i8*
%addytable2327 = call %clsvar* @add_address_table(%mzone* %zone2319, i8* %var2325, i32 0, i8* %var2326, i32 3, %clsvar* %addytable2324)
%address-table2328 = bitcast %clsvar* %addytable2327 to i8*

; insert table, function and environment into closure struct
%closure.table2331 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure2321, i32 0, i32 0
store i8* %address-table2328, i8** %closure.table2331
%closure.env2332 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure2321, i32 0, i32 1
store i8* %envptr2322, i8** %closure.env2332
%closure.func2333 = getelementptr { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure2321, i32 0, i32 2
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ__2166, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)** %closure.func2333
%closure_size2334 = call i64 @llvm_zone_mark_size(%mzone* %zone2319)
call void @llvm_zone_ptr_set_size(i8* %clsptr2320, i64 %closure_size2334)
%wrapper_ptr2335 = call i8* @llvm_zone_malloc(%mzone* %zone2319, i64 8)
%closure_wrapper2336 = bitcast i8* %wrapper_ptr2335 to { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure2321, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper2336

; let value assignment
%sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ = select i1 true, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper2336, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_wrapper2336
store { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ, { i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr

; add data to environment
; don't need to alloc for env var sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ
%tmp_envptr2330 = getelementptr {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***}, {{i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}***}* %environment2323, i32 0, i32 0
store {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**** %tmp_envptr2330


%val2339 = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*** %sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQPtr
ret {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %val2339
}


@sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var = dllexport global [1 x i8*] [ i8* null ]

@sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ() alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
ret {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %result
}


define dllexport ccc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_native() alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
ret {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %result
}


define dllexport ccc i8*  @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
%tmpres = bitcast {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %result to i8*
%res = call ccc i8* @mk_cptr(i8* %_sc, i8* %tmpres)
ret i8* %res
}


define dllexport ccc void @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = select i1 true, i8* %dat, i8* %dat
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @sampler_fx_adhoc_W1tmbG9hdCxmbG9hdCxpNjQsaTY0LGZsb2F0Kl0qXQ_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}**
%closure = load {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}*, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}, {i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*}* %closure, i32 0, i32 1
%ff = load  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)*,  {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** (i8*, i8*)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %ff(i8* %_impz, i8* %ee)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


@gsxtminstruments_ext93 = hidden constant [106 x i8] c"set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0\00"
@gsxtminstruments_ext94 = hidden constant [113 x i8] c"{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**\00"
define dllexport fastcc i64 @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0__2340(i8* %_impz,i8* %_impenv, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, %AudioBuffer* %buf, i64 %index, i32 %bank) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%zone2341 = bitcast i8* %_impz to %mzone*
; setup environment
%impenv = bitcast i8* %_impenv to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***}*
%set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr_ = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***}* %impenv, i32 0, i32 0
%set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**** %set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr_

; setup arguments
%instPtr = alloca {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
store {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %inst, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%bufPtr = alloca %AudioBuffer*
store %AudioBuffer* %buf, %AudioBuffer** %bufPtr
%indexPtr = alloca i64
store i64 %index, i64* %indexPtr
%bankPtr = alloca i32
store i32 %bank, i32* %bankPtr


%tzone2344 = load i8*, i8** %_impzPtr
%zone2345 = bitcast i8* %tzone2344 to %mzone*

; let assign value to symbol channels
%channelsPtr = alloca i64
%tzone2348 = load i8*, i8** %_impzPtr
%zone2349 = bitcast i8* %tzone2348 to %mzone*

; let assign value to symbol num
%numPtr = alloca i64
%tzone2352 = load i8*, i8** %_impzPtr
%zone2353 = bitcast i8* %tzone2352 to %mzone*

; let assign value to symbol adat
%adatPtr = alloca float*
%tzone2372 = load i8*, i8** %_impzPtr
%zone2373 = bitcast i8* %tzone2372 to %mzone*

; let assign value to symbol offsets
%offsetsPtr = alloca [20 x [128 x i64]]*
%tzone2392 = load i8*, i8** %_impzPtr
%zone2393 = bitcast i8* %tzone2392 to %mzone*

; let assign value to symbol samples
%samplesPtr = alloca [20 x [128 x float*]]*
%tzone2412 = load i8*, i8** %_impzPtr
%zone2413 = bitcast i8* %tzone2412 to %mzone*

; let assign value to symbol samples_channels
%samples_channelsPtr = alloca [20 x [128 x i64]]*
%tzone2432 = load i8*, i8** %_impzPtr
%zone2433 = bitcast i8* %tzone2432 to %mzone*

; let assign value to symbol samples_length
%samples_lengthPtr = alloca [20 x [128 x i64]]*
%val2342 = load %AudioBuffer*, %AudioBuffer** %bufPtr
%res2343 = call ccc i64 @AudioBuffer_channels(%AudioBuffer* %val2342)

; let value assignment
%channels = select i1 true, i64 %res2343, i64 %res2343
store i64 %channels, i64* %channelsPtr

%val2346 = load %AudioBuffer*, %AudioBuffer** %bufPtr
%res2347 = call ccc i64 @AudioBuffer_frames(%AudioBuffer* %val2346)

; let value assignment
%num = select i1 true, i64 %res2347, i64 %res2347
store i64 %num, i64* %numPtr

%val2350 = load %AudioBuffer*, %AudioBuffer** %bufPtr
%res2351 = call ccc float* @AudioBuffer_ptr(%AudioBuffer* %val2350, i64 0, i64 0)

; let value assignment
%adat = select i1 true, float* %res2351, float* %res2351
store float* %adat, float** %adatPtr


; closure ref 
%val2355 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var2356 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure2357 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val2355
%tablePtr2358 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2357, i32 0, i32 0
%tmp2359 = bitcast i8** %tablePtr2358 to %clsvar**
%table2360 = load %clsvar*, %clsvar** %tmp2359
%ePtr2361 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2357, i32 0, i32 1
%e2362 = load i8*, i8** %ePtr2361
%offset2363 = call i32 @get_address_offset(i64 -1817689141582913970, %clsvar* %table2360)
%valPtr2364 = getelementptr i8, i8* %e2362, i32 %offset2363
%val2365 = bitcast i8* %valPtr2364 to i8**
%val2366 = load i8*, i8** %val2365
%val2367 = bitcast i8* %val2366 to [20 x [128 x i64]]**
%check2368 = call i1 @check_address_type(i64 -1817689141582913970, %clsvar* %table2360, i8* %var2356)
br i1 %check2368, label %then2354, label %else2354

then2354:
%then_result2369 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val2367
br label %cont2354

else2354:
%else_result2370 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val2367
br label %cont2354

cont2354:
%result2371 = phi [20 x [128 x i64]]* [ %then_result2369, %then2354 ],  [ %else_result2370, %else2354 ]

; let value assignment
%offsets = select i1 true, [20 x [128 x i64]]* %result2371, [20 x [128 x i64]]* %result2371
store [20 x [128 x i64]]* %offsets, [20 x [128 x i64]]** %offsetsPtr


; closure ref 
%val2375 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var2376 = bitcast [23 x i8]* @gsxtminstruments_ext0 to i8*
%closure2377 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val2375
%tablePtr2378 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2377, i32 0, i32 0
%tmp2379 = bitcast i8** %tablePtr2378 to %clsvar**
%table2380 = load %clsvar*, %clsvar** %tmp2379
%ePtr2381 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2377, i32 0, i32 1
%e2382 = load i8*, i8** %ePtr2381
%offset2383 = call i32 @get_address_offset(i64 152448360949, %clsvar* %table2380)
%valPtr2384 = getelementptr i8, i8* %e2382, i32 %offset2383
%val2385 = bitcast i8* %valPtr2384 to i8**
%val2386 = load i8*, i8** %val2385
%val2387 = bitcast i8* %val2386 to [20 x [128 x float*]]**
%check2388 = call i1 @check_address_type(i64 152448360949, %clsvar* %table2380, i8* %var2376)
br i1 %check2388, label %then2374, label %else2374

then2374:
%then_result2389 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %val2387
br label %cont2374

else2374:
%else_result2390 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %val2387
br label %cont2374

cont2374:
%result2391 = phi [20 x [128 x float*]]* [ %then_result2389, %then2374 ],  [ %else_result2390, %else2374 ]

; let value assignment
%samples = select i1 true, [20 x [128 x float*]]* %result2391, [20 x [128 x float*]]* %result2391
store [20 x [128 x float*]]* %samples, [20 x [128 x float*]]** %samplesPtr


; closure ref 
%val2395 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var2396 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure2397 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val2395
%tablePtr2398 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2397, i32 0, i32 0
%tmp2399 = bitcast i8** %tablePtr2398 to %clsvar**
%table2400 = load %clsvar*, %clsvar** %tmp2399
%ePtr2401 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2397, i32 0, i32 1
%e2402 = load i8*, i8** %ePtr2401
%offset2403 = call i32 @get_address_offset(i64 -4643509960147185536, %clsvar* %table2400)
%valPtr2404 = getelementptr i8, i8* %e2402, i32 %offset2403
%val2405 = bitcast i8* %valPtr2404 to i8**
%val2406 = load i8*, i8** %val2405
%val2407 = bitcast i8* %val2406 to [20 x [128 x i64]]**
%check2408 = call i1 @check_address_type(i64 -4643509960147185536, %clsvar* %table2400, i8* %var2396)
br i1 %check2408, label %then2394, label %else2394

then2394:
%then_result2409 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val2407
br label %cont2394

else2394:
%else_result2410 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val2407
br label %cont2394

cont2394:
%result2411 = phi [20 x [128 x i64]]* [ %then_result2409, %then2394 ],  [ %else_result2410, %else2394 ]

; let value assignment
%samples_channels = select i1 true, [20 x [128 x i64]]* %result2411, [20 x [128 x i64]]* %result2411
store [20 x [128 x i64]]* %samples_channels, [20 x [128 x i64]]** %samples_channelsPtr


; closure ref 
%val2415 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %instPtr
%var2416 = bitcast [20 x i8]* @gsxtminstruments_ext1 to i8*
%closure2417 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %val2415
%tablePtr2418 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2417, i32 0, i32 0
%tmp2419 = bitcast i8** %tablePtr2418 to %clsvar**
%table2420 = load %clsvar*, %clsvar** %tmp2419
%ePtr2421 = getelementptr {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}* %closure2417, i32 0, i32 1
%e2422 = load i8*, i8** %ePtr2421
%offset2423 = call i32 @get_address_offset(i64 3857864223347863030, %clsvar* %table2420)
%valPtr2424 = getelementptr i8, i8* %e2422, i32 %offset2423
%val2425 = bitcast i8* %valPtr2424 to i8**
%val2426 = load i8*, i8** %val2425
%val2427 = bitcast i8* %val2426 to [20 x [128 x i64]]**
%check2428 = call i1 @check_address_type(i64 3857864223347863030, %clsvar* %table2420, i8* %var2416)
br i1 %check2428, label %then2414, label %else2414

then2414:
%then_result2429 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val2427
br label %cont2414

else2414:
%else_result2430 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %val2427
br label %cont2414

cont2414:
%result2431 = phi [20 x [128 x i64]]* [ %then_result2429, %then2414 ],  [ %else_result2430, %else2414 ]

; let value assignment
%samples_length = select i1 true, [20 x [128 x i64]]* %result2431, [20 x [128 x i64]]* %result2431
store [20 x [128 x i64]]* %samples_length, [20 x [128 x i64]]** %samples_lengthPtr

%val2434 = load i64, i64* %indexPtr
%val2435 = load i32, i32* %bankPtr
%val2436 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_channelsPtr
; array ref
%val2437 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val2436, i32 0, i32 %val2435
%val2438 = load i64, i64* %channelsPtr
%val2439 = bitcast i64 %val2438 to i64
; set array
%val2440 = getelementptr [128 x i64], [128 x i64]* %val2437, i32 0, i64 %val2434
store i64 %val2439, i64* %val2440
%val2441 = load i64, i64* %indexPtr
%val2442 = load i32, i32* %bankPtr
%val2443 = load [20 x [128 x float*]]*, [20 x [128 x float*]]** %samplesPtr
; array ref
%val2444 = getelementptr [20 x [128 x float*]], [20 x [128 x float*]]* %val2443, i32 0, i32 %val2442
%val2445 = load float*, float** %adatPtr
; set array
%val2446 = getelementptr [128 x float*], [128 x float*]* %val2444, i32 0, i64 %val2441
store float* %val2445, float** %val2446
%val2447 = load i64, i64* %indexPtr
%val2448 = load i32, i32* %bankPtr
%val2449 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %offsetsPtr
; array ref
%val2450 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val2449, i32 0, i32 %val2448
%val2451 = load %AudioBuffer*, %AudioBuffer** %bufPtr
%res2452 = call ccc i64 @AudioBuffer_loop_start(%AudioBuffer* %val2451)
; set array
%val2453 = getelementptr [128 x i64], [128 x i64]* %val2450, i32 0, i64 %val2447
store i64 %res2452, i64* %val2453
%val2454 = load i64, i64* %indexPtr
%val2455 = load i32, i32* %bankPtr
%val2456 = load [20 x [128 x i64]]*, [20 x [128 x i64]]** %samples_lengthPtr
; array ref
%val2457 = getelementptr [20 x [128 x i64]], [20 x [128 x i64]]* %val2456, i32 0, i32 %val2455
%val2458 = load i64, i64* %numPtr
; set array
%val2459 = getelementptr [128 x i64], [128 x i64]* %val2457, i32 0, i64 %val2454
store i64 %val2458, i64* %val2459
ret i64 1
}
@gsxtminstruments_ext95 = hidden constant [159 x i8] c"set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0 Scheme wrapper error: check the arg arity and types
\00"
define dllexport ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_maker(i8* %_impz) nounwind {
entry:
%_impzPtr = alloca i8*
store i8* %_impz, i8** %_impzPtr
%tzone2479 = load i8*, i8** %_impzPtr
%zone2480 = bitcast i8* %tzone2479 to %mzone*

; let assign value to symbol set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0
%dat_set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0 = call i8* @llvm_zone_malloc(%mzone* %zone2480, i64 8)
%set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr = bitcast i8* %dat_set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***
%tzone2460 = load i8*, i8** %_impzPtr
%zone2461 = bitcast i8* %tzone2460 to %mzone*
call void @llvm_zone_mark(%mzone* %zone2461)
; malloc closure structure
%clsptr2462 = call i8* @llvm_zone_malloc(%mzone* %zone2461, i64 24)
%closure2463 = bitcast i8* %clsptr2462 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*

; malloc environment structure
%envptr2464 = call i8* @llvm_zone_malloc(%mzone* %zone2461, i64 8)
%environment2465 = bitcast i8* %envptr2464 to {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***}*

; malloc closure address table
%addytable2466 = call %clsvar* @new_address_table()
%var2467 = bitcast [106 x i8]* @gsxtminstruments_ext93 to i8*
%var2468 = bitcast [113 x i8]* @gsxtminstruments_ext94 to i8*
%addytable2469 = call %clsvar* @add_address_table(%mzone* %zone2461, i8* %var2467, i32 0, i8* %var2468, i32 3, %clsvar* %addytable2466)
%address-table2470 = bitcast %clsvar* %addytable2469 to i8*

; insert table, function and environment into closure struct
%closure.table2473 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure2463, i32 0, i32 0
store i8* %address-table2470, i8** %closure.table2473
%closure.env2474 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure2463, i32 0, i32 1
store i8* %envptr2464, i8** %closure.env2474
%closure.func2475 = getelementptr { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure2463, i32 0, i32 2
store i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0__2340, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)** %closure.func2475
%closure_size2476 = call i64 @llvm_zone_mark_size(%mzone* %zone2461)
call void @llvm_zone_ptr_set_size(i8* %clsptr2462, i64 %closure_size2476)
%wrapper_ptr2477 = call i8* @llvm_zone_malloc(%mzone* %zone2461, i64 8)
%closure_wrapper2478 = bitcast i8* %wrapper_ptr2477 to { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure2463, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_wrapper2478

; let value assignment
%set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0 = select i1 true, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_wrapper2478, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_wrapper2478
store { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0, { i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*** %set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr

; add data to environment
; don't need to alloc for env var set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0
%tmp_envptr2472 = getelementptr {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***}, {{i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}***}* %environment2465, i32 0, i32 0
store {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*** %set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**** %tmp_envptr2472


%val2481 = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*** %set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0Ptr
ret {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %val2481
}


@set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var = dllexport global [1 x i8*] [ i8* null ]

@set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var_zone = dllexport global [1 x i8*] [ i8* null ]

define dllexport ccc void @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_setter() alwaysinline nounwind {
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%oldzone1 = getelementptr [1 x i8*], [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var_zone, i32 0, i32 0
%oldzone2 = load i8*, i8** %oldzone1
%oldzone3 = bitcast i8* %oldzone2 to %mzone*
store i8* %_impz, i8** %oldzone1
%closure = call ccc {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_maker(i8* %_impz)
%ptr = bitcast {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure to i8*
%varptr = bitcast [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var to i8**
store i8* %ptr, i8** %varptr
; destroy oldzone if not null
%test = icmp ne %mzone* %oldzone3, null
br i1 %test, label %then, label %cont
then:
call ccc void @llvm_destroy_zone_after_delay(%mzone* %oldzone3, i64 441000)
br label %cont
cont:
ret void
}


define dllexport ccc i8* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_getter() alwaysinline nounwind {
entry:
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var, i32 0, i32 0
%func = load i8*, i8** %ptr
ret i8* %func
}


define dllexport fastcc i64 @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,%AudioBuffer* %arg_1,i64 %arg_2,i32 %arg_3) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, %AudioBuffer* %arg_1, i64 %arg_2, i32 %arg_3)
ret i64 %result
}


define dllexport ccc i64 @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_native({i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0,%AudioBuffer* %arg_1,i64 %arg_2,i32 %arg_3) alwaysinline nounwind 
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, %AudioBuffer* %arg_1, i64 %arg_2, i32 %arg_3)
ret i64 %result
}


define dllexport ccc i8*  @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_scheme(i8* %_sc, i8* %args) nounwind
{
entry:
%_zone = call ccc %mzone* @llvm_peek_zone_stack()
%_impz = bitcast %mzone* %_zone to i8*
%arg_0_val = call ccc i8* @list_ref(i8* %_sc, i32 0,i8* %args)
%arg_0_rt_check = call i32 @is_cptr(i8* %arg_0_val)
%arg_0_bool = icmp ne i32 %arg_0_rt_check, 0
br i1 %arg_0_bool, label %arg_0_true, label %arg_0_false

arg_0_true:
br label %arg_0_continue

arg_0_false:
%var2482 = bitcast [159 x i8]* @gsxtminstruments_ext95 to i8*
call i32 (i8*, ...) @printf(i8* %var2482)
%arg_0_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_0_errret

arg_0_continue:
%ttv_0 = call ccc i8* @cptr_value(i8* %arg_0_val)
%arg_0 = bitcast i8* %ttv_0 to {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**
%arg_1_val = call ccc i8* @list_ref(i8* %_sc, i32 1,i8* %args)
%arg_1_rt_check = call i32 @is_cptr(i8* %arg_1_val)
%arg_1_bool = icmp ne i32 %arg_1_rt_check, 0
br i1 %arg_1_bool, label %arg_1_true, label %arg_1_false

arg_1_true:
br label %arg_1_continue

arg_1_false:
%var2483 = bitcast [159 x i8]* @gsxtminstruments_ext95 to i8*
call i32 (i8*, ...) @printf(i8* %var2483)
%arg_1_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_1_errret

arg_1_continue:
%ttv_1 = call ccc i8* @cptr_value(i8* %arg_1_val)
%arg_1 = bitcast i8* %ttv_1 to %AudioBuffer*
%arg_2_val = call ccc i8* @list_ref(i8* %_sc, i32 2,i8* %args)
%arg_2_rt_check = call i32 @is_integer(i8* %arg_2_val)
%arg_2_bool = icmp ne i32 %arg_2_rt_check, 0
br i1 %arg_2_bool, label %arg_2_true, label %arg_2_false

arg_2_true:
br label %arg_2_continue

arg_2_false:
%var2484 = bitcast [159 x i8]* @gsxtminstruments_ext95 to i8*
call i32 (i8*, ...) @printf(i8* %var2484)
%arg_2_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_2_errret

arg_2_continue:
%arg_2 = call ccc i64  @i64value(i8* %arg_2_val)
%arg_3_val = call ccc i8* @list_ref(i8* %_sc, i32 3,i8* %args)
%arg_3_rt_check = call i32 @is_integer(i8* %arg_3_val)
%arg_3_bool = icmp ne i32 %arg_3_rt_check, 0
br i1 %arg_3_bool, label %arg_3_true, label %arg_3_false

arg_3_true:
br label %arg_3_continue

arg_3_false:
%var2485 = bitcast [159 x i8]* @gsxtminstruments_ext95 to i8*
call i32 (i8*, ...) @printf(i8* %var2485)
%arg_3_errret = call ccc i8* @mk_i64(i8* %_sc, i64 0)
ret i8* %arg_3_errret

arg_3_continue:
%arg_3 = call ccc i32  @i32value(i8* %arg_3_val)
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, %AudioBuffer* %arg_1, i64 %arg_2, i32 %arg_3)
%res = call ccc i8* @mk_i64(i8* %_sc, i64 %result)
ret i8* %res
}


define dllexport ccc void @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_callback(i8* %dat, %mzone* %inzone) alwaysinline nounwind {
entry:
%fstruct = bitcast i8* %dat to {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}*
%arg_p_0 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}* %fstruct, i32 0, i32 0
%arg_0 = load {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}*** %arg_p_0
%arg_p_1 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}* %fstruct, i32 0, i32 1
%arg_1 = load %AudioBuffer*, %AudioBuffer** %arg_p_1
%arg_p_2 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}* %fstruct, i32 0, i32 2
%arg_2 = load i64, i64* %arg_p_2
%arg_p_3 = getelementptr {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}, {{i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32}* %fstruct, i32 0, i32 3
%arg_3 = load i32, i32* %arg_p_3
call ccc void @llvm_push_zone_stack(%mzone* %inzone)
%_impz = bitcast %mzone* %inzone to i8*
%ptr = getelementptr [1 x i8*], [1 x i8*]* @set_sampler_audiobuffer_adhoc_W2k2NCxbZmxvYXQsZmxvYXQsaTY0LGk2NCxmbG9hdCpdKixBdWRpb0J1ZmZlciosaTY0LGkzMl0_var, i32 0, i32 0
%ptrvar = load i8*, i8** %ptr
%closure_tmp = bitcast i8* %ptrvar to {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}**
%closure = load {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}*, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}** %closure_tmp 
%fPtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 2
%ePtr = getelementptr {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}, {i8*, i8*, i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*}* %closure, i32 0, i32 1
%ff = load  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)*,  i64 (i8*, i8*, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}**, %AudioBuffer*, i64, i32)** %fPtr
%ee = load i8*, i8** %ePtr
%result = call fastcc i64 %ff(i8* %_impz, i8* %ee, {i8*, i8*, float (i8*, i8*, float, i64, i64, float*)*}** %arg_0, %AudioBuffer* %arg_1, i64 %arg_2, i32 %arg_3)
%_nowoldzone = call ccc %mzone* @llvm_pop_zone_stack()
call ccc void @llvm_zone_destroy(%mzone* %_nowoldzone)
ret void
}


