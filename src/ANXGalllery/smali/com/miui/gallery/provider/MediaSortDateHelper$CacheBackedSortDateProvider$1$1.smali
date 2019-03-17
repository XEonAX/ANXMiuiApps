.class Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1$1;
.super Ljava/lang/Object;
.source "MediaSortDateHelper.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;->onStatusChange(Ljava/lang/String;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1$1;->this$1:Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider$1$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 105
    invoke-static {}, Lcom/miui/gallery/provider/MediaSortDateHelper$CacheBackedSortDateProvider;->access$000()V

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
