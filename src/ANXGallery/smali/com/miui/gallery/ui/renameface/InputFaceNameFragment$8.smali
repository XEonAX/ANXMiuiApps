.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initListView(Landroid/view/View;)V
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
    .line 390
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    move-object v6, v0

    check-cast v6, Landroid/database/Cursor;

    .line 396
    .local v6, "cur":Landroid/database/Cursor;
    invoke-static {v6}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "phone":Ljava/lang/String;
    const-string v0, "contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 400
    :cond_0
    sget-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->DISPLAY_NAME:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Z

    move-result v2

    .line 402
    .local v2, "isRepeatName":Z
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->showSetRelationDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$700(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
