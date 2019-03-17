.class public Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
.super Ljava/lang/Object;
.source "ScannerStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialTypeMediaStrategy"
.end annotation


# instance fields
.field private mHfr120FpsLowerBound:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hfr_120fps_lower_bound"
    .end annotation
.end field

.field private mHfr120FpsUpperBound:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hfr_120fps_upper_bound"
    .end annotation
.end field

.field private mHfr240FpsLowerBound:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hfr_240fps_lower_bound"
    .end annotation
.end field

.field private mHfr240FpsUpperBound:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hfr_240fps_upper_bound"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneFrom(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .locals 4
    .param p0, "strategy"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    .prologue
    .line 190
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;-><init>()V

    .line 191
    .local v0, "ret":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsLowerBound:J

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsLowerBound:J

    .line 192
    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsUpperBound:J

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsUpperBound:J

    .line 193
    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsLowerBound:J

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsLowerBound:J

    .line 194
    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsUpperBound:J

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsUpperBound:J

    .line 195
    return-object v0
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;-><init>()V

    .line 182
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    const-wide/16 v2, 0x65

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsLowerBound:J

    .line 183
    const-wide/16 v2, 0x8b

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsUpperBound:J

    .line 184
    const-wide/16 v2, 0xa1

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsLowerBound:J

    .line 185
    const-wide/16 v2, 0xef

    iput-wide v2, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsUpperBound:J

    .line 186
    return-object v0
.end method


# virtual methods
.method public getHfr120FpsLowerBound()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsLowerBound:J

    return-wide v0
.end method

.method public getHfr120FpsUpperBound()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsUpperBound:J

    return-wide v0
.end method

.method public getHfr240FpsLowerBound()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsLowerBound:J

    return-wide v0
.end method

.method public getHfr240FpsUpperBound()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsUpperBound:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialTypeMediaStrategy{mHfr120FpsLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsLowerBound:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHfr120FpsUpperBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr120FpsUpperBound:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHfr240FpsLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsLowerBound:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHfr240FpsUpperBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->mHfr240FpsUpperBound:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
