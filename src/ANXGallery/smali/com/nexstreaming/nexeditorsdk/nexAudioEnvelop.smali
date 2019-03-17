.class public final Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;
.super Ljava/lang/Object;
.source "nexAudioEnvelop.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final maxIndex:I = 0x10000


# instance fields
.field private m_cachedLevelList:[I

.field private m_cachedTimeList:[I

.field private m_modify:Z

.field private m_totalTime:I

.field private m_trimEndTime:I

.field private m_trimStartTime:I

.field private m_volumeEnvelopeLevel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_volumeEnvelopeTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 78
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    .line 80
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;)V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 416
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    .line 417
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    .line 418
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_totalTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    .line 419
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimStartTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    .line 420
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimEndTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    .line 421
    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;)Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;
    .locals 3

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    .line 68
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    .line 69
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    .line 70
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 72
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private findTime2Index(II)I
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    .line 142
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    .line 148
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 165
    :cond_1
    :goto_0
    return v1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    if-ne v0, p1, :cond_3

    .line 157
    const/high16 v0, 0x10000

    add-int/2addr v0, v1

    .line 158
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    if-gt v0, p1, :cond_1

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private getProjectDuration()I
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getVolumeEnvelopeList(Z)[I
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 352
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    if-eqz v0, :cond_5

    .line 353
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 354
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 355
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    move v2, v1

    move v4, v1

    .line 361
    :goto_0
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 362
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeTimeAdj(I)I

    move-result v5

    .line 363
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeLevel(I)I

    move-result v3

    .line 364
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getProjectDuration()I

    move-result v9

    .line 365
    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    iget v10, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    if-ne v6, v10, :cond_1

    const/4 v6, 0x1

    .line 366
    :goto_1
    if-gt v5, v9, :cond_2

    if-lez v5, :cond_2

    .line 372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v5

    goto :goto_0

    :cond_1
    move v6, v1

    .line 365
    goto :goto_1

    .line 374
    :cond_2
    if-gt v5, v9, :cond_3

    if-lez v3, :cond_3

    if-nez v5, :cond_3

    .line 375
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 377
    :cond_3
    if-le v5, v9, :cond_0

    if-nez v6, :cond_0

    .line 383
    sub-int v0, v9, v4

    int-to-float v0, v0

    sub-int v1, v5, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-int v1, v3, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 384
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_4
    invoke-static {v7}, Lcom/nexstreaming/app/common/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    .line 392
    invoke-static {v8}, Lcom/nexstreaming/app/common/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    .line 398
    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    .line 399
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    .line 401
    :goto_4
    return-object v0

    .line 394
    :cond_6
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    .line 395
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    goto :goto_3

    .line 401
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    goto :goto_4
.end method


# virtual methods
.method public addVolumeEnvelope(II)I
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 123
    if-gez p1, :cond_0

    .line 124
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    invoke-direct {v0, v2, v1, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 126
    :cond_0
    if-gt p2, v1, :cond_1

    if-gez p2, :cond_2

    .line 127
    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, v2, v1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 129
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->findTime2Index(II)I

    move-result v0

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 131
    if-lt v0, v3, :cond_3

    .line 132
    sub-int/2addr v0, v3

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public changeVolumeLevelValue(II)V
    .locals 3

    .prologue
    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 184
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 186
    :cond_0
    if-gt p2, v1, :cond_1

    if-gez p2, :cond_2

    .line 187
    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, v2, v1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 191
    return-void
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    .line 407
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    .line 408
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_totalTime:I

    .line 409
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimStartTime:I

    .line 410
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimEndTime:I

    .line 412
    return-object v0
.end method

.method public getVolumeEnvelopeLength()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVolumeEnvelopeLevel(I)I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 273
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 276
    const/4 v0, -0x1

    .line 277
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getVolumeEnvelopeLevelList()[I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getVolumeEnvelopeTime(I)I
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 252
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 255
    const/4 v0, -0x1

    .line 256
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getVolumeEnvelopeTimeAdj(I)I
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 295
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 298
    const/4 v0, -0x1

    .line 299
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getVolumeEnvelopeTimeList()[I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public removeVolumeEnvelop()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 213
    return-void
.end method

.method public removeVolumeEnvelop(I)V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 230
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 235
    return-void
.end method

.method public updateTrimTime(II)V
    .locals 3

    .prologue
    .line 96
    if-gt p2, p1, :cond_0

    .line 97
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0

    .line 99
    :cond_0
    if-gez p1, :cond_1

    .line 100
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0

    .line 102
    :cond_1
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    .line 103
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    .line 105
    return-void
.end method
