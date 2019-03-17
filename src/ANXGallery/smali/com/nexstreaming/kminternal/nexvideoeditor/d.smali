.class public Lcom/nexstreaming/kminternal/nexvideoeditor/d;
.super Ljava/lang/Object;
.source "NexVisualClipChecker.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/CamcorderProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->a:I

    .line 13
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->b:I

    .line 14
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->c:I

    .line 16
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->d:I

    .line 17
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->e:I

    .line 18
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->f:I

    .line 20
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->g:I

    .line 21
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->h:I

    .line 22
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->i:I

    .line 24
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->j:Z

    .line 26
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->k:I

    .line 27
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->l:I

    .line 28
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->m:I

    .line 30
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->n:Z

    .line 32
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->o:I

    .line 33
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->p:I

    .line 34
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->q:I

    .line 36
    const/16 v0, 0x37

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->r:I

    .line 37
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->s:I

    .line 38
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->t:I

    .line 40
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->u:I

    .line 41
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->v:I

    .line 42
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->w:I

    .line 59
    if-nez p1, :cond_1

    .line 126
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxCamcorderProfileSizeForUnknownDevice()I

    move-result v0

    .line 63
    if-gtz v0, :cond_2

    .line 64
    const v0, 0x7fffffff

    .line 66
    :cond_2
    const-string v3, "Device_Support_BaselineMaxLevel"

    invoke-virtual {v2, v3, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->a:I

    .line 67
    const-string v3, "Device_Support_MainMaxLevel"

    invoke-virtual {v2, v3, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->b:I

    .line 68
    const-string v3, "Device_Support_HighMaxLevel"

    invoke-virtual {v2, v3, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->c:I

    .line 70
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMCHWAVCDecBaselineSize()I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->d:I

    .line 71
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMCHWAVCDecMainSize()I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->e:I

    .line 72
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMCHWAVCDecHighSize()I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->f:I

    .line 74
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->isUnknownDevice()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    const-string v3, "MCHWAVCEncBaselineLevelSize"

    invoke-virtual {p1, v3, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->a(II)I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->g:I

    .line 76
    const-string v3, "MCHWAVCEncMainLevelSize"

    invoke-virtual {p1, v3, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->h:I

    .line 77
    const-string v3, "MCHWAVCEncHighLevelSize"

    invoke-virtual {p1, v3, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->i:I

    .line 84
    :goto_0
    const-string v0, "canUseMCSoftwareCodec"

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->j:Z

    .line 85
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->j:Z

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMCSWAVCDecBaselineSize()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->k:I

    .line 88
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMCSWAVCDecMainSize()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->l:I

    .line 89
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMCSWAVCDecHighSize()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->m:I

    .line 92
    :cond_3
    const-string v0, "canUseSoftwareCodec"

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->n:Z

    .line 93
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->n:Z

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getNXSWAVCDecBaselineSize()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->o:I

    .line 96
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getNXSWAVCDecMainSize()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->p:I

    .line 97
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getNXSWAVCDecHighSize()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->q:I

    .line 100
    :cond_4
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxSupportedFPS()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->r:I

    .line 102
    invoke-virtual {v2, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxSupportedVideoBitrate(I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->u:I

    .line 103
    invoke-virtual {v2, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxSupportedAudioSamplingRate(I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->v:I

    .line 104
    invoke-virtual {v2, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxSupportedAudioChannels(I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->w:I

    .line 106
    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->isUnknownDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->d:I

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->s:I

    .line 109
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->d:I

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->t:I

    .line 117
    :goto_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->x:Ljava/util/Vector;

    .line 118
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    move v0, v1

    .line 119
    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 121
    aget v1, v2, v0

    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->x:Ljava/util/Vector;

    aget v3, v2, v0

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    :cond_6
    const-string v0, "MCHWAVCEncBaselineLevelSize"

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->g:I

    .line 80
    const-string v0, "MCHWAVCEncMainLevelSize"

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->h:I

    .line 81
    const-string v0, "MCHWAVCEncHighLevelSize"

    invoke-virtual {p1, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->i:I

    goto/16 :goto_0

    .line 113
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxImportSize(Z)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->s:I

    .line 114
    invoke-virtual {v2, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxImportSize(Z)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->t:I

    goto :goto_1

    .line 118
    nop

    :array_0
    .array-data 4
        0x6
        0x5
        0x4
        0x3
        0x7
    .end array-data
.end method

.method private static a(II)I
    .locals 0

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return p1

    .line 49
    :cond_1
    if-nez p1, :cond_2

    move p1, p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-ge p0, p1, :cond_0

    move p1, p0

    .line 52
    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->g:I

    return v0
.end method

.method public a(IIIIIIII)I
    .locals 4

    .prologue
    .line 189
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->v:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->v:I

    if-ge v0, p7, :cond_0

    .line 190
    const/4 v0, 0x6

    .line 298
    :goto_0
    return v0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->n:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->s:I

    move v3, v0

    .line 193
    :goto_1
    const/16 v0, 0xff

    if-ne p1, v0, :cond_6

    .line 195
    mul-int v0, p3, p4

    if-le v0, v3, :cond_4

    .line 197
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->n:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->o:I

    .line 199
    :goto_2
    mul-int v1, p3, p4

    if-le v1, v0, :cond_3

    .line 201
    const/4 v0, 0x4

    goto :goto_0

    .line 192
    :cond_1
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->t:I

    move v3, v0

    goto :goto_1

    .line 197
    :cond_2
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->d:I

    goto :goto_2

    .line 203
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->r:I

    if-le p5, v0, :cond_5

    .line 207
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_6
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->n:Z

    if-eqz v0, :cond_7

    .line 224
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->o:I

    .line 225
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->p:I

    .line 226
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->q:I

    .line 236
    :goto_3
    sparse-switch p1, :sswitch_data_0

    .line 258
    const/4 v0, 0x3

    goto :goto_0

    .line 230
    :cond_7
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->d:I

    .line 231
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->e:I

    .line 232
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->f:I

    goto :goto_3

    .line 239
    :sswitch_0
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->a:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->a:I

    if-ge v1, p2, :cond_a

    .line 240
    const/4 v0, 0x5

    goto :goto_0

    .line 244
    :sswitch_1
    if-nez v1, :cond_8

    .line 245
    const/4 v0, 0x3

    goto :goto_0

    .line 246
    :cond_8
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->b:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->b:I

    if-ge v0, p2, :cond_9

    .line 247
    const/4 v0, 0x5

    goto :goto_0

    :cond_9
    move v0, v1

    .line 261
    :cond_a
    :goto_4
    mul-int v1, p3, p4

    if-le v1, v0, :cond_f

    .line 263
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->j:Z

    if-eqz v0, :cond_e

    .line 265
    const/16 v0, 0x42

    if-ne p1, v0, :cond_d

    mul-int v0, p3, p4

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->k:I

    if-gt v0, v1, :cond_d

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    :sswitch_2
    if-nez v2, :cond_b

    .line 252
    const/4 v0, 0x3

    goto :goto_0

    .line 253
    :cond_b
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->c:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->c:I

    if-ge v0, p2, :cond_c

    .line 254
    const/4 v0, 0x5

    goto :goto_0

    :cond_c
    move v0, v2

    .line 256
    goto :goto_4

    .line 271
    :cond_d
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 275
    :cond_e
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 278
    :cond_f
    mul-int v0, p3, p4

    if-le v0, v3, :cond_10

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 283
    :cond_10
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->r:I

    if-le p5, v0, :cond_11

    .line 289
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 298
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
