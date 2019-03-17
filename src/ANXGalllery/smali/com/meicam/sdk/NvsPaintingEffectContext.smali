.class public Lcom/meicam/sdk/NvsPaintingEffectContext;
.super Ljava/lang/Object;
.source "NvsPaintingEffectContext.java"


# static fields
.field public static final STROKE_ANALOG_TYPE_COS:I = 0x3

.field public static final STROKE_ANALOG_TYPE_INVERT_COS:I = 0x4

.field public static final STROKE_ANALOG_TYPE_INVERT_SIN:I = 0x1

.field public static final STROKE_ANALOG_TYPE_POSITIVE_COS:I = 0x5

.field public static final STROKE_ANALOG_TYPE_POSITIVE_SIN:I = 0x2

.field public static final STROKE_ANALOG_TYPE_SIN:I = 0x0

.field public static final STROKE_CAP_STYLE_FLAT:I = 0x0

.field public static final STROKE_CAP_STYLE_ITALIC:I = 0x3

.field public static final STROKE_CAP_STYLE_ROUND:I = 0x2

.field public static final STROKE_CAP_STYLE_SQUARE:I = 0x1

.field public static final STROKE_FILL_MODE_GRADIENT:I = 0x0

.field public static final STROKE_FILL_MODE_TEXTURE:I = 0x1

.field public static final STROKE_JOINT_STYLE_BEVEL:I = 0x0

.field public static final STROKE_JOINT_STYLE_MITER:I = 0x1

.field public static final STROKE_JOINT_STYLE_ROUND:I = 0x2

.field public static final STROKE_TEXTURE_WARP_CLAMP:I = 0x0

.field public static final STROKE_TEXTURE_WARP_MIRRORED_REPEAT:I = 0x2

.field public static final STROKE_TEXTURE_WARP_REPEAT:I = 0x1


# instance fields
.field private m_contextInterface:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAddStroke(J[F)V
.end method

.method private native nativeAppendStroke(J[F)V
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeRemoveAllStroke(J)V
.end method

.method private native nativeRemoveLastStroke(J)V
.end method

.method private native nativeSetStrokeAnalogAmplitude(JF)V
.end method

.method private native nativeSetStrokeAnalogPeriod(JF)V
.end method

.method private native nativeSetStrokeAnalogType(JI)V
.end method

.method private native nativeSetStrokeAnimated(JZ)V
.end method

.method private native nativeSetStrokeAnimationSpeed(JF)V
.end method

.method private native nativeSetStrokeCapStyle(JI)V
.end method

.method private native nativeSetStrokeFillMode(JI)V
.end method

.method private native nativeSetStrokeGradient(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetStrokeJointStyle(JI)V
.end method

.method private native nativeSetStrokeTextureFilePath(JLjava/lang/String;)V
.end method

.method private native nativeSetStrokeTextureRepeatTimes(JII)V
.end method

.method private native nativeSetStrokeTextureWarpType(JI)V
.end method

.method private native nativeSetStrokeWidth(JF)V
.end method


# virtual methods
.method public AddStroke([F)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 143
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeAddStroke(J[F)V

    .line 144
    return-void
.end method

.method public AppendStroke([F)V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 149
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeAppendStroke(J[F)V

    .line 150
    return-void
.end method

.method public RemoveAllStroke()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 131
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeRemoveAllStroke(J)V

    .line 132
    return-void
.end method

.method public RemoveLastStroke()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 137
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeRemoveLastStroke(J)V

    .line 138
    return-void
.end method

.method public SetStrokeAnalogAmplitude(F)V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 119
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnalogAmplitude(JF)V

    .line 120
    return-void
.end method

.method public SetStrokeAnalogPeriod(F)V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 125
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnalogPeriod(JF)V

    .line 126
    return-void
.end method

.method public SetStrokeAnalogType(I)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 113
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnalogType(JI)V

    .line 114
    return-void
.end method

.method public SetStrokeAnimated(Z)V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 101
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnimated(JZ)V

    .line 102
    return-void
.end method

.method public SetStrokeAnimationSpeed(F)V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 107
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeAnimationSpeed(JF)V

    .line 108
    return-void
.end method

.method public SetStrokeCapStyle(I)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 59
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeCapStyle(JI)V

    .line 60
    return-void
.end method

.method public SetStrokeFillMode(I)V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 95
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeFillMode(JI)V

    .line 96
    return-void
.end method

.method public SetStrokeGradient(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 71
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeGradient(JLcom/meicam/sdk/NvsColor;)V

    .line 72
    return-void
.end method

.method public SetStrokeJointStyle(I)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 65
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeJointStyle(JI)V

    .line 66
    return-void
.end method

.method public SetStrokeTextureFilePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 77
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeTextureFilePath(JLjava/lang/String;)V

    .line 78
    return-void
.end method

.method public SetStrokeTextureRepeatTimes(II)V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 89
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeTextureRepeatTimes(JII)V

    .line 90
    return-void
.end method

.method public SetStrokeTextureWarpType(I)V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 83
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeTextureWarpType(JI)V

    .line 84
    return-void
.end method

.method public SetStrokeWidth(F)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeSetStrokeWidth(JF)V

    .line 54
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 160
    iget-wide v0, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsPaintingEffectContext;->nativeCleanup(J)V

    .line 161
    iput-wide v2, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    .line 164
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 165
    return-void
.end method

.method protected setContextInterface(J)V
    .locals 1

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/meicam/sdk/NvsPaintingEffectContext;->m_contextInterface:J

    .line 155
    return-void
.end method
