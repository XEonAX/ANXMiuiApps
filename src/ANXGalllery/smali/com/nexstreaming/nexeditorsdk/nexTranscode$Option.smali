.class public Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;
.super Ljava/lang/Object;
.source "nexTranscode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field private labelResource:I

.field outputBitRate:I

.field outputFile:Ljava/io/File;

.field outputFitMode:I

.field outputHeight:I

.field outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field outputSamplingRate:I

.field outputWidth:I


# direct methods
.method public constructor <init>(Ljava/io/File;IIIIZ)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFile:Ljava/io/File;

    .line 150
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputWidth:I

    .line 151
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputHeight:I

    .line 152
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputBitRate:I

    .line 153
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputSamplingRate:I

    .line 154
    invoke-static {p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->labelResource:I

    .line 155
    if-eqz p6, :cond_0

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    .line 160
    :goto_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 161
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;IIIIZLcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFile:Ljava/io/File;

    .line 180
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputWidth:I

    .line 181
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputHeight:I

    .line 182
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputBitRate:I

    .line 183
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputSamplingRate:I

    .line 184
    invoke-static {p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->labelResource:I

    .line 185
    if-eqz p6, :cond_0

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    .line 190
    :goto_0
    iput-object p7, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 191
    iput-object p8, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 192
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->labelResource:I

    return v0
.end method


# virtual methods
.method public setOutputRotate(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;)V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne p1, v0, :cond_0

    .line 201
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    goto :goto_0
.end method

.method public setOutputRotateMeta(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    .line 197
    return-void
.end method
