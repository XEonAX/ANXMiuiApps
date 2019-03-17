.class public Lcom/miui/gallery/editor/photo/core/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# static fields
.field public static final INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;


# instance fields
.field private mHasCreateCalled:Z

.field private mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/miui/gallery/editor/photo/core/SdkManager;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/SdkManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.gallery.editor.photo.core.imports.filter.FilterProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.gallery.editor.photo.core.imports.crop.CropProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.gallery.editor.photo.core.imports.sticker.StickerProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.gallery.editor.photo.core.imports.longcrop.LongCropProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.miui.gallery.editor.photo.core.imports.text.TextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.miui.gallery.editor.photo.core.imports.doodle.DoodleProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.miui.gallery.editor.photo.core.imports.mosaic.MosaicProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.miui.gallery.editor.photo.core.imports.remover.RemoverProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.miui.gallery.editor.photo.core.imports.frame.FrameProvider"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/SdkManager;->load([Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/SdkProvider;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mHasCreateCalled:Z

    .line 19
    return-void
.end method

.method private static varargs load([Ljava/lang/String;)V
    .locals 5
    .param p0, "classes"    # [Ljava/lang/String;

    .prologue
    .line 60
    const-string v2, "SdkManager"

    const-string v3, "loading %s"

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 64
    .local v0, "_class":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "SdkManager"

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    .end local v0    # "_class":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider;",
            ">(",
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "effect":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 7

    .prologue
    .line 31
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mHasCreateCalled:Z

    if-nez v1, :cond_2

    .line 32
    const-string v1, "SdkManager"

    const-string v2, "creating application"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 34
    .local v0, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    if-eqz v0, :cond_0

    .line 35
    const-string v4, "SdkManager"

    const-string v5, "notify %s\'s provider application is creating"

    iget-object v6, v0, Lcom/miui/gallery/editor/photo/core/SdkProvider;->mSupported:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->onActivityCreate()V

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mHasCreateCalled:Z

    .line 41
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 22
    const-string v1, "SdkManager"

    const-string v2, "attach to application"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 24
    .local v0, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->attach(Landroid/app/Application;)V

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    :cond_1
    return-void
.end method

.method public register(Lcom/miui/gallery/editor/photo/core/SdkProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;, "TT;"
    const-string v2, "SdkManager"

    const-string v3, "registering %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p1, Lcom/miui/gallery/editor/photo/core/SdkProvider;->mSupported:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 51
    .local v0, "effect":Lcom/miui/gallery/editor/photo/core/Effect;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    aget-object v1, v2, v3

    .line 52
    .local v1, "registered":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    if-nez v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/SdkManager;->mProviders:[Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v3

    aput-object p1, v2, v3

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already registered provider found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
