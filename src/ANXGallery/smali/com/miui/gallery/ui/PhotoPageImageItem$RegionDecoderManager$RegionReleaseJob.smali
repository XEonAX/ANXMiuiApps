.class Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionReleaseJob"
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
.field private mToBeReleasedProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;Lcom/miui/gallery/util/photoview/TileBitProvider;)V
    .locals 0
    .param p2, "provider"    # Lcom/miui/gallery/util/photoview/TileBitProvider;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;->mToBeReleasedProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    .line 460
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;->mToBeReleasedProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    invoke-interface {v0}, Lcom/miui/gallery/util/photoview/TileBitProvider;->release()V

    .line 465
    const-string v0, "PhotoPageImageItem"

    const-string v1, "release region"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$RegionReleaseJob;->mToBeReleasedProvider:Lcom/miui/gallery/util/photoview/TileBitProvider;

    .line 467
    return-object v2
.end method
