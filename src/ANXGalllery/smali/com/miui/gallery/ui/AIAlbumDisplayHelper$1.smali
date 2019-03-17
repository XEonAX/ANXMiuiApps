.class Lcom/miui/gallery/ui/AIAlbumDisplayHelper$1;
.super Ljava/lang/Object;
.source "AIAlbumDisplayHelper.java"

# interfaces
.implements Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AIAlbumDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$1;->this$0:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "oldStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .param p3, "newStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .prologue
    .line 139
    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$1;->this$0:Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->access$100(Lcom/miui/gallery/ui/AIAlbumDisplayHelper;)V

    .line 142
    :cond_0
    return-void
.end method
