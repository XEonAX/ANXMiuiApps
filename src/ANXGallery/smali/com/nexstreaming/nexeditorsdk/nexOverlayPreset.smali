.class public final Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;
.super Ljava/lang/Object;
.source "nexOverlayPreset.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "OverlayPresetLoad"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getOverlayPreset()Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    return-object v0
.end method

.method public static getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    .line 52
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    return-object v0
.end method


# virtual methods
.method public getIDs()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 109
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v3, v4, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 120
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 122
    :cond_2
    return-object v3
.end method

.method public getIDs(I)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(I)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 136
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v3, v4, :cond_0

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v3

    sget-object v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v3, v4, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 147
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 149
    :cond_2
    return-object v3
.end method

.method public getIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_1

    .line 168
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, p2, p3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/e;->a(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    if-nez v0, :cond_0

    .line 175
    :try_start_1
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p2, p3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/e;->b(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 181
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 185
    :goto_2
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 185
    goto :goto_2

    .line 176
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 86
    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->overlay:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v1, v2, :cond_0

    .line 91
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method
