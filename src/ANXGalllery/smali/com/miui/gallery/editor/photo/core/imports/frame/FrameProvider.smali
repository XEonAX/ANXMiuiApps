.class Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "FrameProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;,
        Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mFrameData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->SEPARATOR:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V

    .line 102
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->mFrameData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->notifyInitializeFinish()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;-><init>(Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$ResourceListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/Application;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider$LoadResourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method static loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 113
    const-string v3, "FrameProvider"

    invoke-static {v3, v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->readInputStreamToString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 117
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    .line 119
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "FrameProvider"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    throw v3
.end method


# virtual methods
.method public createEngine(Landroid/content/Context;)Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEngine;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameEngine;-><init>()V

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/editor/photo/core/common/model/FrameData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->mFrameData:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityCreate()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->initialize()V

    .line 39
    return-void
.end method

.method protected bridge synthetic onCreateFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameProvider;->onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateFragment()Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractFrameFragment;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/frame/FrameFragment;-><init>()V

    return-object v0
.end method
