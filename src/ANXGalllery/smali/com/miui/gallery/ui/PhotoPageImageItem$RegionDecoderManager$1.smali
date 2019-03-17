.class Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$1;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->resetRegionDecoderIfNeeded()V
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
    .line 327
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;->access$1200(Lcom/miui/gallery/ui/PhotoPageImageItem$RegionDecoderManager;)V

    .line 331
    return-void
.end method
