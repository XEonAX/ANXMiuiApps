.class Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$3;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->displayImage(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 399
    return-void
.end method
