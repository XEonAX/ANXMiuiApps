.class public final Lcom/nexstreaming/nexeditorsdk/nexFont;
.super Ljava/lang/Object;
.source "nexFont.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "nexFont"

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexFont;",
            ">;"
        }
    .end annotation
.end field

.field private static s_update:Z


# instance fields
.field private builtin:Z

.field private font:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

.field private sample:Ljava/lang/String;

.field private system:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ZLcom/nexstreaming/kminternal/kinemaster/fonts/Font;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->builtin:Z

    .line 74
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->font:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    .line 75
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->sample:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->system:Z

    .line 77
    return-void
.end method

.method static checkUpdate()V
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->s_update:Z

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->s_update:Z

    .line 290
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexFont;->reload()V

    .line 292
    :cond_0
    return-void
.end method

.method public static clearBuiltinFontsCache()V
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a()Lcom/nexstreaming/kminternal/kinemaster/fonts/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->c()V

    .line 279
    return-void
.end method

.method public static getFont(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexFont;
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexFont;->checkUpdate()V

    .line 192
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexFont;

    .line 193
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFontIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexFont;->checkUpdate()V

    .line 230
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 232
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexFont;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :cond_0
    return-object v2
.end method

.method private static getLocalPath(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 201
    .line 203
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 204
    :try_start_1
    invoke-interface {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 209
    if-eqz v2, :cond_0

    .line 210
    :try_start_2
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    const-string v2, "nexFont"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 206
    :goto_1
    :try_start_3
    const-string v3, "nexFont"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    if-eqz v2, :cond_0

    .line 210
    :try_start_4
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 212
    :catch_2
    move-exception v1

    .line 213
    const-string v2, "nexFont"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 209
    :goto_2
    if-eqz v2, :cond_1

    .line 210
    :try_start_5
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 214
    :cond_1
    :goto_3
    throw v0

    .line 212
    :catch_3
    move-exception v1

    .line 213
    const-string v2, "nexFont"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 208
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 205
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static getPresetList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexFont;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 144
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a()Lcom/nexstreaming/kminternal/kinemaster/fonts/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->b()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/b;

    .line 146
    invoke-interface {v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    .line 148
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 149
    sget-object v6, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    new-instance v7, Lcom/nexstreaming/nexeditorsdk/nexFont;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v0, v8, v5}, Lcom/nexstreaming/nexeditorsdk/nexFont;-><init>(ZLcom/nexstreaming/kminternal/kinemaster/fonts/Font;Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->font:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 155
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetSubCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/d;->getSubCategoryId()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-nez v1, :cond_3

    .line 161
    const-string v1, "asset"

    .line 163
    :cond_3
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getSampleText()Ljava/lang/String;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v3, :cond_5

    .line 165
    :cond_4
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/nexstreaming/app/common/util/n;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_5
    if-nez v2, :cond_6

    .line 169
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v2

    .line 172
    :cond_6
    const-string v6, "nexFont"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asset font id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", loacalPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getLocalPath(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v6, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getLocalPath(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v1, v8, v2}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/store/AssetLocalInstallDB;->getInstalledAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    .line 177
    :goto_2
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    new-instance v7, Lcom/nexstreaming/nexeditorsdk/nexFont;

    invoke-direct {v7, v0, v6, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexFont;-><init>(ZLcom/nexstreaming/kminternal/kinemaster/fonts/Font;Ljava/lang/String;Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 175
    goto :goto_2

    .line 180
    :cond_8
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    return-object v0
.end method

.method public static getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a()Lcom/nexstreaming/kminternal/kinemaster/fonts/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static isLoadedFont(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a()Lcom/nexstreaming/kminternal/kinemaster/fonts/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v2

    .line 265
    if-nez v2, :cond_2

    move v0, v1

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    invoke-interface {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v2

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->font:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 270
    goto :goto_0
.end method

.method static needUpdate()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->s_update:Z

    .line 285
    return-void
.end method

.method public static reload()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexFont;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getPresetList()Ljava/util/List;

    .line 258
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->font:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->font:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSampleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->sample:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeFace()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->a()Lcom/nexstreaming/kminternal/kinemaster/fonts/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/c;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isBuiltinFont()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->builtin:Z

    return v0
.end method

.method public isSystemFont()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexFont;->system:Z

    return v0
.end method
