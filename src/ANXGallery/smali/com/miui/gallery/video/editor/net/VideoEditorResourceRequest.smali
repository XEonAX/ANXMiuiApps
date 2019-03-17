.class public Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;
.super Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;
.source "VideoEditorResourceRequest.java"


# instance fields
.field private final RESOURCE_AUDIO_PARENT_ID:J

.field private final RESOURCE_SMARTEFFECT_PARENT_ID:J

.field private final RESOURCE_TEXT_PARENT_ID:J

.field private mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;


# direct methods
.method public constructor <init>(ILcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "factory"    # Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/net/VideoEditorBaseResourceRequest;-><init>(I)V

    .line 18
    const-wide v0, 0x21c652595e00c0L

    iput-wide v0, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->RESOURCE_SMARTEFFECT_PARENT_ID:J

    .line 19
    const-wide v0, 0x21c6baa0e20020L

    iput-wide v0, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->RESOURCE_AUDIO_PARENT_ID:J

    .line 20
    const-wide v0, 0x21a3b76ff200a0L

    iput-wide v0, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->RESOURCE_TEXT_PARENT_ID:J

    .line 25
    iput-object p2, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .line 26
    return-void
.end method


# virtual methods
.method protected getParentId()J
    .locals 3

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .local v0, "mSelectResourceId":J
    iget v2, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 45
    :goto_0
    return-wide v0

    .line 36
    :sswitch_0
    const-wide v0, 0x21c652595e00c0L

    .line 37
    goto :goto_0

    .line 39
    :sswitch_1
    const-wide v0, 0x21c6baa0e20020L

    .line 40
    goto :goto_0

    .line 42
    :sswitch_2
    const-wide v0, 0x21a3b76ff200a0L

    goto :goto_0

    .line 34
    :sswitch_data_0
    .sparse-switch
        0x7f120030 -> :sswitch_1
        0x7f120035 -> :sswitch_0
        0x7f120038 -> :sswitch_2
    .end sparse-switch
.end method

.method protected newLocalResource()Lcom/miui/gallery/video/editor/model/LocalResource;
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->type:I

    const v1, 0x7f120035

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;-><init>(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    .line 59
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget v0, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->type:I

    const v1, 0x7f120038

    if-ne v0, v1, :cond_1

    .line 57
    new-instance v0, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;-><init>(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;-><init>(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    goto :goto_0
.end method

.method protected setResult(Lcom/miui/gallery/video/editor/model/LocalResource;)V
    .locals 14
    .param p1, "resource"    # Lcom/miui/gallery/video/editor/model/LocalResource;

    .prologue
    .line 65
    instance-of v13, p1, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;

    if-eqz v13, :cond_0

    move-object v10, p1

    .line 66
    check-cast v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;

    .line 67
    .local v10, "smartEffectLocalResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    const/4 v5, 0x0

    .line 69
    .local v5, "extraObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v13, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->extra:Ljava/lang/String;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v5    # "extraObject":Lorg/json/JSONObject;
    .local v6, "extraObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v13, "assetid"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "assetId":Ljava/lang/String;
    const-string/jumbo v13, "update"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "update":Ljava/lang/String;
    const-string v13, "assetName"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "assetName":Ljava/lang/String;
    const-string v13, "longTime"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "longTime":Ljava/lang/String;
    const-string/jumbo v13, "shortTime"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "shortTime":Ljava/lang/String;
    const-string v13, "hasSpeedChange"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "hasSpeedChange":Ljava/lang/String;
    const-string v13, "enName"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "enName":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->assetId:Ljava/lang/String;

    .line 79
    invoke-static {v11}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->update:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->assetName:Ljava/lang/String;

    .line 81
    invoke-static {v8}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->longTime:Ljava/lang/String;

    .line 82
    invoke-static {v9}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->shortTime:Ljava/lang/String;

    .line 83
    invoke-static {v7}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->hasSpeedChange:Ljava/lang/String;

    .line 84
    invoke-static {v4}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;->enName:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 90
    .end local v0    # "assetId":Ljava/lang/String;
    .end local v1    # "assetName":Ljava/lang/String;
    .end local v4    # "enName":Ljava/lang/String;
    .end local v6    # "extraObject":Lorg/json/JSONObject;
    .end local v7    # "hasSpeedChange":Ljava/lang/String;
    .end local v8    # "longTime":Ljava/lang/String;
    .end local v9    # "shortTime":Ljava/lang/String;
    .end local v10    # "smartEffectLocalResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    .end local v11    # "update":Ljava/lang/String;
    :cond_0
    :goto_0
    instance-of v13, p1, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;

    if-eqz v13, :cond_1

    move-object v12, p1

    .line 91
    check-cast v12, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;

    .line 92
    .local v12, "waterMarkLocalResource":Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
    const/4 v5, 0x0

    .line 94
    .restart local v5    # "extraObject":Lorg/json/JSONObject;
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    iget-object v13, p1, Lcom/miui/gallery/video/editor/model/LocalResource;->extra:Ljava/lang/String;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .end local v5    # "extraObject":Lorg/json/JSONObject;
    .restart local v6    # "extraObject":Lorg/json/JSONObject;
    :try_start_3
    const-string v13, "assetid"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "assetId":Ljava/lang/String;
    const-string/jumbo v13, "update"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 97
    .restart local v11    # "update":Ljava/lang/String;
    const-string v13, "assetName"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .restart local v1    # "assetName":Ljava/lang/String;
    const-string v13, "cn"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "cn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, ""

    :goto_1
    iput-object v13, v12, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;->assetId:Ljava/lang/String;

    .line 100
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, ""

    :goto_2
    iput-object v13, v12, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;->update:Ljava/lang/String;

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, ""

    :goto_3
    iput-object v13, v12, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;->assetName:Ljava/lang/String;

    .line 102
    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getTrimedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->parseIntFromStr(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;->isInternational:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 107
    .end local v0    # "assetId":Ljava/lang/String;
    .end local v1    # "assetName":Ljava/lang/String;
    .end local v2    # "cn":Ljava/lang/String;
    .end local v6    # "extraObject":Lorg/json/JSONObject;
    .end local v11    # "update":Ljava/lang/String;
    .end local v12    # "waterMarkLocalResource":Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
    :cond_1
    :goto_4
    return-void

    .line 85
    .restart local v5    # "extraObject":Lorg/json/JSONObject;
    .restart local v10    # "smartEffectLocalResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Lorg/json/JSONException;
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "extraObject":Lorg/json/JSONObject;
    .end local v10    # "smartEffectLocalResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    .restart local v0    # "assetId":Ljava/lang/String;
    .restart local v1    # "assetName":Ljava/lang/String;
    .restart local v2    # "cn":Ljava/lang/String;
    .restart local v6    # "extraObject":Lorg/json/JSONObject;
    .restart local v11    # "update":Ljava/lang/String;
    .restart local v12    # "waterMarkLocalResource":Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v13

    goto :goto_3

    .line 103
    .end local v0    # "assetId":Ljava/lang/String;
    .end local v1    # "assetName":Ljava/lang/String;
    .end local v2    # "cn":Ljava/lang/String;
    .end local v6    # "extraObject":Lorg/json/JSONObject;
    .end local v11    # "update":Ljava/lang/String;
    .restart local v5    # "extraObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 104
    .restart local v3    # "e":Lorg/json/JSONException;
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 103
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "extraObject":Lorg/json/JSONObject;
    .restart local v6    # "extraObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "extraObject":Lorg/json/JSONObject;
    .restart local v5    # "extraObject":Lorg/json/JSONObject;
    goto :goto_6

    .line 85
    .end local v5    # "extraObject":Lorg/json/JSONObject;
    .end local v12    # "waterMarkLocalResource":Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
    .restart local v6    # "extraObject":Lorg/json/JSONObject;
    .restart local v10    # "smartEffectLocalResource":Lcom/miui/gallery/video/editor/model/SmartEffectLocalResource;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6    # "extraObject":Lorg/json/JSONObject;
    .restart local v5    # "extraObject":Lorg/json/JSONObject;
    goto :goto_5
.end method
