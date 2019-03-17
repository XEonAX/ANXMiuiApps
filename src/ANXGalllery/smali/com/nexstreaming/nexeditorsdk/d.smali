.class final Lcom/nexstreaming/nexeditorsdk/d;
.super Ljava/lang/Object;
.source "nexTemplateDrawInfo.java"


# static fields
.field private static r:Ljava/lang/String;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:F

.field e:F

.field f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:F

.field l:F

.field m:I

.field n:I

.field o:I

.field p:Ljava/lang/String;

.field q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "nexTemplateDrawInfo"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->a:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->c:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->g:Ljava/util/Map;

    .line 64
    const-string v0, "default"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->h:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->i:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->j:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->m:I

    .line 70
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->n:I

    .line 71
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->o:I

    .line 72
    const-string v0, "none"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/d;
    .locals 6

    .prologue
    .line 137
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/d;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/d;-><init>()V

    .line 139
    iput p1, v1, Lcom/nexstreaming/nexeditorsdk/d;->a:I

    .line 141
    const-string/jumbo v0, "source_type"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    .line 142
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const-string/jumbo v0, "source_path"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->c:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, "system_source_width"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "system_source_width"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->m:I

    .line 149
    :cond_0
    const-string/jumbo v0, "system_source_height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string/jumbo v0, "system_source_height"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->n:I

    .line 154
    :cond_1
    const-string/jumbo v0, "start"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->d:F

    .line 155
    const-string v0, "end"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->e:F

    .line 157
    const-string v0, "lut"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_2

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 162
    :cond_2
    const-string v0, "alternative_lut"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    :try_start_0
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    const-string v0, "alternative_lut"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 167
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    iget-object v4, v1, Lcom/nexstreaming/nexeditorsdk/d;->g:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 174
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    :cond_3
    const-string v0, "crop_mode"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->h:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "video_crop_mode"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->i:Ljava/lang/String;

    .line 180
    const-string v0, "image_crop_speed"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->j:Ljava/lang/String;

    .line 182
    const-string v0, "draw_width"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->k:F

    .line 183
    const-string v0, "draw_height"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->l:F

    .line 185
    const-string/jumbo v0, "volume"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->o:I

    .line 187
    const-string v0, "audio_res"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    const-string v0, "audio_res"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 190
    const-string v2, "audio_res_pos"

    invoke-static {p0, v2}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->p:Ljava/lang/String;

    .line 192
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/d;->q:F

    .line 196
    :cond_4
    return-object v1
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v0, "source_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "ALL"

    goto :goto_0

    .line 83
    :cond_0
    const-string/jumbo v0, "source_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "default"

    goto :goto_0

    .line 86
    :cond_1
    const-string/jumbo v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "0"

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const-string v0, "1"

    goto :goto_0

    .line 94
    :cond_3
    const-string v0, "crop_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "video_crop_mode"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    :cond_4
    const-string v0, "default"

    goto :goto_0

    .line 99
    :cond_5
    const-string v0, "image_crop_speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    const-string v0, "default"

    goto :goto_0

    .line 103
    :cond_6
    const-string v0, "lut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    const-string v0, "null"

    goto :goto_0

    .line 107
    :cond_7
    const-string v0, "draw_width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "draw_height"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    :cond_8
    const-string v0, "0"

    goto :goto_0

    .line 112
    :cond_9
    const-string/jumbo v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114
    const-string v0, "0"

    goto :goto_0

    .line 116
    :cond_a
    const-string/jumbo v0, "system_source_width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "system_source_height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 118
    :cond_b
    const-string v0, "0"

    goto/16 :goto_0

    .line 120
    :cond_c
    const-string v0, "audio_res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 122
    const-string v0, "none"

    goto/16 :goto_0

    .line 124
    :cond_d
    const-string v0, "audio_res_pos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    const-string v0, "0"

    goto/16 :goto_0

    .line 130
    :cond_e
    const-string v0, "default"

    goto/16 :goto_0
.end method


