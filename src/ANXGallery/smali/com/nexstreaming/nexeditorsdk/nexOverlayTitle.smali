.class final Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;
.super Ljava/lang/Object;
.source "nexOverlayTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$TitleInfoListener;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "nexOverlayTitle"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->h:I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->g:Ljava/util/ArrayList;

    .line 129
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    :try_start_0
    const-string v0, "overlay_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->b:Ljava/lang/String;

    .line 148
    const-string v0, "overlay_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->c:Ljava/lang/String;

    .line 149
    const-string v0, "overlay_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->d:Ljava/lang/String;

    .line 150
    const-string v0, "overlay_priority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pasrse Overlay info failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 845
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 846
    if-nez v1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-object v0

    .line 850
    :cond_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v1, v2, :cond_0

    .line 851
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$TitleInfoListener;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 162
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 164
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pasrse Overlay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "text"

    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    const-string/jumbo v0, "text_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "text_desc"

    const-string/jumbo v1, "text_desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    const-string/jumbo v0, "text_max_len"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "text_max_len"

    const-string/jumbo v1, "text_max_len"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "position"

    const-string v1, "position"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_3
    const-string/jumbo v0, "start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "start_time"

    const-string/jumbo v1, "start_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_4
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "duration"

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_5
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "font"

    const-string v1, "font"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_6
    const-string v0, "font_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "font_size"

    const-string v1, "font_size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_7
    const-string/jumbo v0, "text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "text_color"

    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_8
    const-string/jumbo v0, "shadow_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "shadow_color"

    const-string/jumbo v1, "shadow_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_9
    const-string/jumbo v0, "shadow_visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "shadow_visible"

    const-string/jumbo v1, "shadow_visible"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_a
    const-string v0, "glow_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "glow_color"

    const-string v1, "glow_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_b
    const-string v0, "glow_visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "glow_visible"

    const-string v1, "glow_visible"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_c
    const-string v0, "outline_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "outline_color"

    const-string v1, "outline_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_d
    const-string v0, "outline_visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "outline_visible"

    const-string v1, "outline_visible"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_e
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "align"

    const-string v1, "align"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_f
    const-string v0, "animation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "animation"

    const-string v1, "animation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_10
    const-string v0, "adjust_animation_non_sub"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "adjust_animation_non_sub"

    const-string v1, "adjust_animation_non_sub"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_11
    const-string v0, "rotate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "rotate"

    const-string v1, "rotate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_12
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "scale"

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_13
    const-string v0, "group"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "group"

    const-string v1, "group"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_14
    const-string v0, "adjust_pos_non_sub"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "adjust_pos_non_sub"

    const-string v1, "adjust_pos_non_sub"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_15
    const-string v0, "adjust_align_non_sub"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "adjust_align_non_sub"

    const-string v1, "adjust_align_non_sub"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_16
    const-string v0, "image_res"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "image_res"

    const-string v1, "image_res"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_17
    const-string/jumbo v0, "start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 199
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    if-ne v0, v1, :cond_1a

    .line 214
    :cond_18
    :goto_0
    if-eqz p2, :cond_19

    const-string/jumbo v0, "text"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 215
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    const-string/jumbo v0, "text_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    const-string v0, "group"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "group"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    :goto_1
    const-string/jumbo v0, "text_max_len"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 220
    const-string v0, "font_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 226
    const-string v0, "position"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_1f

    .line 233
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 236
    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 237
    const/4 v11, 0x3

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    sub-int/2addr v8, v1

    .line 239
    sub-int v9, v0, v9

    .line 243
    :goto_2
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->h:I

    move-object v0, p2

    invoke-interface/range {v0 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$TitleInfoListener;->OnTitleInfoListener(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 246
    :cond_19
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->h:I

    .line 247
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 200
    :cond_1a
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    if-ne v0, v1, :cond_1b

    .line 201
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 250
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 203
    :cond_1b
    :try_start_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    goto/16 :goto_0

    .line 205
    :cond_1c
    const-string/jumbo v0, "start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 206
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    if-eq v0, v1, :cond_18

    .line 207
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    if-ne v0, v1, :cond_1d

    .line 208
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    goto/16 :goto_0

    .line 210
    :cond_1d
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->f:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    goto/16 :goto_0

    .line 218
    :cond_1e
    const-string v7, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_1f
    move v9, v3

    goto :goto_2
.end method


# virtual methods
.method a(ILjava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 688
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;

    .line 689
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getFontSize()I

    move-result v0

    .line 692
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontSize() id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FontSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-gtz v0, :cond_1

    .line 700
    :goto_0
    return p3

    :cond_1
    move p3, v0

    .line 696
    goto :goto_0

    .line 699
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFontSize() id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultFontSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 741
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;

    .line 742
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getGroup()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getFontSize()I

    move-result p3

    .line 750
    :cond_1
    return p3
.end method

.method a(Z)I
    .locals 5

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 769
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 770
    const-string/jumbo v1, "start_time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 771
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 773
    if-eqz p1, :cond_2

    .line 774
    if-ltz v1, :cond_0

    .line 777
    if-ge v2, v0, :cond_1

    :goto_1
    move v2, v0

    .line 778
    goto :goto_0

    :cond_1
    move v0, v2

    .line 777
    goto :goto_1

    .line 781
    :cond_2
    if-gez v1, :cond_0

    .line 784
    if-ge v2, v0, :cond_3

    :goto_2
    move v2, v0

    .line 785
    goto :goto_0

    :cond_3
    move v0, v2

    .line 784
    goto :goto_2

    .line 786
    :cond_4
    return v2
.end method

.method a(Ljava/lang/String;)Landroid/animation/TimeInterpolator;
    .locals 2

    .prologue
    .line 807
    .line 808
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 837
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 841
    :goto_1
    return-object v0

    .line 808
    :sswitch_0
    const-string v1, "AccelerateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "AnticipateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "AnticipateOvershootInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "BounceInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "CycleInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "DecelerateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "LinearInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "OvershootInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 811
    :pswitch_0
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1

    .line 814
    :pswitch_1
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_1

    .line 817
    :pswitch_2
    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    goto :goto_1

    .line 820
    :pswitch_3
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_1

    .line 823
    :pswitch_4
    new-instance v0, Landroid/view/animation/CycleInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    goto :goto_1

    .line 826
    :pswitch_5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    .line 829
    :pswitch_6
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1

    .line 832
    :pswitch_7
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto/16 :goto_1

    .line 808
    :sswitch_data_0
    .sparse-switch
        -0x5bbc84bd -> :sswitch_5
        -0x4f21868f -> :sswitch_1
        -0x4c093fee -> :sswitch_7
        -0x455ba138 -> :sswitch_2
        -0x87f9f9c -> :sswitch_0
        0x235958ac -> :sswitch_6
        0x5469c38f -> :sswitch_3
        0x64414cad -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method a(ILjava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 705
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;

    .line 706
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getFontID()Ljava/lang/String;

    move-result-object p3

    .line 711
    :cond_1
    return-object p3
.end method

.method public a(Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)Ljava/lang/String;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nexstreaming/nexeditorsdk/nexProject;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->b(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    move-result-object v24

    .line 295
    const/4 v6, 0x0

    .line 296
    const/4 v5, 0x0

    .line 297
    const/4 v4, 0x0

    .line 298
    const/4 v3, 0x0

    .line 300
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move v7, v4

    move-object v8, v6

    move v6, v3

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/util/HashMap;

    .line 302
    const/4 v9, 0x0

    .line 304
    const-string/jumbo v3, "type"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 306
    const-string/jumbo v3, "title"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 307
    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v10, "_1"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 308
    if-nez v8, :cond_0

    .line 309
    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v14

    .line 311
    if-eqz v14, :cond_28

    const-string v3, "adjust_pos_non_sub"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 313
    const-string v3, "adjust_pos_non_sub"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 314
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 315
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 316
    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v12, v6

    move v13, v7

    move-object v15, v5

    .line 336
    :goto_1
    if-eqz v14, :cond_1

    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "_2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    .line 337
    goto/16 :goto_0

    .line 318
    :cond_0
    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 319
    const-string v3, "group"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 321
    const/4 v7, 0x0

    .line 322
    const/4 v6, 0x0

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v14

    .line 325
    if-eqz v14, :cond_28

    const-string v3, "adjust_pos_non_sub"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 327
    const-string v3, "adjust_pos_non_sub"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 328
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 329
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 330
    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v12, v6

    move v13, v7

    move-object v15, v5

    goto :goto_1

    .line 339
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v3, :pswitch_data_0

    move-object/from16 v16, v9

    .line 520
    :goto_3
    if-nez v16, :cond_1b

    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    .line 521
    goto/16 :goto_0

    .line 339
    :sswitch_0
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 342
    :pswitch_0
    const-string v3, "id"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 343
    const-string/jumbo v3, "text"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 344
    const-string/jumbo v4, "text_max_len"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 345
    const-string v4, "position"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 346
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 348
    if-nez v4, :cond_3

    .line 349
    const-string v3, "Wrong position data of title"

    .line 667
    :goto_4
    return-object v3

    .line 354
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 355
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 357
    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 358
    const/4 v8, 0x3

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 360
    add-int v8, v5, v6

    div-int/lit8 v22, v8, 0x2

    .line 361
    add-int v8, v7, v4

    div-int/lit8 v21, v8, 0x2

    .line 363
    sub-int/2addr v6, v5

    .line 364
    sub-int v7, v4, v7

    .line 366
    const-string/jumbo v4, "start_time"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 367
    const-string v4, "duration"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 369
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_4

    if-ltz v20, :cond_5

    :cond_4
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_6

    if-ltz v20, :cond_6

    .line 372
    :cond_5
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    const-string v4, "Apply title skip(%s %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    .line 373
    goto/16 :goto_0

    .line 376
    :cond_6
    const-string v4, "font"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 378
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(ILjava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 380
    const-string v4, "font_size"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(ILjava/util/List;I)I

    move-result v5

    .line 381
    const-string/jumbo v4, "text_color"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    .line 382
    if-le v5, v7, :cond_7

    .line 383
    add-int/lit8 v4, v7, -0x4

    move v5, v4

    .line 387
    :cond_7
    const-string/jumbo v4, "shadow_visible"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 388
    :goto_5
    const-string/jumbo v4, "shadow_color"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    .line 390
    const-string v4, "glow_visible"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_b

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 391
    :goto_6
    const-string v4, "glow_color"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v30

    .line 392
    const-string v4, "outline_visible"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 393
    :goto_7
    const-string v4, "outline_color"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    .line 395
    const-string v4, "align"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 397
    if-eqz v14, :cond_8

    const-string v8, "adjust_align_non_sub"

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 398
    const-string v4, "adjust_align_non_sub"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 400
    :cond_8
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 401
    const-string v10, "LEFT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 402
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v19, v8

    .line 407
    :goto_8
    const/4 v10, 0x1

    .line 409
    const-string v8, "MIDDLE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 410
    const/4 v10, 0x2

    .line 417
    :cond_9
    :goto_9
    if-eqz v14, :cond_f

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v15, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v15, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/lang/String;Ljava/util/List;I)I

    move-result v5

    .line 421
    add-int v8, v22, v13

    .line 422
    add-int v4, v21, v12

    move/from16 v21, v5

    move/from16 v22, v4

    move/from16 v23, v8

    move-object v5, v3

    .line 429
    :goto_a
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_10

    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    .line 431
    goto/16 :goto_0

    .line 387
    :cond_a
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_5

    .line 390
    :cond_b
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_6

    .line 392
    :cond_c
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_7

    .line 403
    :cond_d
    const-string v10, "RIGHT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 404
    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v19, v8

    goto :goto_8

    .line 412
    :cond_e
    const-string v8, "BOTTOM"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 413
    const/4 v10, 0x3

    goto :goto_9

    .line 426
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->b(ILjava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v5

    move-object v5, v3

    goto :goto_a

    .line 434
    :cond_10
    if-gez v20, :cond_11

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v3

    if-ge v3, v9, :cond_15

    .line 436
    const/4 v4, 0x0

    .line 437
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v3

    move v9, v3

    move/from16 v20, v4

    .line 443
    :cond_11
    :goto_b
    new-instance v3, Lcom/nexstreaming/app/common/util/q;

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/app/common/util/q;-><init>(Landroid/content/Context;Ljava/lang/String;IIF)V

    .line 445
    new-instance v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    new-instance v5, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;-><init>(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;)V

    add-int v9, v9, v20

    move/from16 v6, v23

    move/from16 v7, v22

    move/from16 v8, v20

    invoke-direct/range {v4 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IIII)V

    .line 447
    move/from16 v0, v21

    int-to-float v6, v0

    move-object v5, v3

    move/from16 v7, v28

    move-object/from16 v8, v19

    move-object/from16 v9, v27

    invoke-virtual/range {v5 .. v10}, Lcom/nexstreaming/app/common/util/q;->a(FILandroid/graphics/Paint$Align;Ljava/lang/String;I)V

    .line 449
    if-eqz v16, :cond_12

    .line 450
    const/high16 v8, 0x40a00000    # 5.0f

    .line 451
    const/high16 v9, 0x40400000    # 3.0f

    .line 452
    const/high16 v10, 0x40400000    # 3.0f

    .line 453
    const/4 v6, 0x1

    move-object v5, v3

    move/from16 v7, v29

    invoke-virtual/range {v5 .. v10}, Lcom/nexstreaming/app/common/util/q;->a(ZIFFF)V

    .line 455
    :cond_12
    if-eqz v17, :cond_13

    .line 456
    const/high16 v5, 0x41000000    # 8.0f

    .line 457
    const/4 v6, 0x1

    move/from16 v0, v30

    invoke-virtual {v3, v6, v0, v5}, Lcom/nexstreaming/app/common/util/q;->b(ZIF)V

    .line 459
    :cond_13
    if-eqz v18, :cond_14

    .line 460
    const/high16 v5, 0x3f800000    # 1.0f

    .line 461
    const/4 v6, 0x1

    move/from16 v0, v31

    invoke-virtual {v3, v6, v0, v5}, Lcom/nexstreaming/app/common/util/q;->a(ZIF)V

    .line 463
    :cond_14
    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/nexstreaming/app/common/util/q;->a(I)V

    move-object/from16 v16, v4

    .line 465
    goto/16 :goto_3

    .line 439
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v3

    sub-int/2addr v3, v9

    move/from16 v20, v3

    goto :goto_b

    .line 469
    :pswitch_1
    const-string v3, "id"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 470
    const-string v3, "position"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 473
    if-nez v3, :cond_16

    .line 474
    const-string v3, "Wrong position data of title"

    goto/16 :goto_4

    .line 479
    :cond_16
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 480
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 482
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 483
    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 485
    add-int v5, v4, v8

    div-int/lit8 v5, v5, 0x2

    .line 486
    add-int v6, v7, v3

    div-int/lit8 v6, v6, 0x2

    .line 488
    sub-int v4, v8, v4

    .line 489
    sub-int/2addr v3, v7

    .line 491
    const-string/jumbo v3, "start_time"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 492
    const-string v3, "duration"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 494
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_17

    if-ltz v7, :cond_18

    :cond_17
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_19

    if-ltz v7, :cond_19

    .line 497
    :cond_18
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    const-string v4, "Apply image res skip(%s %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    .line 498
    goto/16 :goto_0

    .line 501
    :cond_19
    if-gez v7, :cond_24

    .line 502
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v4

    if-ge v4, v3, :cond_1a

    .line 503
    const/4 v7, 0x0

    .line 504
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v3

    move v8, v3

    .line 510
    :goto_c
    const-string v3, "image_res"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 512
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->b(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v4

    .line 514
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    add-int/2addr v8, v7

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IIII)V

    move-object/from16 v16, v3

    .line 516
    goto/16 :goto_3

    .line 506
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v4

    sub-int v7, v4, v3

    move v8, v3

    goto :goto_c

    .line 523
    :cond_1b
    const-string v3, "rotate"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 525
    const-string v3, "rotate"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 526
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setRotate(F)V

    .line 531
    :cond_1c
    const-string v3, "scale"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 533
    const-string v3, "scale"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 534
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 536
    if-eqz v3, :cond_1d

    .line 537
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 538
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 539
    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 541
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setScale(FFF)V

    .line 545
    :cond_1d
    invoke-virtual/range {v16 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->clearAnimate()V

    .line 547
    const-string v3, "animation"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 549
    if-eqz v14, :cond_1e

    const-string v4, "adjust_animation_non_sub"

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 550
    const-string v3, "adjust_animation_non_sub"

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 553
    :cond_1e
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 555
    const/4 v3, 0x0

    move v10, v3

    :goto_d
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v10, v3, :cond_22

    .line 556
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 558
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    const-string/jumbo v5, "values"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 561
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_1f
    :goto_e
    packed-switch v3, :pswitch_data_1

    .line 555
    :cond_20
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_d

    .line 561
    :sswitch_2
    const-string v5, "move"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x0

    goto :goto_e

    :sswitch_3
    const-string v5, "alpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x1

    goto :goto_e

    :sswitch_4
    const-string v5, "scale"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x2

    goto :goto_e

    :sswitch_5
    const-string v5, "rotate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x3

    goto :goto_e

    .line 563
    :pswitch_2
    const/4 v3, 0x0

    move v9, v3

    :goto_f
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v9, v3, :cond_20

    .line 564
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 566
    const-string v4, "motion_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 568
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object v18

    .line 570
    const-string/jumbo v4, "start_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 571
    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 573
    const-string/jumbo v5, "start_x"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 574
    const-string v6, "end_x"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 575
    const-string/jumbo v7, "start_y"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 576
    const-string v8, "end_y"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 580
    sub-int v20, v4, v19

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;FFFF)V

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getMove(IILcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v3

    .line 600
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v3

    .line 580
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 563
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_f

    .line 605
    :pswitch_3
    const/4 v3, 0x0

    :goto_10
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 606
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 608
    const-string v5, "motion_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 609
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    .line 611
    const-string/jumbo v6, "start_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 612
    const-string v7, "end_time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 614
    const-string/jumbo v8, "start"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 615
    const-string v9, "end"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 617
    sub-int/2addr v7, v6

    invoke-static {v6, v7, v8, v4}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 605
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 621
    :pswitch_4
    const/4 v3, 0x0

    move v9, v3

    :goto_11
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v9, v3, :cond_20

    .line 622
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 624
    const-string v3, "motion_type"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object v18

    .line 627
    const-string/jumbo v3, "start_time"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 628
    const-string v5, "end_time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 630
    const-string/jumbo v5, "start_x"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 631
    const-string v6, "end_x"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 632
    const-string/jumbo v6, "start_y"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 633
    const-string v8, "end_y"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 635
    sub-int v4, v19, v3

    invoke-static/range {v3 .. v8}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getScale(IIFFFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 621
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_11

    .line 639
    :pswitch_5
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_20

    .line 640
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 642
    const-string v3, "motion_type"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object v6

    .line 644
    const-string/jumbo v3, "start_time"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 645
    const-string v3, "end_time"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 647
    const-string v3, "clockwise"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_21

    const/4 v3, 0x1

    .line 648
    :goto_13
    const-string v9, "rotatedegree"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 650
    sub-int/2addr v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v5, v9}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getRotate(IIZFLcom/nexstreaming/nexeditorsdk/nexAnimate$MoveTrackingPath;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_12

    .line 647
    :cond_21
    const/4 v3, 0x0

    goto :goto_13

    .line 656
    :catch_0
    move-exception v3

    .line 657
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 659
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyOverlayAsset failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 663
    :cond_22
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setOverlayTitle(Z)V

    .line 664
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    .line 665
    goto/16 :goto_0

    .line 667
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_24
    move v8, v3

    goto/16 :goto_c

    :cond_25
    move v6, v12

    move v7, v13

    move v5, v14

    move-object v8, v15

    goto/16 :goto_0

    :cond_26
    move-object/from16 v19, v8

    goto/16 :goto_8

    :cond_27
    move v12, v6

    move v13, v7

    move v14, v5

    move-object v15, v8

    goto/16 :goto_1

    :cond_28
    move v12, v6

    move v13, v7

    move-object v15, v5

    goto/16 :goto_1

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x5faa95b -> :sswitch_1
        0x6942258 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 561
    :sswitch_data_1
    .sparse-switch
        -0x372522a5 -> :sswitch_5
        0x333bd1 -> :sswitch_2
        0x589b15e -> :sswitch_3
        0x683094a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 671
    if-nez p1, :cond_0

    const-string v0, "Null project"

    .line 684
    :goto_0
    return-object v0

    .line 672
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    .line 675
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 677
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayTitle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 678
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 682
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->removeOverlay(I)Z

    goto :goto_2

    .line 684
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 727
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;

    .line 728
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getGroup()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 733
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v0

    .line 736
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$TitleInfoListener;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "parseOverlayAssetInfo parse error"

    .line 286
    :goto_0
    return-object v0

    .line 264
    :cond_0
    :try_start_0
    const-string v0, "overlay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 265
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 267
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 269
    invoke-direct {p0, v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->b(Lorg/json/JSONObject;Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$TitleInfoListener;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 272
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay parse error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 279
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 281
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseOverlayAsset failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 285
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a:Ljava/lang/String;

    const-string v1, "parseOverlayAsset end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 756
    .line 757
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;

    .line 758
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_1
    move v1, v0

    .line 762
    goto :goto_0

    .line 763
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method b(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;
    .locals 3

    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v0

    .line 793
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Z)I

    move-result v1

    .line 794
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Z)I

    move-result v2

    .line 796
    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 797
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    .line 802
    :goto_0
    return-object v0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->e:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    goto :goto_0

    .line 802
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    goto :goto_0
.end method

.method b(ILjava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 716
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;

    .line 717
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;->getText()Ljava/lang/String;

    move-result-object p3

    .line 722
    :cond_1
    return-object p3
.end method
