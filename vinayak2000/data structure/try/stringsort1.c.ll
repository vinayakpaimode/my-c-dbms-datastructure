; ModuleID = '/storage/emulated/0/my c programming/try/stringsort1.c.bc'
source_filename = "/storage/emulated/0/my c programming/try/stringsort1.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-linux-android"

@a = common global [20 x [20 x i8]] zeroinitializer, align 1 ; [#uses=4 type=[20 x [20 x i8]]*]
@.str = private unnamed_addr constant [16 x i8] c"Enter data %d:\09\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str.4 = private unnamed_addr constant [35 x i8] c"how many number you want to enter \00", align 1 ; [#uses=1 type=[35 x i8]*]
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1 ; [#uses=1 type=[3 x i8]*]
@.str.6 = private unnamed_addr constant [19 x i8] c"before sort   \0A   \00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str.7 = private unnamed_addr constant [18 x i8] c"after sort   \0A   \00", align 1 ; [#uses=1 type=[18 x i8]*]
@str.8 = private unnamed_addr constant [39 x i8] c"--------------------------------------\00" ; [#uses=1 type=[39 x i8]*]

; [#uses=1]
; Function Attrs: nounwind optsize
define void @bubblesort(i32) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 1                  ; [#uses=1 type=[20 x i8]*]
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i32 0, i32 0 ; [#uses=4 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #4
  %4 = icmp sgt i32 %0, 1                         ; [#uses=1 type=i1]
  br i1 %4, label %5, label %26

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %24
  %7 = phi i32 [ %9, %24 ], [ %0, %5 ]            ; [#uses=1 type=i32]
  %8 = phi i32 [ %10, %24 ], [ %0, %5 ]           ; [#uses=2 type=i32]
  %9 = add i32 %7, -1                             ; [#uses=2 type=i32]
  %10 = add nsw i32 %8, -1                        ; [#uses=1 type=i32]
  br label %11

; <label>:11:                                     ; preds = %22, %6
  %12 = phi i32 [ 0, %6 ], [ %14, %22 ]           ; [#uses=2 type=i32]
  %13 = getelementptr inbounds [20 x [20 x i8]], [20 x [20 x i8]]* @a, i32 0, i32 %12, i32 0 ; [#uses=3 type=i8*]
  %14 = add nuw nsw i32 %12, 1                    ; [#uses=3 type=i32]
  %15 = getelementptr inbounds [20 x [20 x i8]], [20 x [20 x i8]]* @a, i32 0, i32 %14, i32 0 ; [#uses=3 type=i8*]
  %16 = call i32 @strcmp(i8* nonnull %13, i8* nonnull %15) #5 ; [#uses=1 type=i32]
  %17 = icmp sgt i32 %16, 0                       ; [#uses=1 type=i1]
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %11
  %19 = call i8* @strcpy(i8* nonnull %3, i8* nonnull %13) #6 ; [#uses=0 type=i8*]
  %20 = call i8* @strcpy(i8* nonnull %13, i8* nonnull %15) #6 ; [#uses=0 type=i8*]
  %21 = call i8* @strcpy(i8* nonnull %15, i8* nonnull %3) #6 ; [#uses=0 type=i8*]
  br label %22

; <label>:22:                                     ; preds = %11, %18
  %23 = icmp eq i32 %14, %9                       ; [#uses=1 type=i1]
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %22
  %25 = icmp sgt i32 %8, 2                        ; [#uses=1 type=i1]
  br i1 %25, label %6, label %26

; <label>:26:                                     ; preds = %24, %1
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #4
  ret void
}

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; [#uses=1]
; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #2

; [#uses=3]
; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #3

; [#uses=2]
; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; [#uses=1]
; Function Attrs: nounwind optsize
define void @accept(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0                         ; [#uses=1 type=i1]
  br i1 %2, label %3, label %11

; <label>:3:                                      ; preds = %1
  br label %4

; <label>:4:                                      ; preds = %3, %4
  %5 = phi i32 [ %9, %4 ], [ 0, %3 ]              ; [#uses=3 type=i32]
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %5) #6 ; [#uses=0 type=i32]
  %7 = getelementptr inbounds [20 x [20 x i8]], [20 x [20 x i8]]* @a, i32 0, i32 %5, i32 0 ; [#uses=1 type=i8*]
  %8 = tail call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* nonnull %7) #6 ; [#uses=0 type=i32]
  %9 = add nuw nsw i32 %5, 1                      ; [#uses=2 type=i32]
  %10 = icmp eq i32 %9, %0                        ; [#uses=1 type=i1]
  br i1 %10, label %11, label %4

; <label>:11:                                     ; preds = %4, %1
  ret void
}

; [#uses=4]
; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; [#uses=2]
; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #3

; [#uses=2]
; Function Attrs: nounwind optsize
define void @show(i32) local_unnamed_addr #0 {
  %2 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.8, i32 0, i32 0)) ; [#uses=0 type=i32]
  %3 = icmp sgt i32 %0, 0                         ; [#uses=1 type=i1]
  br i1 %3, label %4, label %11

; <label>:4:                                      ; preds = %1
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %4 ]              ; [#uses=2 type=i32]
  %7 = getelementptr inbounds [20 x [20 x i8]], [20 x [20 x i8]]* @a, i32 0, i32 %6, i32 0 ; [#uses=1 type=i8*]
  %8 = tail call i32 @puts(i8* nonnull %7)        ; [#uses=0 type=i32]
  %9 = add nuw nsw i32 %6, 1                      ; [#uses=2 type=i32]
  %10 = icmp eq i32 %9, %0                        ; [#uses=1 type=i1]
  br i1 %10, label %11, label %5

; <label>:11:                                     ; preds = %5, %1
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @str.8, i32 0, i32 0)) ; [#uses=0 type=i32]
  ret void
}

; [#uses=0]
; Function Attrs: nounwind optsize
define i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %2 = bitcast i32* %1 to i8*                     ; [#uses=2 type=i8*]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0)) #6 ; [#uses=0 type=i32]
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* nonnull %1) #6 ; [#uses=0 type=i32]
  %5 = load i32, i32* %1, align 4, !tbaa !4       ; [#uses=1 type=i32]
  call void @accept(i32 %5) #6
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)) #6 ; [#uses=0 type=i32]
  %7 = load i32, i32* %1, align 4, !tbaa !4       ; [#uses=1 type=i32]
  call void @show(i32 %7) #6
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #6 ; [#uses=0 type=i32]
  %9 = load i32, i32* %1, align 4, !tbaa !4       ; [#uses=1 type=i32]
  call void @bubblesort(i32 %9) #6
  %10 = load i32, i32* %1, align 4, !tbaa !4      ; [#uses=1 type=i32]
  call void @show(i32 %10) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  ret i32 0
}

; [#uses=3]
; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

attributes #0 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+soft-float,+strict-align,-crypto,-neon,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { optsize }

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
