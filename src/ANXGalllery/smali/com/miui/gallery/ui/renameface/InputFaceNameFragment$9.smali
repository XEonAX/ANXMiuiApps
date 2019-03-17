.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initFaceNameLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaderUpdatedItems()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1800(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->notifyDataSetChanged()V

    .line 427
    :cond_0
    return-void
.end method
