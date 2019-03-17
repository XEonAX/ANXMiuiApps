.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setCheckableHeaderView(Lcom/miui/gallery/ui/CheckableView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iput p2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->val$position:I

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$2000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;I)Z

    .line 1219
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$2100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    .line 1220
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 1223
    invoke-static {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/view/ActionMode;

    move-result-object v1

    const/4 v2, 0x1

    .line 1222
    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 1225
    :cond_0
    return-void
.end method