# virtual methods
.method a(Lcom/nexstreaming/nexeditorsdk/nexClip;F)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 351
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->h:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 355
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->i:Ljava/lang/String;

    .line 359
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 377
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_a

    .line 378
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    div-float v1, v0, v1

    .line 379
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v0

    .line 381
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 382
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_3

    .line 383
    :cond_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    div-float/2addr v1, v2

    .line 410
    :cond_3
    :goto_1
    sub-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v8, v10

    if-lez v2, :cond_9

    .line 412
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v2, v5, v4, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    .line 419
    :goto_2
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v4, "Apply default crop mode(%f %f) (%d)"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 359
    :sswitch_0
    const-string v2, "fill"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v2, "pan_rand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "pan_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "fit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto/16 :goto_0

    .line 361
    :pswitch_0
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    goto :goto_3

    .line 365
    :pswitch_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    goto :goto_3

    .line 369
    :pswitch_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    goto :goto_3

    .line 373
    :pswitch_3
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    goto :goto_3

    .line 386
    :cond_4
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 387
    const/4 v4, 0x0

    .line 389
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_4
    if-eqz v2, :cond_3

    .line 396
    const-string v4, "Orientation"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    if-eqz v2, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 399
    :goto_5
    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    .line 400
    :cond_5
    const/4 v1, 0x6

    if-ne v2, v1, :cond_6

    .line 401
    const/16 v0, 0x5a

    .line 402
    :cond_6
    const/16 v1, 0x8

    if-ne v2, v1, :cond_7

    .line 403
    const/16 v0, 0x10e

    .line 405
    :cond_7
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    div-float/2addr v1, v2

    goto/16 :goto_1

    .line 390
    :catch_0
    move-exception v2

    .line 392
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    .line 397
    goto :goto_5

    .line 416
    :cond_9
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v2, v5, v4, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    goto/16 :goto_2

    .line 422
    :cond_a
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V

    goto/16 :goto_3

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x18c11 -> :sswitch_3
        0x2ff583 -> :sswitch_0
        0x3edfb8bf -> :sswitch_2
        0x3ee52e87 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Lcom/nexstreaming/nexeditorsdk/nexProject;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->p:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 434
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    .line 438
    int-to-float v2, p3

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/d;->q:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 439
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 440
    add-int v3, p2, v2

    add-int/2addr v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I

    .line 444
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 448
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string/jumbo v2, "subId : %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string/jumbo v2, "start : %f"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->d:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v2, "end : %f"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->e:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v3, "lut : %d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v2, "cropMode : %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->h:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string/jumbo v2, "videoCropMode : %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->i:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v2, "draw size : %f %f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->k:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->l:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string/jumbo v2, "volume : %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v1, "---------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/nexClip;IIIFLjava/lang/String;Z)V
    .locals 8

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    invoke-direct {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;-><init>()V

    .line 245
    invoke-virtual {v3, p2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setTopEffectID(I)V

    .line 246
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->a:I

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setID(I)V

    .line 247
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->a:I

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setSubEffectID(I)V

    .line 249
    int-to-float v0, p3

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int v1, p4, v0

    .line 250
    int-to-float v0, p3

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/d;->e:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v2, p4, v0

    .line 252
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/d;->r:Ljava/lang/String;

    const-string v4, "Template setDrawInfo2Clip(dur:%d start:%d %d %d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 256
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    if-ge v1, v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 257
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    if-le v2, v0, :cond_3

    move v0, v2

    :goto_2
    iput v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 259
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    iget v4, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 276
    :goto_3
    invoke-virtual {v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartTime(I)V

    .line 277
    invoke-virtual {v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndTime(I)V

    .line 279
    if-eqz p6, :cond_a

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->g:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 281
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->g:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    .line 282
    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 288
    :goto_5
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->k:F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/d;->l:F

    div-float p5, v0, v1

    .line 292
    :cond_1
    invoke-virtual {v3, p5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRatio(F)V

    .line 294
    invoke-virtual {p0, p1, p5}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;F)Ljava/lang/String;

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 296
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 297
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 298
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 301
    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 302
    invoke-virtual {v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 304
    invoke-virtual {p1, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->addDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    goto/16 :goto_0

    .line 256
    :cond_2
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    goto :goto_1

    .line 257
    :cond_3
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    goto :goto_2

    .line 264
    :cond_4
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    if-ge v1, v0, :cond_6

    move v0, v1

    :goto_6
    iput v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 265
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    if-le v2, v0, :cond_7

    move v0, v2

    :goto_7
    iput v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 268
    if-eqz p7, :cond_5

    .line 269
    int-to-float v0, p3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/d;->e:F

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/d;->d:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 270
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoDuration()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 271
    :goto_8
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 273
    :cond_5
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->o:I

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    goto/16 :goto_3

    .line 264
    :cond_6
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    goto :goto_6

    .line 265
    :cond_7
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    goto :goto_7

    .line 270
    :cond_8
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoDuration()I

    move-result v0

    goto :goto_8

    .line 282
    :cond_9
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v0

    goto/16 :goto_4

    .line 285
    :cond_a
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->f:Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v0

    goto :goto_9
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/e;IF)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 213
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    const-string/jumbo v1, "system_mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 221
    :goto_0
    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 224
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    const-string/jumbo v2, "system_mt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setMotionTrackedVideo(Z)V

    .line 228
    :cond_1
    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 229
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 231
    iput p4, v1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 232
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    add-int/2addr v0, p4

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 234
    iget v2, p3, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {p3}, Lcom/nexstreaming/nexeditorsdk/e;->i()I

    move-result v3

    move-object v0, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;IIIFLjava/lang/String;Z)V

    :cond_2
    move v7, v8

    .line 238
    :cond_3
    return v7

    :cond_4
    move-object v1, v6

    goto :goto_0
.end method
