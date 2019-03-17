.class public Lcom/xiaomi/scanner/module/BaseModule$WorkTask;
.super Landroid/os/AsyncTask;
.source "BaseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WorkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private weakController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleController;",
            ">;"
        }
    .end annotation
.end field

.field private workType:I


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1
    .param p1, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 245
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    .line 246
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {}, Lcom/xiaomi/scanner/module/BaseModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    const-string v3, "WorkTask isCancelled"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-object v1

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    .line 254
    .local v0, "moduleController":Lcom/xiaomi/scanner/module/ModuleController;
    if-nez v0, :cond_1

    .line 255
    invoke-static {}, Lcom/xiaomi/scanner/module/BaseModule;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    const-string v3, "WorkTask isCancelled"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->workType:I

    .line 259
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/Object;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->weakController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    .line 265
    .local v0, "moduleController":Lcom/xiaomi/scanner/module/ModuleController;
    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget v1, p0, Lcom/xiaomi/scanner/module/BaseModule$WorkTask;->workType:I

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/scanner/module/ModuleController;->executeOnPostExecute(ILjava/lang/Object;)V

    .line 269
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->executeOnPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method
