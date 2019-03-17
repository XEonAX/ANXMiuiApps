.class final Lcom/nexstreaming/nexeditorsdk/e;
.super Ljava/lang/Object;
.source "nexTemplateEffect.java"


# static fields
.field private static L:Ljava/lang/String;


# instance fields
.field A:Ljava/util/Map;
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

.field B:Ljava/util/Map;
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

.field C:Ljava/util/Map;
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

.field D:Ljava/util/Map;
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

.field E:Z

.field F:Ljava/lang/String;

.field G:I

.field H:Ljava/lang/String;

.field I:I

.field J:I

.field K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/d;",
            ">;"
        }
    .end annotation
.end field

.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:Ljava/lang/String;

.field r:I

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "nexTemplateEffect"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->k:I

    .line 115
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->l:I

    .line 116
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->m:I

    .line 117
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->n:I

    .line 118
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->o:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->p:I

    .line 120
    const-string v0, "default"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->q:Ljava/lang/String;

    .line 121
    const/16 v0, 0x65

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->r:I

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->s:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->t:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->C:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->D:Ljava/util/Map;

    .line 136
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->E:Z

    .line 137
    const-string v0, "none"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->F:Ljava/lang/String;

    .line 140
    const-string v0, "none"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->J:I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/e;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 149
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string v1, "scene"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 153
    :cond_0
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/e;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/e;-><init>()V

    .line 155
    iput p1, v1, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    .line 156
    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->b:Ljava/lang/String;

    .line 158
    const-string v3, "identifier"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->c:Ljava/lang/String;

    .line 160
    const-string v3, "alternative_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "alternative_id"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->c:Ljava/lang/String;

    .line 163
    :cond_1
    const-string/jumbo v3, "source_type"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    .line 164
    iget-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v4, "res_default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    const-string v3, "res_path"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->e:Ljava/lang/String;

    .line 169
    :cond_2
    const-string v3, "duration"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->f:I

    .line 170
    const-string v3, "duration_max"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->h:I

    .line 171
    const-string v3, "duration_min"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->g:I

    .line 172
    const-string/jumbo v3, "volume"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->i:I

    .line 174
    const-string v3, "effect"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    const-string v3, "effect"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    .line 182
    :goto_1
    const-string v3, "draw_infos"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 184
    :try_start_0
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    const-string v4, "Effect : %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "draw_infos"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v0

    move v0, v2

    .line 187
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 188
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    shl-int/lit8 v6, p1, 0x10

    or-int/2addr v6, v3

    invoke-static {v5, v6}, Lcom/nexstreaming/nexeditorsdk/d;->a(Lorg/json/JSONObject;I)Lcom/nexstreaming/nexeditorsdk/d;

    move-result-object v5

    .line 189
    if-eqz v5, :cond_3

    .line 190
    iget-object v6, v1, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/d;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_4
    const-string v3, "effects"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    :cond_5
    const-string v0, "apply_effect_on_res"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    iput-boolean v2, v1, Lcom/nexstreaming/nexeditorsdk/e;->E:Z

    .line 203
    :cond_6
    const-string/jumbo v0, "speed_control"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->o:I

    .line 207
    :cond_7
    const-string v0, "brightness"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->k:I

    .line 211
    :cond_8
    const-string v0, "contrast"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->l:I

    .line 215
    :cond_9
    const-string v0, "saturation"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->m:I

    .line 219
    :cond_a
    const-string v0, "color_filter"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->n:I

    .line 223
    :cond_b
    const-string/jumbo v0, "vignette"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->y:Ljava/lang/String;

    .line 224
    const-string v0, "lut"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->u:Ljava/lang/String;

    .line 226
    const-string v0, "external_video_path"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->v:Ljava/lang/String;

    .line 227
    const-string v0, "external_image_path"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->w:Ljava/lang/String;

    .line 228
    const-string/jumbo v0, "solid_color"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->x:Ljava/lang/String;

    .line 230
    const-string v0, "apply_effect_on_res"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    const-string v0, "apply_effect_on_res"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 232
    iput-boolean v2, v1, Lcom/nexstreaming/nexeditorsdk/e;->E:Z

    .line 235
    :cond_c
    const-string v0, "audio_res"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 236
    const-string v0, "audio_res"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 238
    const-string v3, "audio_res_pos"

    invoke-static {p0, v3}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->F:Ljava/lang/String;

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->G:I

    .line 244
    :cond_d
    const-string v0, "crop_mode"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->q:Ljava/lang/String;

    .line 245
    const-string/jumbo v0, "video_crop_mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 247
    const-string/jumbo v0, "video_crop_mode"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->s:Ljava/lang/String;

    .line 249
    :cond_e
    const-string v0, "image_crop_mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 251
    const-string v0, "image_crop_mode"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->t:Ljava/lang/String;

    .line 254
    :cond_f
    const-string v0, "image_crop_speed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 255
    const-string v0, "image_crop_speed"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->r:I

    .line 258
    :cond_10
    const-string v0, "freeze_duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 259
    const-string v0, "freeze_duration"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->p:I

    .line 262
    :cond_11
    const-string/jumbo v0, "transition_name"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    .line 263
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 264
    :cond_12
    iput v2, v1, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    .line 269
    :goto_3
    const-string/jumbo v0, "use_particle_video"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    const-string/jumbo v0, "use_particle_video"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->J:I

    .line 271
    :cond_13
    const-string v0, "alternative_effect"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 273
    :try_start_1
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 274
    const-string v0, "alternative_effect"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 276
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 277
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v4, v1, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 281
    :catch_1
    move-exception v0

    .line 282
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 283
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 288
    :cond_14
    const-string v0, "alternative_transition"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 290
    :try_start_2
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 291
    const-string v0, "alternative_transition"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 293
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    iget-object v4, v1, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 298
    :catch_2
    move-exception v0

    .line 299
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 300
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 304
    :cond_15
    const-string v0, "alternative_lut"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 306
    :try_start_3
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 307
    const-string v0, "alternative_lut"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 309
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    iget-object v4, v1, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 314
    :catch_3
    move-exception v0

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 316
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 320
    :cond_16
    const-string v0, "alternative_audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 322
    :try_start_4
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 323
    const-string v0, "alternative_audio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 325
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 326
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v4, v1, Lcom/nexstreaming/nexeditorsdk/e;->C:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 330
    :catch_4
    move-exception v0

    .line 331
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 332
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 336
    :cond_17
    const-string v0, "alternative_audio_pos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 338
    :try_start_5
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 339
    const-string v0, "alternative_audio_pos"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 341
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    iget-object v4, v1, Lcom/nexstreaming/nexeditorsdk/e;->D:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 346
    :catch_5
    move-exception v0

    .line 347
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 348
    iget-object v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_18
    move-object v0, v1

    .line 352
    goto/16 :goto_0

    .line 266
    :cond_19
    const-string/jumbo v0, "transition_duration"

    invoke-static {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    goto/16 :goto_3
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    const-string v0, "effects"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "none"

    goto :goto_0

    .line 719
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transition_duration"

    .line 720
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio_res_pos"

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 723
    :cond_2
    const-string/jumbo v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "speed_control"

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 725
    :cond_3
    const-string v0, "100"

    goto :goto_0

    .line 726
    :cond_4
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    const-string v0, "3000"

    goto :goto_0

    .line 728
    :cond_5
    const-string v0, "duration_max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 729
    const-string v0, "5000"

    goto :goto_0

    .line 730
    :cond_6
    const-string v0, "duration_min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 731
    const-string v0, "2000"

    goto :goto_0

    .line 732
    :cond_7
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "contrast"

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "saturation"

    .line 734
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "color_filter"

    .line 735
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 736
    :cond_8
    const-string v0, "-1"

    goto/16 :goto_0

    .line 737
    :cond_9
    const-string/jumbo v0, "source_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 738
    const-string v0, "ALL"

    goto/16 :goto_0

    .line 739
    :cond_a
    const-string v0, "external_video_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "external_image_path"

    .line 740
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "solid_color"

    .line 741
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "lut"

    .line 742
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 743
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 744
    :cond_c
    const-string/jumbo v0, "vignette"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 745
    const-string v0, "clip,no"

    goto/16 :goto_0

    .line 746
    :cond_d
    const-string v0, "crop_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 747
    const-string v0, "default"

    goto/16 :goto_0

    .line 748
    :cond_e
    const-string/jumbo v0, "transition_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 749
    const-string v0, "none"

    goto/16 :goto_0

    .line 750
    :cond_f
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 751
    const-string v0, ""

    goto/16 :goto_0

    .line 752
    :cond_10
    const-string v0, "freeze_duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 753
    const-string v0, "0"

    goto/16 :goto_0

    .line 754
    :cond_11
    const-string/jumbo v0, "use_particle_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 755
    const-string v0, "1"

    goto/16 :goto_0

    .line 757
    :cond_12
    const-string v0, "default"

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Z)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/d;

    .line 603
    if-eqz p1, :cond_1

    .line 604
    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    const-string v4, "res_default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/d;->b:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 605
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 610
    goto :goto_0

    .line 608
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 613
    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method a(I)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v0

    .line 764
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    return-object v0
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 769
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->k:I

    if-eq v0, v1, :cond_0

    .line 770
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->k:I

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setBrightness(I)Z

    .line 772
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->l:I

    if-eq v0, v1, :cond_1

    .line 773
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->l:I

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setContrast(I)Z

    .line 775
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->m:I

    if-eq v0, v1, :cond_2

    .line 776
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->m:I

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setSaturation(I)Z

    .line 778
    :cond_2
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->n:I

    if-eq v0, v1, :cond_3

    .line 779
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/e;->a(I)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 781
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexClip;F)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 837
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->q:Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    :goto_0
    return-object v4

    .line 841
    :cond_0
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 843
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->t:Ljava/lang/String;

    .line 845
    :cond_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 847
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->s:Ljava/lang/String;

    .line 851
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_3
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 869
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_c

    .line 870
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float v1, v0, v1

    .line 871
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v0

    .line 873
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_6

    .line 874
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_4

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_5

    .line 875
    :cond_4
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v1, v2

    .line 902
    :cond_5
    :goto_2
    sub-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v8, v10

    if-lez v2, :cond_b

    .line 904
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    sget-object v7, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v2, v5, v7}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 911
    :goto_3
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    const-string v7, "Apply default crop mode(%f %f) (%d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 851
    :sswitch_0
    const-string v2, "fill"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "pan_rand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "pan_face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "fit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto/16 :goto_1

    .line 853
    :pswitch_0
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_0

    .line 857
    :pswitch_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_0

    .line 861
    :pswitch_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_0

    .line 865
    :pswitch_3
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_0

    .line 878
    :cond_6
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 881
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRealPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_4
    if-eqz v2, :cond_5

    .line 888
    const-string v7, "Orientation"

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 889
    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 891
    :goto_5
    const/4 v7, 0x6

    if-eq v2, v7, :cond_7

    const/16 v7, 0x8

    if-ne v2, v7, :cond_5

    .line 892
    :cond_7
    const/4 v1, 0x6

    if-ne v2, v1, :cond_8

    .line 893
    const/16 v0, 0x5a

    .line 894
    :cond_8
    const/16 v1, 0x8

    if-ne v2, v1, :cond_9

    .line 895
    const/16 v0, 0x10e

    .line 897
    :cond_9
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v1, v2

    goto/16 :goto_2

    .line 882
    :catch_0
    move-exception v2

    .line 884
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v4

    goto :goto_4

    :cond_a
    move v2, v3

    .line 889
    goto :goto_5

    .line 908
    :cond_b
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    sget-object v7, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v2, v5, v7}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_3

    .line 914
    :cond_c
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v5, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_0

    .line 851
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

