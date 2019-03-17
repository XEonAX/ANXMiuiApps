.class Lcom/miui/gallery/editor/photo/app/InitializeController$1;
.super Landroid/os/AsyncTask;
.source "InitializeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/InitializeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/InitializeController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/InitializeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/InitializeController;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/InitializeController$1;->this$0:Lcom/miui/gallery/editor/photo/app/InitializeController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController$1;->this$0:Lcom/miui/gallery/editor/photo/app/InitializeController;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/InitializeController;->access$000(Lcom/miui/gallery/editor/photo/app/InitializeController;)Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;->doInitialize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/InitializeController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/InitializeController$1;->this$0:Lcom/miui/gallery/editor/photo/app/InitializeController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/InitializeController;->access$100(Lcom/miui/gallery/editor/photo/app/InitializeController;I)V

    .line 35
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/InitializeController$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
