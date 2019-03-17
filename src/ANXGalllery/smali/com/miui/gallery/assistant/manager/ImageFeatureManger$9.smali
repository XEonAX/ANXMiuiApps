.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

.field final synthetic val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iput-object p2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 638
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v1, v1, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->access$800(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 639
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v1, v1, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->priority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-wide v2, v2, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->imageId:J

    iget-object v4, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-object v4, v4, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->sha1:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget-wide v5, v5, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->imageDateTime:J

    iget-object v8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;->val$imageFileInfo:Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;

    iget v8, v8, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->algorithmFlags:I

    new-instance v9, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;

    invoke-direct {v9, p0, v7}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9$1;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger$9;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v0 .. v9}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->handleImageWithAlgorithmAsync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLandroid/graphics/Bitmap;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V

    .line 676
    return-void
.end method
