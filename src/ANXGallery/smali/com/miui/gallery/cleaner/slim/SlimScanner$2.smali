.class Lcom/miui/gallery/cleaner/slim/SlimScanner$2;
.super Ljava/lang/Object;
.source "SlimScanner.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/slim/SlimScanner;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/slim/SlimScanner;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner$2;->this$0:Lcom/miui/gallery/cleaner/slim/SlimScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_cleaner_photo_pick_type"

    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimScanner$2;->this$0:Lcom/miui/gallery/cleaner/slim/SlimScanner;

    invoke-static {v2}, Lcom/miui/gallery/cleaner/slim/SlimScanner;->access$100(Lcom/miui/gallery/cleaner/slim/SlimScanner;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    const-string v1, "cleaner"

    const-string v2, "cleaner_result_slim_click"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
