; ModuleID = '/storage/emulated/0/my c programming/sorting/bubblesortdec.c.bc'
source_filename = "/storage/emulated/0/my c programming/sorting/bubblesortdec.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-linux-android"

@.str = private unnamed_addr constant [16 x i8] c"Enter data %d:\09\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1 ; [#uses=1 type=[4 x i8]*]
@str = private unnamed_addr constant [21 x i8] c"\0AHow many no u want:\00" ; [#uses=1 type=[21 x i8]*]
@str.6 = private unnamed_addr constant [16 x i8] c"\0AUsorted Array:\00" ; [#uses=1 type=[16 x i8]*]
@str.7 = private unnamed_addr constant [15 x i8] c"\0ASorted Array:\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=0]
; Function Attrs: norecurse nounwind optsize
define void @bubblesort(i32* nocapture, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1                         ; [#uses=1 type=i1]
  br i1 %3, label %4, label %25

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %23
  %6 = phi i32 [ %8, %23 ], [ %1, %4 ]            ; [#uses=1 type=i32]
  %7 = phi i32 [ %9, %23 ], [ %1, %4 ]            ; [#uses=2 type=i32]
  %8 = add i32 %6, -1                             ; [#uses=2 type=i32]
  %9 = add nsw i32 %7, -1                         ; [#uses=1 type=i32]
  %10 = load i32, i32* %0, align 4, !tbaa !4      ; [#uses=1 type=i32]
  br label %11

; <label>:11:                                     ; preds = %20, %5
  %12 = phi i32 [ %10, %5 ], [ %21, %20 ]         ; [#uses=3 type=i32]
  %13 = phi i32 [ 0, %5 ], [ %14, %20 ]           ; [#uses=2 type=i32]
  %14 = add nuw nsw i32 %13, 1                    ; [#uses=3 type=i32]
  %15 = getelementptr inbounds i32, i32* %0, i32 %14 ; [#uses=2 type=i32*]
  %16 = load i32, i32* %15, align 4, !tbaa !4     ; [#uses=3 type=i32]
  %17 = icmp slt i32 %12, %16                     ; [#uses=1 type=i1]
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds i32, i32* %0, i32 %13 ; [#uses=1 type=i32*]
  store i32 %16, i32* %19, align 4, !tbaa !4
  store i32 %12, i32* %15, align 4, !tbaa !4
  br label %20

; <label>:20:                                     ; preds = %11, %18
  %21 = phi i32 [ %16, %11 ], [ %12, %18 ]        ; [#uses=1 type=i32]
  %22 = icmp eq i32 %14, %8                       ; [#uses=1 type=i1]
  br i1 %22, label %23, label %11

; <label>:23:                                     ; preds = %20
  %24 = icmp sgt i32 %7, 2                        ; [#uses=1 type=i1]
  br i1 %24, label %5, label %25

; <label>:25:                                     ; preds = %23, %2
  ret void
}

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; [#uses=1]
; Function Attrs: nounwind optsize
define void @accept(i32*, i32) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0                         ; [#uses=1 type=i1]
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %4 ]             ; [#uses=3 type=i32]
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %6) #5 ; [#uses=0 type=i32]
  %8 = getelementptr inbounds i32, i32* %0, i32 %6 ; [#uses=1 type=i32*]
  %9 = tail call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %8) #5 ; [#uses=0 type=i32]
  %10 = add nuw nsw i32 %6, 1                     ; [#uses=2 type=i32]
  %11 = icmp eq i32 %10, %1                       ; [#uses=1 type=i1]
  br i1 %11, label %12, label %5

; <label>:12:                                     ; preds = %5, %2
  ret void
}

; [#uses=4]
; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; [#uses=2]
; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #3

; [#uses=0]
; Function Attrs: nounwind optsize
define void @display(i32* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0                         ; [#uses=1 type=i1]
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %4 ]             ; [#uses=2 type=i32]
  %7 = getelementptr inbounds i32, i32* %0, i32 %6 ; [#uses=1 type=i32*]
  %8 = load i32, i32* %7, align 4, !tbaa !4       ; [#uses=1 type=i32]
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %8) #5 ; [#uses=0 type=i32]
  %10 = add nuw nsw i32 %6, 1                     ; [#uses=2 type=i32]
  %11 = icmp eq i32 %10, %1                       ; [#uses=1 type=i1]
  br i1 %11, label %12, label %5

; <label>:12:                                     ; preds = %5, %2
  ret void
}

; [#uses=0]
; Function Attrs: nounwind optsize
define i32 @main() local_unnamed_addr #2 {
  %1 = alloca [10 x i32], align 4                 ; [#uses=6 type=[10 x i32]*]
  %2 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %3 = bitcast [10 x i32]* %1 to i8*              ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #4
  %4 = bitcast i32* %2 to i8*                     ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str, i32 0, i32 0)) ; [#uses=0 type=i32]
  %6 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* nonnull %2) #5 ; [#uses=0 type=i32]
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 0 ; [#uses=2 type=i32*]
  %8 = load i32, i32* %2, align 4, !tbaa !4       ; [#uses=1 type=i32]
  call void @accept(i32* nonnull %7, i32 %8) #5
  %9 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.6, i32 0, i32 0)) ; [#uses=0 type=i32]
  %10 = load i32, i32* %2, align 4, !tbaa !4      ; [#uses=2 type=i32]
  %11 = icmp sgt i32 %10, 0                       ; [#uses=1 type=i1]
  br i1 %11, label %12, label %42

; <label>:12:                                     ; preds = %0
  br label %13

; <label>:13:                                     ; preds = %12, %13
  %14 = phi i32 [ %18, %13 ], [ 0, %12 ]          ; [#uses=2 type=i32]
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %14 ; [#uses=1 type=i32*]
  %16 = load i32, i32* %15, align 4, !tbaa !4     ; [#uses=1 type=i32]
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %16) #6 ; [#uses=0 type=i32]
  %18 = add nuw nsw i32 %14, 1                    ; [#uses=2 type=i32]
  %19 = icmp eq i32 %18, %10                      ; [#uses=1 type=i1]
  br i1 %19, label %20, label %13

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %2, align 4, !tbaa !4      ; [#uses=2 type=i32]
  %22 = icmp sgt i32 %21, 1                       ; [#uses=1 type=i1]
  br i1 %22, label %23, label %42

; <label>:23:                                     ; preds = %20
  br label %24

; <label>:24:                                     ; preds = %23, %40
  %25 = phi i32 [ %26, %40 ], [ %21, %23 ]        ; [#uses=2 type=i32]
  %26 = add nsw i32 %25, -1                       ; [#uses=2 type=i32]
  %27 = load i32, i32* %7, align 4, !tbaa !4      ; [#uses=1 type=i32]
  br label %28

; <label>:28:                                     ; preds = %37, %24
  %29 = phi i32 [ %27, %24 ], [ %38, %37 ]        ; [#uses=3 type=i32]
  %30 = phi i32 [ 0, %24 ], [ %31, %37 ]          ; [#uses=2 type=i32]
  %31 = add nuw nsw i32 %30, 1                    ; [#uses=3 type=i32]
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %31 ; [#uses=2 type=i32*]
  %33 = load i32, i32* %32, align 4, !tbaa !4     ; [#uses=3 type=i32]
  %34 = icmp slt i32 %29, %33                     ; [#uses=1 type=i1]
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %30 ; [#uses=1 type=i32*]
  store i32 %33, i32* %36, align 4, !tbaa !4
  store i32 %29, i32* %32, align 4, !tbaa !4
  br label %37

; <label>:37:                                     ; preds = %35, %28
  %38 = phi i32 [ %33, %28 ], [ %29, %35 ]        ; [#uses=1 type=i32]
  %39 = icmp eq i32 %31, %26                      ; [#uses=1 type=i1]
  br i1 %39, label %40, label %28

; <label>:40:                                     ; preds = %37
  %41 = icmp sgt i32 %25, 2                       ; [#uses=1 type=i1]
  br i1 %41, label %24, label %42

; <label>:42:                                     ; preds = %40, %0, %20
  %43 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.7, i32 0, i32 0)) ; [#uses=0 type=i32]
  %44 = load i32, i32* %2, align 4, !tbaa !4      ; [#uses=2 type=i32]
  %45 = icmp sgt i32 %44, 0                       ; [#uses=1 type=i1]
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %42
  br label %47

; <label>:47:                                     ; preds = %46, %47
  %48 = phi i32 [ %52, %47 ], [ 0, %46 ]          ; [#uses=2 type=i32]
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i32 0, i32 %48 ; [#uses=1 type=i32*]
  %50 = load i32, i32* %49, align 4, !tbaa !4     ; [#uses=1 type=i32]
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %50) #6 ; [#uses=0 type=i32]
  %52 = add nuw nsw i32 %48, 1                    ; [#uses=2 type=i32]
  %53 = icmp eq i32 %52, %44                      ; [#uses=1 type=i1]
  br i1 %53, label %54, label %47

; <label>:54:                                     ; preds = %47, %42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
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
