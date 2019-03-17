.class public Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;
.super Ljava/lang/Object;
.source "nexBeatTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;,
        Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;,
        Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nexMusicTempMan"

.field private static mAppContext:Landroid/content/Context;

.field private static sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;


# instance fields
.field private externalView_musicTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private m_musicTemplateLock:Ljava/lang/Object;

.field private musicTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->externalView_musicTemplates:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->m_musicTemplateLock:Ljava/lang/Object;

    .line 125
    sput-object p1, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->mAppContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method public static getBeatTemplateManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    .line 133
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    .line 136
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;

    return-object v0
.end method

.method static internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z
    .locals 18

    .prologue
    .line 200
    invoke-static/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->AssetPackageTemplateJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;->Max:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;

    .line 202
    if-eqz v1, :cond_2a

    .line 203
    const v7, 0xa4cb80

    .line 204
    const/4 v6, 0x0

    .line 206
    new-instance v2, Lcom/google/gson_nex/Gson;

    invoke-direct {v2}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 207
    const-class v3, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;

    .line 209
    const/4 v5, -0x1

    .line 210
    const/4 v4, 0x1

    .line 211
    const/4 v3, 0x0

    .line 212
    const/4 v2, 0x0

    .line 213
    iget-object v8, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    .line 214
    if-lez v7, :cond_0

    .line 215
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    sub-int/2addr v11, v7

    if-le v8, v11, :cond_0

    .line 216
    iget v8, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    sub-int/2addr v8, v7

    .line 219
    :cond_0
    iget v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    .line 220
    add-int/lit8 v6, v6, 0x1

    .line 221
    iget-boolean v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    if-nez v11, :cond_1

    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v11, :cond_6

    .line 222
    :cond_1
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    if-eqz v11, :cond_3

    .line 223
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    if-nez v11, :cond_2

    .line 224
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->sc_color_effect_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    .line 227
    :cond_2
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 228
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->sc_clip_effect_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    .line 231
    :cond_3
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v11, :cond_4

    .line 232
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_1
    move v5, v4

    move v4, v3

    move v3, v2

    .line 263
    goto :goto_0

    .line 234
    :cond_4
    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->internal_clip_id:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 235
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 237
    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 241
    :cond_6
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    if-eqz v11, :cond_8

    .line 242
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 243
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->color_filter_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    .line 246
    :cond_7
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    if-nez v11, :cond_8

    .line 247
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->clip_effect_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    .line 251
    :cond_8
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 253
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_9

    .line 254
    const/16 v11, 0x32

    iput v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    .line 257
    :cond_9
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_a

    .line 258
    const/16 v11, 0x32

    iput v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    :cond_a
    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 265
    :cond_b
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    const/4 v7, 0x0

    iput v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    .line 266
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    const/4 v7, 0x0

    iput v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    .line 267
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    .line 269
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    const/4 v7, 0x0

    iput v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    .line 270
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    const/4 v7, 0x0

    iput v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    .line 272
    const/4 v7, 0x0

    .line 273
    const/4 v2, 0x0

    .line 274
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v8

    .line 275
    if-le v8, v5, :cond_c

    .line 276
    sub-int v7, v8, v5

    .line 277
    if-le v7, v4, :cond_c

    .line 278
    sub-int v2, v7, v4

    move v7, v4

    .line 283
    :cond_c
    sget-object v10, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;->Extends:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;

    if-ne v9, v10, :cond_11

    .line 284
    const/4 v2, 0x0

    .line 290
    :cond_d
    :goto_2
    const-string v9, "nexMusicTempMan"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sourceClipCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", recommend="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", extends="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priorityLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eventLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 295
    iget-object v3, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    .line 296
    iget v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v6, :cond_f

    .line 297
    iget v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-gt v6, v7, :cond_e

    .line 298
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    .line 299
    const-string v6, "nexMusicTempMan"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", priority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_f
    iget-boolean v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    if-nez v6, :cond_10

    if-lez v3, :cond_10

    .line 306
    iget-object v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->internal_clip_id:Ljava/lang/String;

    if-nez v6, :cond_10

    .line 307
    iget v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    if-lez v6, :cond_10

    .line 308
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    .line 309
    add-int/lit8 v3, v3, -0x1

    .line 310
    const-string v6, "nexMusicTempMan"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_10
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 285
    :cond_11
    sget-object v10, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;->Recommend:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;

    if-ne v9, v10, :cond_d

    .line 286
    const/4 v7, 0x0

    .line 287
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 317
    :cond_12
    const/4 v3, 0x0

    .line 318
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    .line 319
    const/4 v2, 0x0

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    :goto_4
    if-ge v3, v6, :cond_19

    .line 320
    new-instance v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    const/4 v4, 0x0

    invoke-direct {v7, v4}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$1;)V

    .line 321
    iput v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    .line 322
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    iput-object v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    .line 323
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->internal_clip_id:Ljava/lang/String;

    iput-object v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    .line 324
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-boolean v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    if-eqz v2, :cond_16

    .line 325
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    iput v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 329
    :goto_5
    iget v4, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 331
    iget v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v8, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int v8, v2, v8

    .line 332
    const/16 v2, 0x64

    if-ge v8, v2, :cond_13

    .line 333
    const-string v2, "nexMusicTempMan"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "W["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ") lower duration ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_13
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-boolean v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    if-eqz v2, :cond_17

    .line 337
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    .line 355
    :cond_14
    :goto_6
    iget v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    iget v8, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    if-ge v2, v8, :cond_15

    .line 356
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_15
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_4

    .line 327
    :cond_16
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v4, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    sub-int v2, v4, v2

    iput v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    goto :goto_5

    .line 340
    :cond_17
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    iput-object v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    .line 341
    const/4 v2, 0x0

    iput v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->g:I

    .line 342
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v9, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    add-int/2addr v2, v9

    iput v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    .line 344
    iget v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    const/16 v9, 0x64

    if-ge v2, v9, :cond_18

    .line 345
    if-eqz v3, :cond_18

    .line 346
    const-string v2, "nexMusicTempMan"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "W["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ") lower effect duration ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_18
    iget v2, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    if-ge v8, v2, :cond_14

    .line 351
    const-string v2, "nexMusicTempMan"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "W["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ") higher effect duration ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " < "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput v8, v7, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    goto/16 :goto_6

    .line 359
    :cond_19
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    .line 360
    const-string v4, "nexMusicTempMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "st="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",et="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",sc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ei="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", et="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", is="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 363
    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v11

    .line 364
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 365
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v12

    .line 366
    const/4 v3, 0x0

    .line 367
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getInternalPresetList()[Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v13

    .line 368
    const/4 v5, 0x0

    .line 370
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 371
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v14, :cond_29

    .line 373
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    .line 375
    iget-boolean v4, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    if-eqz v4, :cond_30

    .line 376
    iget-object v4, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    if-nez v4, :cond_30

    .line 377
    add-int/lit8 v3, v3, 0x1

    .line 378
    if-lt v3, v12, :cond_30

    .line 379
    const/4 v3, 0x0

    move v4, v3

    .line 384
    :goto_9
    iget-object v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 385
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget-object v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@assetItem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 392
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_20

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    iget v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v8, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    const/4 v7, 0x0

    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v3, v7, v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 395
    iget-object v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 396
    iget-object v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    const-string v7, "rand"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    aget-object v7, v13, v5

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 398
    add-int/lit8 v3, v5, 0x1

    .line 399
    array-length v5, v13

    if-lt v3, v5, :cond_1b

    .line 400
    const/4 v3, 0x0

    .line 412
    :cond_1b
    :goto_b
    iget-object v5, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_2e

    .line 413
    iget-object v5, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    const-string v7, "none"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2e

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v5

    iget-object v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v5

    iget v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->g:I

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    invoke-virtual {v5, v7, v2}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectShowTime(II)V

    move v2, v6

    .line 371
    :cond_1c
    :goto_c
    add-int/lit8 v6, v2, 0x1

    move v5, v3

    move v3, v4

    goto/16 :goto_8

    .line 388
    :cond_1d
    const/4 v3, 0x1

    invoke-virtual {v11, v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-static {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v11, v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    goto/16 :goto_a

    .line 403
    :cond_1e
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 404
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1f

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    move v3, v5

    .line 406
    goto :goto_b

    .line 418
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_2d

    .line 419
    const/4 v3, 0x1

    invoke-virtual {v11, v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v8

    .line 420
    const/4 v3, 0x1

    invoke-virtual {v11, v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v15

    .line 422
    const/4 v7, 0x0

    .line 423
    iget v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int/2addr v3, v9

    .line 425
    add-int v9, v8, v3

    if-le v9, v15, :cond_2c

    move v2, v6

    move v3, v5

    .line 426
    goto :goto_c

    .line 485
    :cond_21
    const/4 v9, 0x1

    invoke-virtual {v11, v4, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v9

    invoke-static {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v9

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    move-object v9, v2

    move v2, v7

    move v7, v8

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    .line 430
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v8

    add-int v16, v7, v2

    move/from16 v0, v16

    invoke-virtual {v8, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 431
    add-int v8, v7, v2

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    const/4 v7, 0x0

    sget-object v16, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    move-object/from16 v0, v16

    invoke-virtual {v2, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 435
    if-eqz v6, :cond_24

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    aget-object v6, v13, v3

    invoke-virtual {v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 437
    add-int/lit8 v2, v3, 0x1

    .line 438
    array-length v3, v13

    if-lt v2, v3, :cond_2b

    .line 439
    const/4 v2, 0x0

    move v3, v2

    .line 461
    :cond_22
    :goto_e
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 462
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_23

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v2

    iget-object v6, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v2

    iget v6, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->g:I

    iget v7, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->h:I

    invoke-virtual {v2, v6, v7}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectShowTime(II)V

    .line 468
    :cond_23
    add-int/lit8 v6, v5, 0x1

    .line 469
    if-lt v6, v14, :cond_27

    move v2, v6

    .line 488
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 489
    if-lt v4, v12, :cond_1c

    .line 490
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 443
    :cond_24
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 444
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    const-string v6, "rand"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    aget-object v6, v13, v3

    invoke-virtual {v2, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 446
    add-int/lit8 v2, v3, 0x1

    .line 447
    array-length v3, v13

    if-lt v2, v3, :cond_2b

    .line 448
    const/4 v2, 0x0

    move v3, v2

    goto :goto_e

    .line 451
    :cond_25
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 452
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_26

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    goto :goto_e

    .line 473
    :cond_27
    iget-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    if-eqz v2, :cond_28

    .line 474
    const/4 v2, 0x1

    move v5, v2

    .line 479
    :goto_10
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    .line 480
    iget v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int/2addr v7, v9

    .line 482
    add-int v9, v8, v7

    if-le v9, v15, :cond_21

    move v2, v6

    .line 483
    goto :goto_f

    .line 476
    :cond_28
    const/4 v2, 0x0

    move v5, v2

    goto :goto_10

    .line 496
    :cond_29
    iget-object v1, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->string_audio_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 497
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeInTime(I)V

    .line 498
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeOutTime(I)V

    .line 503
    const/4 v1, 0x1

    :goto_11
    return v1

    .line 501
    :cond_2a
    const/4 v1, 0x0

    goto :goto_11

    :cond_2b
    move v3, v2

    goto/16 :goto_e

    :cond_2c
    move-object v9, v2

    move v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    goto/16 :goto_d

    :cond_2d
    move v2, v6

    move v3, v5

    goto/16 :goto_c

    :cond_2e
    move v2, v6

    goto/16 :goto_c

    :cond_2f
    move v3, v5

    goto/16 :goto_b

    :cond_30
    move v4, v3

    goto/16 :goto_9
.end method

.method private resolve(Z)V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->m_musicTemplateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getInstalledAssetItems(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;

    .line 144
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->hidden()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v3

    invoke-static {v3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    :cond_1
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;

    invoke-direct {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 148
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    return-void
.end method


# virtual methods
.method public applyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->getBeatTemplate(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;

    move-result-object v1

    .line 508
    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-static {p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public applyTemplateToProjectById2(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z
    .locals 18

    .prologue
    .line 520
    invoke-static/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->AssetPackageTemplateJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    sget-object v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;->Max:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;

    .line 522
    if-eqz v1, :cond_27

    .line 523
    const v7, 0xa4cb80

    .line 524
    const/4 v6, 0x0

    .line 526
    new-instance v2, Lcom/google/gson_nex/Gson;

    invoke-direct {v2}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 527
    const-class v3, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;

    .line 529
    const/4 v5, -0x1

    .line 530
    const/4 v4, 0x1

    .line 531
    const/4 v3, 0x0

    .line 532
    const/4 v2, 0x0

    .line 533
    iget-object v8, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    .line 534
    if-lez v7, :cond_0

    .line 535
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    sub-int/2addr v11, v7

    if-le v8, v11, :cond_0

    .line 536
    iget v8, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    sub-int/2addr v8, v7

    .line 539
    :cond_0
    iget v7, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    .line 540
    add-int/lit8 v6, v6, 0x1

    .line 541
    iget-boolean v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    if-nez v11, :cond_1

    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v11, :cond_6

    .line 542
    :cond_1
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    if-eqz v11, :cond_3

    .line 543
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    if-nez v11, :cond_2

    .line 544
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->sc_color_effect_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    .line 547
    :cond_2
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 548
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->sc_clip_effect_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    .line 551
    :cond_3
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v11, :cond_4

    .line 552
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_1
    move v5, v4

    move v4, v3

    move v3, v2

    .line 583
    goto :goto_0

    .line 554
    :cond_4
    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->internal_clip_id:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 555
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 557
    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 561
    :cond_6
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    if-eqz v11, :cond_8

    .line 562
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 563
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->color_filter_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    .line 566
    :cond_7
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    if-nez v11, :cond_8

    .line 567
    iget-object v11, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->default_effect:Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;

    iget-object v11, v11, Lcom/nexstreaming/kminternal/json/TemplateMetaData$DefaultEffects;->clip_effect_id:Ljava/lang/String;

    iput-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    .line 571
    :cond_8
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 572
    iget-object v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    const-string v12, "none"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_a

    .line 573
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    if-nez v11, :cond_9

    .line 574
    const/16 v11, 0x32

    iput v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    .line 577
    :cond_9
    iget v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    if-nez v11, :cond_a

    .line 578
    const/16 v11, 0x32

    iput v11, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    :cond_a
    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 585
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v10

    .line 586
    const/4 v7, 0x0

    .line 587
    const/4 v2, 0x0

    .line 589
    if-le v10, v5, :cond_c

    .line 590
    sub-int v7, v10, v5

    .line 591
    if-le v7, v4, :cond_c

    .line 592
    sub-int v2, v7, v4

    move v7, v4

    .line 597
    :cond_c
    sget-object v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;->Extends:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;

    if-ne v9, v11, :cond_e

    .line 598
    const/4 v2, 0x0

    .line 604
    :cond_d
    :goto_2
    const-string v9, "nexMusicTempMan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sourceClipCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", recommend="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", extends="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priorityLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eventLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v3, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 607
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 609
    const/4 v4, 0x0

    .line 610
    const/4 v3, 0x1

    move v5, v3

    move v3, v2

    :goto_3
    add-int/lit8 v2, v6, -0x1

    if-ge v5, v2, :cond_15

    .line 611
    new-instance v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$1;)V

    .line 612
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-boolean v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->b_source_change:Z

    iput-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    .line 614
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-lez v2, :cond_10

    .line 615
    if-nez v7, :cond_f

    move v2, v4

    .line 610
    :goto_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_3

    .line 599
    :cond_e
    sget-object v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;->Recommend:Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$Level;

    if-ne v9, v11, :cond_d

    .line 600
    const/4 v7, 0x0

    .line 601
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 618
    :cond_f
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    if-gt v2, v7, :cond_10

    .line 619
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    .line 620
    const-string v11, "nexMusicTempMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", priority="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_priority:I

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_10
    iget-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    if-nez v2, :cond_11

    if-lez v3, :cond_11

    .line 625
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 626
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    .line 627
    add-int/lit8 v2, v3, -0x1

    .line 628
    const-string v3, "nexMusicTempMan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", event="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 632
    :cond_11
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    iput-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    .line 633
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    iput-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    .line 634
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->internal_clip_id:Ljava/lang/String;

    iput-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    .line 636
    iget-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    if-nez v2, :cond_13

    .line 637
    new-instance v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$1;)V

    .line 638
    iput v4, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    .line 639
    const-string v2, "none"

    iput-object v2, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    .line 640
    const-string v2, "none"

    iput-object v2, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    .line 641
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    iput-object v2, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    .line 642
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v4, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    sub-int v2, v4, v2

    iput v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    .line 643
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    iput-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    .line 644
    iget v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    iput v2, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 645
    iget v4, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v12, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_in_duration:I

    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_effect_out_duration:I

    add-int/2addr v2, v12

    add-int/2addr v2, v4

    iput v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 646
    iget v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 647
    iget v4, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    iget v12, v11, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    if-ge v4, v12, :cond_12

    .line 648
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_12
    :goto_5
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 652
    :cond_13
    iput v4, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    .line 653
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    iput v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 654
    iget v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    iget v11, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    if-lt v2, v11, :cond_14

    move v2, v4

    .line 655
    goto/16 :goto_4

    .line 656
    :cond_14
    iget v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    goto :goto_5

    .line 661
    :cond_15
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$1;)V

    .line 662
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    .line 663
    iput v4, v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    .line 664
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->int_time:I

    iput v2, v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    .line 665
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->clip_effect_id:Ljava/lang/String;

    iput-object v2, v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    .line 666
    iget-object v2, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->list_effectEntries:Ljava/util/ArrayList;

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;

    iget-object v2, v2, Lcom/nexstreaming/kminternal/json/TemplateMetaData$EffectEntry;->color_filter_id:Ljava/lang/String;

    iput-object v2, v3, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    .line 667
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    const-string v2, "nexMusicTempMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s= ,gap duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    .line 670
    const-string v4, "nexMusicTempMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ee="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 673
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v11

    .line 674
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 675
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v12

    .line 676
    const/4 v6, 0x0

    .line 677
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getInternalPresetList()[Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v13

    .line 678
    const/4 v4, 0x0

    .line 681
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 682
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v14, :cond_26

    .line 684
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    .line 685
    iget-object v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 686
    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget-object v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 691
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1d

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    iget v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v8, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v3

    const/4 v7, 0x0

    sget-object v8, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v3, v7, v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 695
    iget-object v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 696
    iget-object v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    const-string v7, "rand"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    aget-object v7, v13, v4

    invoke-virtual {v3, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 698
    add-int/lit8 v3, v4, 0x1

    .line 699
    array-length v4, v13

    if-lt v3, v4, :cond_17

    .line 700
    const/4 v3, 0x0

    .line 712
    :cond_17
    :goto_9
    iget-object v4, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 713
    iget-object v4, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    const-string v7, "none"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v4

    iget-object v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 791
    :cond_18
    :goto_a
    iget-boolean v4, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    if-eqz v4, :cond_29

    .line 792
    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->f:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 793
    add-int/lit8 v2, v6, 0x1

    .line 794
    if-lt v2, v12, :cond_28

    .line 795
    const/4 v2, 0x0

    move v4, v2

    move v2, v5

    .line 682
    :cond_19
    :goto_b
    add-int/lit8 v5, v2, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_7

    .line 688
    :cond_1a
    const/4 v3, 0x1

    invoke-virtual {v11, v6, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-static {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    goto :goto_8

    .line 703
    :cond_1b
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 704
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1c

    .line 705
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    move v3, v4

    .line 706
    goto :goto_9

    .line 717
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_2c

    .line 718
    const/4 v3, 0x1

    invoke-virtual {v11, v6, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v8

    .line 719
    const/4 v3, 0x1

    invoke-virtual {v11, v6, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v15

    .line 721
    const/4 v7, 0x0

    .line 722
    iget v3, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int/2addr v3, v9

    .line 724
    add-int v9, v8, v3

    if-le v9, v15, :cond_2b

    move v2, v5

    move v3, v4

    move v4, v6

    .line 725
    goto :goto_b

    .line 783
    :cond_1e
    const/4 v9, 0x1

    invoke-virtual {v11, v6, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v9

    invoke-static {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    move-object v9, v2

    move v2, v7

    move v7, v8

    move/from16 v17, v4

    move v4, v5

    move/from16 v5, v17

    .line 729
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v8

    add-int v16, v7, v2

    move/from16 v0, v16

    invoke-virtual {v8, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 730
    add-int v8, v7, v2

    .line 732
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v2

    const/4 v7, 0x0

    sget-object v16, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    move-object/from16 v0, v16

    invoke-virtual {v2, v7, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 734
    if-eqz v5, :cond_21

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    aget-object v5, v13, v3

    invoke-virtual {v2, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 736
    add-int/lit8 v2, v3, 0x1

    .line 737
    array-length v3, v13

    if-lt v2, v3, :cond_2a

    .line 738
    const/4 v2, 0x0

    move v3, v2

    .line 760
    :cond_1f
    :goto_d
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 761
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v2

    iget-object v5, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 766
    :cond_20
    add-int/lit8 v5, v4, 0x1

    .line 767
    if-lt v5, v14, :cond_24

    move v2, v5

    .line 785
    :goto_e
    add-int/lit8 v4, v6, 0x1

    .line 786
    if-lt v4, v12, :cond_19

    .line 787
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 742
    :cond_21
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 743
    iget-object v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    const-string v5, "rand"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    aget-object v5, v13, v3

    invoke-virtual {v2, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 745
    add-int/lit8 v2, v3, 0x1

    .line 746
    array-length v3, v13

    if-lt v2, v3, :cond_2a

    .line 747
    const/4 v2, 0x0

    move v3, v2

    goto :goto_d

    .line 750
    :cond_22
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 751
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_23

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    goto :goto_d

    .line 771
    :cond_24
    iget-boolean v2, v9, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->e:Z

    if-eqz v2, :cond_25

    .line 772
    const/4 v2, 0x1

    move v4, v2

    .line 777
    :goto_f
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;

    .line 778
    iget v7, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->b:I

    iget v9, v2, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$a;->a:I

    sub-int/2addr v7, v9

    .line 780
    add-int v9, v8, v7

    if-le v9, v15, :cond_1e

    move v2, v5

    .line 781
    goto :goto_e

    .line 774
    :cond_25
    const/4 v2, 0x0

    move v4, v2

    goto :goto_f

    .line 801
    :cond_26
    iget-object v1, v1, Lcom/nexstreaming/kminternal/json/TemplateMetaData$Music;->string_audio_id:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 802
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeInTime(I)V

    .line 803
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setProjectAudioFadeOutTime(I)V

    .line 809
    const/4 v1, 0x1

    :goto_10
    return v1

    .line 806
    :cond_27
    const/4 v1, 0x0

    goto :goto_10

    :cond_28
    move v4, v2

    move v2, v5

    goto/16 :goto_b

    :cond_29
    move v2, v5

    move v4, v6

    goto/16 :goto_b

    :cond_2a
    move v3, v2

    goto/16 :goto_d

    :cond_2b
    move-object v9, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    move v7, v8

    goto/16 :goto_c

    :cond_2c
    move v3, v4

    goto/16 :goto_a

    :cond_2d
    move v3, v4

    goto/16 :goto_9
.end method

.method public getBeatTemplate(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->m_musicTemplateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;

    .line 164
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 165
    monitor-exit v1

    .line 168
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBeatTemplates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->m_musicTemplateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->externalView_musicTemplates:Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->externalView_musicTemplates:Ljava/util/List;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->externalView_musicTemplates:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadTemplate()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->resolve(Z)V

    .line 155
    return-void
.end method

.method public loadTemplate(Z)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->resolve(Z)V

    .line 159
    return-void
.end method

.method updateBeatTemplate(ZLcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Z
    .locals 6

    .prologue
    .line 813
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->m_musicTemplateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    const/4 v2, 0x0

    .line 815
    :try_start_0
    const-string v0, "nexMusicTempMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMusicTemplate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-eqz p1, :cond_1

    .line 817
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->hidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;

    invoke-direct {v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 819
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_0
    :goto_0
    monitor-exit v1

    return v2

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;

    .line 823
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager$BeatTemplate;->id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 824
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->musicTemplates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
