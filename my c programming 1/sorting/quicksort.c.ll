; ModuleID = '/storage/emulated/0/my c programming/sorting/quicksort.c.bc'
source_filename = "/storage/emulated/0/my c programming/sorting/quicksort.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-linux-android"

@.str = private unnamed_addr constant [16 x i8] c"partition = %d\0A\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str.1 = private unnamed_addr constant [13 x i8] c"enter A[%d]\0A\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str.3 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1 ; [#uses=1 type=[5 x i8]*]
@str = private unnamed_addr constant [33 x i8] c"\0Ahow many number you want -->>  \00" ; [#uses=1 type=[33 x i8]*]
@str.7 = private unnamed_addr constant [19 x i8] c"\0ABefore Quicksort \00" ; [#uses=1 type=[19 x i8]*]
@str.8 = private unnamed_addr constant [18 x i8] c"\0AAfter Quicksort \00" ; [#uses=1 type=[18 x i8]*]

; [#uses=0]
; Function Attrs: norecurse nounwind optsize
define i32 @partition(i32* nocapture, i32, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i32, i32* %0, i32 %1 ; [#uses=2 type=i32*]
  %5 = load i32, i32* %4, align 4, !tbaa !4       ; [#uses=3 type=i32]
  %6 = add nsw i32 %1, 1                          ; [#uses=1 type=i32]
  br label %7

; <label>:7:                                      ; preds = %27, %3
  %8 = phi i32 [ %2, %3 ], [ %19, %27 ]           ; [#uses=1 type=i32]
  %9 = phi i32 [ %6, %3 ], [ %11, %27 ]           ; [#uses=1 type=i32]
  br label %10

; <label>:10:                                     ; preds = %10, %7
  %11 = phi i32 [ %9, %7 ], [ %15, %10 ]          ; [#uses=5 type=i32]
  %12 = getelementptr inbounds i32, i32* %0, i32 %11 ; [#uses=1 type=i32*]
  %13 = load i32, i32* %12, align 4, !tbaa !4     ; [#uses=2 type=i32]
  %14 = icmp sgt i32 %13, %5                      ; [#uses=1 type=i1]
  %15 = add nsw i32 %11, 1                        ; [#uses=1 type=i32]
  br i1 %14, label %16, label %10

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i32, i32* %0, i32 %11 ; [#uses=1 type=i32*]
  br label %18

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i32 [ %8, %16 ], [ %23, %18 ]         ; [#uses=6 type=i32]
  %20 = getelementptr inbounds i32, i32* %0, i32 %19 ; [#uses=1 type=i32*]
  %21 = load i32, i32* %20, align 4, !tbaa !4     ; [#uses=3 type=i32]
  %22 = icmp sgt i32 %21, %5                      ; [#uses=1 type=i1]
  %23 = add nsw i32 %19, -1                       ; [#uses=1 type=i32]
  br i1 %22, label %18, label %24

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds i32, i32* %0, i32 %19 ; [#uses=2 type=i32*]
  %26 = icmp slt i32 %11, %19                     ; [#uses=1 type=i1]
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  store i32 %21, i32* %17, align 4, !tbaa !4
  store i32 %13, i32* %25, align 4, !tbaa !4
  br label %7

; <label>:28:                                     ; preds = %24
  store i32 %21, i32* %4, align 4, !tbaa !4
  store i32 %5, i32* %25, align 4, !tbaa !4
  ret i32 %19
}

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; [#uses=2]
; Function Attrs: nounwind optsize
define void @Quicksort(i32*, i32, i32) local_unnamed_addr #2 {
  %4 = icmp slt i32 %1, %2                        ; [#uses=1 type=i1]
  br i1 %4, label %5, label %36

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %32
  %7 = phi i32 [ %34, %32 ], [ %1, %5 ]           ; [#uses=3 type=i32]
  %8 = getelementptr inbounds i32, i32* %0, i32 %7 ; [#uses=2 type=i32*]
  %9 = load i32, i32* %8, align 4, !tbaa !4       ; [#uses=3 type=i32]
  %10 = add nsw i32 %7, 1                         ; [#uses=1 type=i32]
  br label %11

; <label>:11:                                     ; preds = %31, %6
  %12 = phi i32 [ %2, %6 ], [ %23, %31 ]          ; [#uses=1 type=i32]
  %13 = phi i32 [ %10, %6 ], [ %15, %31 ]         ; [#uses=1 type=i32]
  br label %14

; <label>:14:                                     ; preds = %14, %11
  %15 = phi i32 [ %13, %11 ], [ %19, %14 ]        ; [#uses=5 type=i32]
  %16 = getelementptr inbounds i32, i32* %0, i32 %15 ; [#uses=1 type=i32*]
  %17 = load i32, i32* %16, align 4, !tbaa !4     ; [#uses=2 type=i32]
  %18 = icmp sgt i32 %17, %9                      ; [#uses=1 type=i1]
  %19 = add nsw i32 %15, 1                        ; [#uses=1 type=i32]
  br i1 %18, label %20, label %14

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds i32, i32* %0, i32 %15 ; [#uses=1 type=i32*]
  br label %22

; <label>:22:                                     ; preds = %22, %20
  %23 = phi i32 [ %12, %20 ], [ %27, %22 ]        ; [#uses=7 type=i32]
  %24 = getelementptr inbounds i32, i32* %0, i32 %23 ; [#uses=1 type=i32*]
  %25 = load i32, i32* %24, align 4, !tbaa !4     ; [#uses=3 type=i32]
  %26 = icmp sgt i32 %25, %9                      ; [#uses=1 type=i1]
  %27 = add nsw i32 %23, -1                       ; [#uses=2 type=i32]
  br i1 %26, label %22, label %28

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds i32, i32* %0, i32 %23 ; [#uses=2 type=i32*]
  %30 = icmp slt i32 %15, %23                     ; [#uses=1 type=i1]
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  store i32 %25, i32* %21, align 4, !tbaa !4
  store i32 %17, i32* %29, align 4, !tbaa !4
  br label %11

; <label>:32:                                     ; preds = %28
  store i32 %25, i32* %8, align 4, !tbaa !4
  store i32 %9, i32* %29, align 4, !tbaa !4
  %33 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %23) #5 ; [#uses=0 type=i32]
  tail call void @Quicksort(i32* nonnull %0, i32 %7, i32 %27) #5
  %34 = add nsw i32 %23, 1                        ; [#uses=2 type=i32]
  %35 = icmp slt i32 %34, %2                      ; [#uses=1 type=i1]
  br i1 %35, label %6, label %36

; <label>:36:                                     ; preds = %32, %3
  ret void
}

; [#uses=5]
; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; [#uses=1]
; Function Attrs: nounwind optsize
define void @accept(i32*, i32) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0                         ; [#uses=1 type=i1]
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %4 ]             ; [#uses=3 type=i32]
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %6) #5 ; [#uses=0 type=i32]
  %8 = getelementptr inbounds i32, i32* %0, i32 %6 ; [#uses=1 type=i32*]
  %9 = tail call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %8) #5 ; [#uses=0 type=i32]
  %10 = add nuw nsw i32 %6, 1                     ; [#uses=2 type=i32]
  %11 = icmp eq i32 %10, %1                       ; [#uses=1 type=i1]
  br i1 %11, label %12, label %5

; <label>:12:                                     ; preds = %5, %2
  ret void
}

; [#uses=2]
; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #3

; [#uses=0]
; Function Attrs: nounwind optsize
define void @print(i32* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0                         ; [#uses=1 type=i1]
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %4 ]             ; [#uses=2 type=i32]
  %7 = getelementptr inbounds i32, i32* %0, i32 %6 ; [#uses=1 type=i32*]
  %8 = load i32, i32* %7, align 4, !tbaa !4       ; [#uses=1 type=i32]
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %8) #5 ; [#uses=0 type=i32]
  %10 = add nuw nsw i32 %6, 1                     ; [#uses=2 type=i32]
  %11 = icmp eq i32 %10, %1                       ; [#uses=1 type=i1]
  br i1 %11, label %12, label %5

; <label>:12:                                     ; preds = %5, %2
  ret void
}

; [#uses=0]
; Function Attrs: nounwind optsize
define i32 @main() local_unnamed_addr #2 {
  %1 = alloca [100 x i32], align 4                ; [#uses=4 type=[100 x i32]*]
  %2 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %3 = bitcast [100 x i32]* %1 to i8*             ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %3) #4
  %4 = bitcast i32* %2 to i8*                     ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str, i32 0, i32 0)) ; [#uses=0 type=i32]
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* nonnull %2) #5 ; [#uses=0 type=i32]
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i32 0, i32 0 ; [#uses=2 type=i32*]
  %8 = load i32, i32* %2, align 4, !tbaa !4       ; [#uses=1 type=i32]
  call void @accept(i32* nonnull %7, i32 %8) #5
  %9 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.7, i32 0, i32 0)) ; [#uses=0 type=i32]
  %10 = load i32, i32* %2, align 4, !tbaa !4      ; [#uses=2 type=i32]
  %11 = icmp sgt i32 %10, 0                       ; [#uses=1 type=i1]
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %0
  br label %13

; <label>:13:                                     ; preds = %12, %13
  %14 = phi i32 [ %18, %13 ], [ 0, %12 ]          ; [#uses=2 type=i32]
  %15 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i32 0, i32 %14 ; [#uses=1 type=i32*]
  %16 = load i32, i32* %15, align 4, !tbaa !4     ; [#uses=1 type=i32]
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %16) #6 ; [#uses=0 type=i32]
  %18 = add nuw nsw i32 %14, 1                    ; [#uses=2 type=i32]
  %19 = icmp eq i32 %18, %10                      ; [#uses=1 type=i1]
  br i1 %19, label %20, label %13

; <label>:20:                                     ; preds = %13, %0
  %21 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @str.8, i32 0, i32 0)) ; [#uses=0 type=i32]
  %22 = load i32, i32* %2, align 4, !tbaa !4      ; [#uses=1 type=i32]
  %23 = add nsw i32 %22, -1                       ; [#uses=1 type=i32]
  call void @Quicksort(i32* nonnull %7, i32 0, i32 %23) #5
  %24 = load i32, i32* %2, align 4, !tbaa !4      ; [#uses=2 type=i32]
  %25 = icmp sgt i32 %24, 0                       ; [#uses=1 type=i1]
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %20
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i32 [ %32, %27 ], [ 0, %26 ]          ; [#uses=2 type=i32]
  %29 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i32 0, i32 %28 ; [#uses=1 type=i32*]
  %30 = load i32, i32* %29, align 4, !tbaa !4     ; [#uses=1 type=i32]
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %30) #6 ; [#uses=0 type=i32]
  %32 = add nuw nsw i32 %28, 1                    ; [#uses=2 type=i32]
  %33 = icmp eq i32 %32, %24                      ; [#uses=1 type=i1]
  br i1 %33, label %34, label %27

; <label>:34:                                     ; preds = %27, %20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %3) #4
  ret i32 0
}

; [#uses=3]
; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

attributes #0 = { norecurse nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

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
