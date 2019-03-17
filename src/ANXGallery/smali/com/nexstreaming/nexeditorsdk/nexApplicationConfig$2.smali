.class final Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$2;
.super Landroid/os/AsyncTask;
.source "nexApplicationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->init(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 321
    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->access$000(Landroid/content/Context;Ljava/io/File;)V

    .line 322
    return-object v1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 327
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->access$100()Lcom/nexstreaming/app/common/task/Task;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v2, 0x0

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 328
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$2;->a([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig$2;->a(Ljava/lang/Void;)V

    return-void
.end method
