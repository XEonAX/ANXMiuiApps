.class Lcom/miui/gallery/ui/GallerySettingsFragment$2;
.super Ljava/lang/Object;
.source "GallerySettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/GallerySettingsFragment;
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
    .line 234
    iput-object p1, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$2;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/gallery/ui/GallerySettingsFragment$2;->this$0:Lcom/miui/gallery/ui/GallerySettingsFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/GallerySettingsFragment;->access$200(Lcom/miui/gallery/ui/GallerySettingsFragment;)V

    .line 238
    return-void
.end method
