.class Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;
.super Ljava/lang/Object;
.source "MediaSortDateHelper.java"

# interfaces
.implements Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;->this$0:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V
    .locals 3
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "oldStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;
    .param p3, "newStatus"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    .prologue
    .line 102
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1$1;-><init>(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;->this$0:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    invoke-static {v0}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->access$100(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;)Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "album-sort-date"

    iget-object v2, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;->this$0:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    .line 111
    invoke-static {v2}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->access$100(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;)Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->unregisterStatusObserver(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;->this$0:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->access$102(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;)Lcom/miui/gallery/cloudcontrol/FeatureStatusObserver;

    .line 114
    :cond_0
    return-void
.end method
