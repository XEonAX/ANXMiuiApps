.class Lcom/miui/gallery/editor/photo/app/MenuFragment$2;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/MenuFragment;->notifySave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/MenuFragment;

    .prologue
    .line 182
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment$2;, "Lcom/miui/gallery/editor/photo/app/MenuFragment$2;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment$2;, "Lcom/miui/gallery/editor/photo/app/MenuFragment$2;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->showProcessDialog()V

    .line 188
    :cond_0
    return-void
.end method
