.class public Lmiui/module/appstore/AppStoreRepository;
.super Lmiui/module/Repository;
.source "AppStoreRepository.java"


# static fields
.field private static final WHITE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.miui.system"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.miui.rom"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/module/appstore/AppStoreRepository;->WHITE_LIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lmiui/module/appstore/AppStoreRepository;->WHITE_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "targetFolder"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v10

    .line 35
    :cond_1
    const/4 v6, 0x0

    .line 37
    .local v6, "isGlobalBuild":Z
    :try_start_0
    const-string v11, "miui.os.Build"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, "clazz":Ljava/lang/Class;
    const-string v11, "IS_GLOBAL_BUILD"

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 39
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 49
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1
    if-eqz v6, :cond_2

    .line 50
    const-string v11, "https://global.market.xiaomi.com/apm/content/miuiapp/resource?"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 55
    .local v0, "builder":Landroid/net/Uri$Builder;
    :goto_2
    const-string v11, "resourceId"

    invoke-virtual {v0, v11, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "metaDataUrl":Ljava/lang/String;
    invoke-static {v7}, Lmiui/module/appstore/NetworkUtils;->downloadMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 60
    .local v9, "rootObject":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 61
    invoke-static {v9}, Lmiui/module/appstore/Metadata;->parse(Lorg/json/JSONObject;)Lmiui/module/appstore/Metadata;

    move-result-object v8

    .line 63
    .local v8, "metadata":Lmiui/module/appstore/Metadata;
    if-eqz v8, :cond_0

    .line 64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lmiui/module/appstore/Metadata;->mHost:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lmiui/module/appstore/Metadata;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "fileUrl":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v11, v8, Lmiui/module/appstore/Metadata;->mResourceId:Ljava/lang/String;

    invoke-direct {v4, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v4, "file":Ljava/io/File;
    invoke-static {v5, v4}, Lmiui/module/appstore/NetworkUtils;->downloadFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 68
    iget-object v11, v8, Lmiui/module/appstore/Metadata;->mFileHash:Ljava/lang/String;

    invoke-static {v4, v11}, Lmiui/module/appstore/MD5Utils;->checkMD5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 69
    iget-object v10, v8, Lmiui/module/appstore/Metadata;->mResourceId:Ljava/lang/String;

    goto :goto_0

    .line 40
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileUrl":Ljava/lang/String;
    .end local v7    # "metaDataUrl":Ljava/lang/String;
    .end local v8    # "metadata":Lmiui/module/appstore/Metadata;
    .end local v9    # "rootObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 52
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    const-string v11, "https://app.market.xiaomi.com/apm/content/miuiapp/resource?"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_2
.end method
