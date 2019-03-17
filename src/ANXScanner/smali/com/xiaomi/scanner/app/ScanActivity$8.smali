.class Lcom/xiaomi/scanner/app/ScanActivity$8;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/ScanActivity;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$8;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 1478
    const/4 v0, 0x1

    .line 1481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
