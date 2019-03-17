.class Lcom/xiaomi/scanner/camera/CaptureModule$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/camera/CaptureModule;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$3;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$3;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method
