.class public Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;
.super Ljava/lang/Object;
.source "NvsAssetPackageParticleDescParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
    }
.end annotation


# static fields
.field public static final EMITTER_PLACE_BOTTOM:I = 0x3

.field public static final EMITTER_PLACE_CENTER:I = 0x4

.field public static final EMITTER_PLACE_LEFT:I = 0x0

.field public static final EMITTER_PLACE_RIGHT:I = 0x1

.field public static final EMITTER_PLACE_TOP:I = 0x2

.field public static final PARTICLE_TYPE_EYE:I = 0x3

.field public static final PARTICLE_TYPE_GESTURE:I = 0x2

.field public static final PARTICLE_TYPE_MOUTH:I = 0x4

.field public static final PARTICLE_TYPE_NORMAL:I = 0x0

.field public static final PARTICLE_TYPE_TOUCH:I = 0x1


# instance fields
.field m_ParticleType:I

.field m_emitters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    .line 62
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v2, "particleType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string/jumbo v3, "touch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const/4 v2, 0x1

    iput v2, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    .line 75
    :cond_0
    :goto_0
    const-string v2, "emitterDesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 76
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ge v1, v0, :cond_2

    .line 78
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetEmitterDescFromJson(Lorg/json/JSONObject;)Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    move-result-object v0

    .line 81
    iget-object v3, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 68
    :cond_1
    :try_start_2
    const-string v3, "gesture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    const/4 v2, 0x2

    iput v2, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    :cond_2
    return-void

    .line 70
    :cond_3
    :try_start_3
    const-string v3, "eye"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    const/4 v2, 0x3

    iput v2, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    .line 72
    :cond_4
    const-string v3, "mouth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/4 v2, 0x4

    iput v2, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private GetEmitterDescFromJson(Lorg/json/JSONObject;)Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    new-instance v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    invoke-direct {v2, p0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;-><init>(Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;)V

    .line 177
    const-string v0, ""

    .line 178
    const-string v3, "place"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const-string v0, "place"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    const/4 v3, 0x4

    iput v3, v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    .line 181
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    iput v1, v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    .line 190
    :cond_1
    :goto_0
    const-string v0, "emitterName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    const-string v0, "emitterName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    .line 192
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 193
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v4, v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    const/4 v0, 0x1

    iput v0, v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_0

    .line 185
    :cond_3
    const-string/jumbo v3, "top"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const/4 v0, 0x2

    iput v0, v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_0

    .line 187
    :cond_4
    const-string v3, "bottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x3

    iput v0, v2, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_0

    .line 198
    :cond_5
    return-object v2
.end method


# virtual methods
.method public GetLeftEyeEmitter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionEmitter(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetLeftEyePlace()I
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionPlace(I)I

    move-result v0

    return v0
.end method

.method public GetParticlePartitionCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public GetParticlePartitionEmitter(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 167
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    .line 171
    iget-object v0, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public GetParticlePartitionPlace(I)I
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 153
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 154
    const/4 v0, 0x4

    .line 157
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    .line 157
    iget v0, v0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_0
.end method

.method public GetParticleType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    return v0
.end method

.method public GetRightEyeEmitter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionEmitter(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetRightEyePlace()I
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionPlace(I)I

    move-result v0

    return v0
.end method
