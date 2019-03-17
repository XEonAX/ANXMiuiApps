.class final Lcom/taobao/ma/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/ma/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/ma/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/taobao/ma/camera/AutoFocusManager;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/taobao/ma/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/ma/camera/AutoFocusManager;Lcom/taobao/ma/camera/AutoFocusManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/ma/camera/AutoFocusManager;
    .param p2, "x1"    # Lcom/taobao/ma/camera/AutoFocusManager$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/taobao/ma/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/taobao/ma/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/taobao/ma/camera/AutoFocusManager;->access$200(Lcom/taobao/ma/camera/AutoFocusManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/taobao/ma/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/taobao/ma/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/taobao/ma/camera/AutoFocusManager;->access$000(Lcom/taobao/ma/camera/AutoFocusManager;)V

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method
