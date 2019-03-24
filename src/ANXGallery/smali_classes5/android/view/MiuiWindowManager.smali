.class public Landroid/view/MiuiWindowManager;
.super Ljava/lang/Object;
.source "MiuiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MiuiWindowManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field private static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static sTypeLayers:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayer(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 144
    invoke-static {p0}, Landroid/view/MiuiWindowManager;->loadTypeLayerIfNeed(Landroid/content/Context;)V

    .line 145
    const/4 v0, 0x2

    .line 146
    .local v0, "typeLayer":I
    sget-object v1, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 149
    :cond_0
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private static loadTypeLayerIfNeed(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    sget-object v0, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_type_layer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "strJsonTypeLayer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "jsonTypeLayer":Lorg/json/JSONObject;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    .local v3, "strType":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "nType":I
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, "layer":I
    sget-object v6, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3    # "strType":Ljava/lang/String;
    .end local v4    # "nType":I
    .end local v5    # "layer":I
    goto :goto_0

    .line 133
    .end local v1    # "jsonTypeLayer":Lorg/json/JSONObject;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    nop

    .line 134
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 118
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Window type layer has not set to setting."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
