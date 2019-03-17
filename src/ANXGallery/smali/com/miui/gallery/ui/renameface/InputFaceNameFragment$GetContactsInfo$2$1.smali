.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;->this$2:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;->this$2:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;->this$2:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 572
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;->this$2:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->notifyDataSetChanged()V

    .line 574
    :cond_0
    return-void
.end method