.method a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->F:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->F:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 789
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->F:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    .line 794
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateEffectID(I)V

    .line 795
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->G:I

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateAudioPos(I)V

    .line 796
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v2

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v0, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I

    .line 802
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 358
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    const-string v2, "Template applyEffect %s  clip(%d %d) effect(%s) apply_transition(%b) transition(%s, %d)"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 359
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 358
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    .line 362
    if-eqz p3, :cond_0

    .line 364
    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 367
    :cond_0
    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateEffectID(I)V

    .line 371
    :try_start_0
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 373
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->i:I

    if-eq v0, v6, :cond_1

    .line 374
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->i:I

    if-nez v0, :cond_5

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 382
    :cond_1
    :goto_0
    if-nez p5, :cond_2

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->o:I

    if-eq v0, v6, :cond_2

    .line 383
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->o:I

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 386
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    const-string v2, "freeze_duration(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/e;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->p:I

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->p:I

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setFreezeDuration(I)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectNone()V

    .line 398
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectShowTime(II)V

    .line 400
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 401
    invoke-virtual {p0, p2, p4}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexClip;F)Ljava/lang/String;

    .line 402
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/e;->b(Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 404
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    if-gtz v0, :cond_7

    .line 406
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    move-object v0, v1

    .line 425
    :goto_2
    return-object v0

    .line 378
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 379
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->i:I

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 395
    :cond_6
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    goto :goto_1

    .line 411
    :cond_7
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    if-gt v0, v2, :cond_8

    .line 413
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    const-string v2, "Template Apply transition was ignored on short clip"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    move-object v0, v1

    .line 416
    goto :goto_2

    .line 419
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V
    :try_end_1
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 425
    goto :goto_2
.end method

.method public a(IILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    if-nez p2, :cond_0

    iget p2, p0, Lcom/nexstreaming/nexeditorsdk/e;->f:I

    .line 622
    :cond_0
    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    invoke-direct {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;-><init>()V

    .line 623
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setID(I)V

    .line 624
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    shl-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setSubEffectID(I)V

    .line 625
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEffectID(Ljava/lang/String;)V

    .line 631
    :goto_0
    invoke-virtual {v2, p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartTime(I)V

    .line 632
    add-int v0, p1, p2

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndTime(I)V

    .line 633
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setSubTemplateDrawInfos(Ljava/util/List;)V

    .line 635
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    if-lez v0, :cond_3

    .line 639
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    invoke-direct {v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;-><init>()V

    .line 640
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEffectID(Ljava/lang/String;)V

    .line 646
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setIsTransition(I)V

    .line 647
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v0

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartTime(I)V

    .line 648
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndTime(I)V

    .line 652
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 656
    :goto_2
    return-object v0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEffectID(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->H:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEffectID(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 656
    goto :goto_2
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 430
    if-nez p4, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->z:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->A:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->B:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->C:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->C:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 456
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v3

    .line 462
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->D:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 463
    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    invoke-virtual {v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateEffectID(I)V

    .line 464
    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setTemplateAudioPos(I)V

    move v0, v1

    .line 466
    :goto_1
    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 467
    invoke-virtual {p1, v1, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    .line 468
    if-nez v4, :cond_6

    .line 466
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    :cond_6
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v5

    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/e;->a:I

    if-ne v5, v6, :cond_5

    .line 471
    invoke-virtual {p1, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    goto :goto_2

    .line 474
    :cond_7
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v0

    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v2, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v2, "res_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v2, "res_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v2, "res_solid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;F)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 488
    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v1, "res_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    .line 494
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 497
    :cond_0
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Template applyResource2Project file : "

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 501
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 503
    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 504
    const-string v1, "res : "

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 505
    invoke-virtual {p0, p1, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    .line 542
    :cond_1
    :goto_0
    return v3

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v1, "res_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_3

    .line 513
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 516
    :cond_3
    if-eqz v2, :cond_1

    .line 517
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->f:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 518
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 519
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 521
    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 522
    const-string v1, "res : "

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 523
    invoke-virtual {p0, p1, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    goto :goto_0

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    const-string v1, "res_solid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 530
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSolidClip(I)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_1

    .line 532
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->f:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 533
    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 534
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 536
    invoke-virtual {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 537
    const-string v1, "res : "

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/e;->a(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexClip;ZFZ)Ljava/lang/String;

    .line 538
    invoke-virtual {p0, p1, v2}, Lcom/nexstreaming/nexeditorsdk/e;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v3, v5

    .line 542
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method b(Lcom/nexstreaming/nexeditorsdk/nexClip;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 922
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->u:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_0

    .line 926
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/e;->L:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Template applyLUT2Clip effect set =xte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 931
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->h:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->E:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 583
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/e;->J:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->I:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->f:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/e;->K:Ljava/util/List;

    return-object v0
.end method
