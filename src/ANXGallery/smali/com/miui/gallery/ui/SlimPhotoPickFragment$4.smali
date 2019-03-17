.class Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;
.super Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;
.source "SlimPhotoPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlimPhotoPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$300(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    .line 124
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$4;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$300(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    .line 129
    return-void
.end method
