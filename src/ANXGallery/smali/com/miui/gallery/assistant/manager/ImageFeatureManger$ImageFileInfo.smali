.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileInfo"
.end annotation


# instance fields
.field public final algorithmFlags:I

.field public final imageDateTime:J

.field public final imageId:J

.field public final listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
            ">;"
        }
    .end annotation
.end field

.field public final path:Ljava/lang/String;

.field public final priority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

.field public final sha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;ILcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;)V
    .locals 0
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "algorithmFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p9, "listener":Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;, "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener<Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->priority:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 733
    iput-wide p2, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->imageId:J

    .line 734
    iput-object p4, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->sha1:Ljava/lang/String;

    .line 735
    iput-wide p5, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->imageDateTime:J

    .line 736
    iput-object p7, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->path:Ljava/lang/String;

    .line 737
    iput p8, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->algorithmFlags:I

    .line 738
    iput-object p9, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFileInfo;->listener:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Listener;

    .line 739
    return-void
.end method
