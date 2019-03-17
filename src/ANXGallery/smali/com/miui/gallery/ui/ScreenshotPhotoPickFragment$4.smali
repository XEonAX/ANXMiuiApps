.class Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$4;
.super Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;
.source "ScreenshotPhotoPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$4;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/SimpleMultiChoiceModeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$4;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$500(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    .line 138
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment$4;->this$0:Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;->access$500(Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;)V

    .line 143
    return-void
.end method
