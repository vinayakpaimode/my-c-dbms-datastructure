; ModuleID = '/storage/emulated/0/my c programming/try/accetstring.c.bc'
source_filename = "/storage/emulated/0/my c programming/try/accetstring.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-linux-android"

@.str = private unnamed_addr constant [13 x i8] c"any enter %d\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1 ; [#uses=1 type=[3 x i8]*]
@a = common global [10 x [10 x i8]] zeroinitializer, align 1 ; [#uses=2 type=[10 x [10 x i8]]*]
@main.str2 = private unnamed_addr constant [16 x i8] c"vinayak paimode\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str.3 = private unnamed_addr constant [39 x i8] c" hwelll\0Ahow many number you enter     \00", align 1 ; [#uses=1 type=[39 x i8]*]
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1 ; [#uses=1 type=[3 x i8]*]
@str = private unnamed_addr constant [20 x i8] c"Enter data        :\00" ; [#uses=1 type=[20 x i8]*]

; [#uses=1]
; Function Attrs: nounwind optsize
define void @accept(i32) local_unnamed_addr #0 {
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = bitcast i32* %2 to i8*                     ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* nonnull %2) #4 ; [#uses=0 type=i32]
  %5 = icmp sgt i32 %0, 0                         ; [#uses=1 type=i1]
  br i1 %5, label %6, label %14

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i32 [ %12, %7 ], [ 0, %6 ]             ; [#uses=2 type=i32]
  %9 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @str, i32 0, i32 0)) ; [#uses=0 type=i32]
  %10 = getelementptr inbounds [10 x [10 x i8]], [10 x [10 x i8]]* @a, i32 0, i32 %8, i32 0 ; [#uses=1 type=i8*]
  %11 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* nonnull %10) #4 ; [#uses=0 type=i32]
  %12 = add nuw nsw i32 %8, 1                     ; [#uses=2 type=i32]
  %13 = icmp eq i32 %12, %0                       ; [#uses=1 type=i1]
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  ret void
}

; [#uses=3]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; [#uses=3]
; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

; [#uses=2]
; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; [#uses=3]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; [#uses=0]
; Function Attrs: nounwind optsize
define i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %2 = alloca [16 x i8], align 1                  ; [#uses=1 type=[16 x i8]*]
  %3 = bitcast i32* %1 to i8*                     ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0 ; [#uses=4 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @main.str2, i32 0, i32 0), i32 16, i32 1, i1 false)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* nonnull %4) #4 ; [#uses=0 type=i32]
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0)) #4 ; [#uses=0 type=i32]
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* nonnull %1) #4 ; [#uses=0 type=i32]
  %8 = load i32, i32* %1, align 4, !tbaa !4       ; [#uses=1 type=i32]
  call void @accept(i32 %8) #4
  %9 = load i32, i32* %1, align 4, !tbaa !4       ; [#uses=1 type=i32]
  %10 = icmp sgt i32 %9, 0                        ; [#uses=1 type=i1]
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %0
  br label %12

; <label>:12:                                     ; preds = %11, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %11 ]          ; [#uses=2 type=i32]
  %14 = getelementptr inbounds [10 x [10 x i8]], [10 x [10 x i8]]* @a, i32 0, i32 %13, i32 0 ; [#uses=1 type=i8*]
  %15 = call i32 @puts(i8* nonnull %14)           ; [#uses=0 type=i32]
  %16 = add nuw nsw i32 %13, 1                    ; [#uses=2 type=i32]
  %17 = load i32, i32* %1, align 4, !tbaa !4      ; [#uses=1 type=i32]
  %18 = icmp slt i32 %16, %17                     ; [#uses=1 type=i1]
  br i1 %18, label %12, label %19

; <label>:19:                                     ; preds = %12, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  ret i32 0
}

; [#uses=1]
; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; [#uses=2]
; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

attributes #0 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 1}
!3 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
