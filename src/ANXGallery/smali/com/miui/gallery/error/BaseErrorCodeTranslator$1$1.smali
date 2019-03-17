.class Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;
.super Landroid/os/AsyncTask;
.source "BaseErrorCodeTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/error/core/ErrorCode;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/error/core/ErrorTip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->this$1:Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorTip;
    .locals 3
    .param p1, "params"    # [Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->this$1:Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    iget-object v0, v0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;->this$0:Lcom/miui/gallery/error/BaseErrorCodeTranslator;

    iget-object v1, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->this$1:Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    iget-object v1, v1, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/error/BaseErrorCodeTranslator;->access$100(Lcom/miui/gallery/error/BaseErrorCodeTranslator;Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorTip;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    check-cast p1, [Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->doInBackground([Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorTip;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 1
    .param p1, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->this$1:Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    iget-object v0, v0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;->val$callback:Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->this$1:Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;

    iget-object v0, v0, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1;->val$callback:Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/error/core/ErrorTranslateCallback;->onTranslate(Lcom/miui/gallery/error/core/ErrorTip;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Lcom/miui/gallery/error/core/ErrorTip;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/error/BaseErrorCodeTranslator$1$1;->onPostExecute(Lcom/miui/gallery/error/core/ErrorTip;)V

    return-void
.end method
