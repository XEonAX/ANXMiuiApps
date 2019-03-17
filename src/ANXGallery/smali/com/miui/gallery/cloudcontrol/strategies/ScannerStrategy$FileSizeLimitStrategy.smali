.class public Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
.super Ljava/lang/Object;
.source "ScannerStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSizeLimitStrategy"
.end annotation


# instance fields
.field private mImageMaxSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_max_size"
    .end annotation
.end field

.field private mVideoMaxSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_max_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneFrom(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 4
    .param p0, "strategy"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    .prologue
    .line 137
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;-><init>()V

    .line 138
    .local v0, "ret":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    .line 139
    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    .line 140
    return-object v0
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 4

    .prologue
    .line 129
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;-><init>()V

    .line 130
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    const-wide/16 v2, 0x28

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    .line 131
    const-wide/16 v2, 0x1000

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    .line 132
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->doAdditionalProcessing()V

    .line 133
    return-object v0
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x100000

    .line 152
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    .line 153
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    .line 154
    return-void
.end method

.method public getImageMaxSize()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    return-wide v0
.end method

.method public getVideoMaxSize()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileSizeLimitStrategy{mImageMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mImageMaxSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->mVideoMaxSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
