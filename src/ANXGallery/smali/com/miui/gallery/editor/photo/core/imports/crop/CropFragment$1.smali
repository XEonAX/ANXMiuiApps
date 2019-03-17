.class Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$1;
.super Landroid/os/Handler;
.source "CropFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->onAutoCrop(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->access$000(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;Z)V

    .line 196
    return-void
.end method
