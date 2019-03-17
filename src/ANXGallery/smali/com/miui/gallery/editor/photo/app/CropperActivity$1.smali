.class Lcom/miui/gallery/editor/photo/app/CropperActivity$1;
.super Ljava/lang/Object;
.source "CropperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/CropperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$000(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->finish()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$100(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 120
    new-instance v0, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$1;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ExportFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$ExportFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
