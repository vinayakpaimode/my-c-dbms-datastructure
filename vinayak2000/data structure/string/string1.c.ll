; ModuleID = '/storage/emulated/0/my c programming/string/string1.c.bc'
source_filename = "/storage/emulated/0/my c programming/string/string1.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-linux-android"

@.str = private unnamed_addr constant [26 x i8] c"how many strint you enter\00", align 1 ; [#uses=1 type=[26 x i8]*]
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1 ; [#uses=1 type=[3 x i8]*]
@str = private unnamed_addr constant [16 x i8] c"\0A enter string \00" ; [#uses=1 type=[16 x i8]*]

; [#uses=0]
; Function Attrs: nounwind optsize
define i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %2 = alloca [5 x [10 x i8]], align 1            ; [#uses=3 type=[5 x [10 x i8]]*]
  %3 = bitcast i32* %1 to i8*                     ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  %4 = getelementptr inbounds [5 x [10 x i8]], [5 x [10 x i8]]* %2, i32 0, i32 0, i32 0 ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %4) #3
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #4 ; [#uses=0 type=i32]
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* nonnull %1) #4 ; [#uses=0 type=i32]
  %7 = load i32, i32* %1, align 4, !tbaa !4       ; [#uses=1 type=i32]
  %8 = icmp sgt i32 %7, 0                         ; [#uses=1 type=i1]
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %0
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi i32 [ %15, %10 ], [ 0, %9 ]           ; [#uses=2 type=i32]
  %12 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str, i32 0, i32 0)) ; [#uses=0 type=i32]
  %13 = getelementptr inbounds [5 x [10 x i8]], [5 x [10 x i8]]* %2, i32 0, i32 %11, i32 0 ; [#uses=1 type=i8*]
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* nonnull %13) #4 ; [#uses=0 type=i32]
  %15 = add nuw nsw i32 %11, 1                    ; [#uses=2 type=i32]
  %16 = load i32, i32* %1, align 4, !tbaa !4      ; [#uses=2 type=i32]
  %17 = icmp slt i32 %15, %16                     ; [#uses=1 type=i1]
  br i1 %17, label %10, label %18

; <label>:18:                                     ; preds = %10
  %19 = icmp sgt i32 %16, 0                       ; [#uses=1 type=i1]
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %18
  br label %21

; <label>:21:                                     ; preds = %20, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %20 ]          ; [#uses=2 type=i32]
  %23 = getelementptr inbounds [5 x [10 x i8]], [5 x [10 x i8]]* %2, i32 0, i32 %22, i32 0 ; [#uses=1 type=i8*]
  %24 = call i32 @puts(i8* nonnull %23)           ; [#uses=0 type=i32]
  %25 = add nuw nsw i32 %22, 1                    ; [#uses=2 type=i32]
  %26 = load i32, i32* %1, align 4, !tbaa !4      ; [#uses=1 type=i32]
  %27 = icmp slt i32 %25, %26                     ; [#uses=1 type=i1]
  br i1 %27, label %21, label %28

; <label>:28:                                     ; preds = %21, %0, %18
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  ret i32 0
}

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; [#uses=1]
; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; [#uses=2]
; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

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
