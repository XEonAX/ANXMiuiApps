.class Lcom/xiaomi/scanner/camera/CaptureModule$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 162
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$2;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$2;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$400(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    .line 166
    return-void
.end method
