.class Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;
.super Landroid/os/AsyncTask;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResumeTaskSync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/app/ScanActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p2, "x1"    # Lcom/xiaomi/scanner/app/ScanActivity$1;

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 801
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 804
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ResumeTaskSync doInBackground"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop operation, mPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v2}, Lcom/xiaomi/scanner/app/ScanActivity;->access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 828
    :goto_0
    return-object v5

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 810
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->resume()V

    .line 814
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v1, Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-direct {v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1202(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/SoundPlayer;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->loadSound(I)V

    .line 818
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->loadSound(I)V

    .line 819
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 820
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ResumeTaskSync is canclled"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_3
    invoke-static {}, Lcom/xiaomi/scanner/app/ScanActivity;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "null mCaptureModule drop resume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 823
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1300(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    move-result-object v0

    if-nez v0, :cond_5

    .line 824
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v1, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1400(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;)V

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1302(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/OrientationManagerImpl;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    .line 827
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity$ResumeTaskSync;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->access$1300(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->resume()V

    goto :goto_0
.end method
