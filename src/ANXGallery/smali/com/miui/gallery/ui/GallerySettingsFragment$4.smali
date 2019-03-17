.class Lcom/miui/gallery/ui/GallerySettingsFragment$4;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment;->showSlideshowIntervalDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/GallerySettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/GallerySettingsFragment;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$4;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$4;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$400(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    .line 411
    return-void
.end method
