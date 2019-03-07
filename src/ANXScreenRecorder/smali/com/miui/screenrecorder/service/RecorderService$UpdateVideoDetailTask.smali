.class Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;
.super Landroid/os/AsyncTask;
.source "RecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/service/RecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateVideoDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/screenrecorder/service/RecorderService;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;

.field private mDuration:J

.field private mFilePath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "contextRef"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "filePath"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 487
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 488
    iput-object p2, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mDisplayName:Ljava/lang/String;

    .line 489
    iput-wide p3, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mDuration:J

    .line 490
    iput-object p5, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mFilePath:Ljava/lang/String;

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;Lcom/miui/screenrecorder/service/RecorderService$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Lcom/miui/screenrecorder/service/RecorderService$1;

    .prologue
    .line 479
    invoke-direct/range {p0 .. p5}, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;-><init>(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/service/RecorderService;

    .line 498
    .local v1, "service":Lcom/miui/screenrecorder/service/RecorderService;
    if-eqz v1, :cond_0

    .line 499
    iget-object v2, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mDisplayName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mDuration:J

    iget-object v3, p0, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/miui/screenrecorder/service/RecorderService;->access$1100(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v1    # "service":Lcom/miui/screenrecorder/service/RecorderService;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when updating video detail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/service/RecorderService$UpdateVideoDetailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
