.class public Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
.super Ljava/lang/Object;
.source "AlbumsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Album"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;
    }
.end annotation


# instance fields
.field private mAttributes:Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attributes"
    .end annotation
.end field

.field private mNameStringRes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name-string-res"
    .end annotation
.end field

.field private mNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method private getLanguageCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 221
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "langCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mAttributes:Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    return-object v0
.end method

.method public getBestName()Ljava/lang/String;
    .locals 12

    .prologue
    .line 178
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 179
    .local v7, "resources":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 182
    .local v8, "ret":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mNameStringRes:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 183
    iget-object v9, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mNameStringRes:Ljava/lang/String;

    const-string/jumbo v10, "string"

    const-string v11, "com.miui.gallery"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 184
    .local v6, "nameResId":I
    if-eqz v6, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 191
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v1, v8

    .line 216
    .end local v6    # "nameResId":I
    :cond_1
    :goto_1
    return-object v1

    .line 187
    .restart local v6    # "nameResId":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "AlbumsStrategy"

    invoke-static {v9, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "nameResId":I
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mNames:Ljava/util/List;

    if-eqz v9, :cond_7

    .line 197
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "langCode":Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v9}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "langCodeEng":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 200
    .local v2, "isEnglishLanguage":Z
    const/4 v1, 0x0

    .line 201
    .local v1, "englishName":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mNames:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;

    .line 202
    .local v5, "nameData":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;
    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;->getLanguageCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 203
    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;->getName()Ljava/lang/String;

    move-result-object v8

    .line 209
    .end local v5    # "nameData":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    move-object v1, v8

    .line 210
    goto :goto_1

    .line 205
    .restart local v5    # "nameData":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;
    :cond_5
    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;->getLanguageCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 206
    invoke-virtual {v5}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 211
    .end local v5    # "nameData":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album$NameData;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .end local v1    # "englishName":Ljava/lang/String;
    .end local v2    # "isEnglishLanguage":Z
    .end local v3    # "langCode":Ljava/lang/String;
    .end local v4    # "langCodeEng":Ljava/lang/String;
    :cond_7
    move-object v1, v8

    .line 216
    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumsStrategy{mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mAttributes:Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNameStringRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->mNameStringRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
