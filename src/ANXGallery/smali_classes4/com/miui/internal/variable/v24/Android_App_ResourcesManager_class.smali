.class public Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;
.super Lcom/miui/internal/variable/Android_App_ResourcesManager_class;
.source "SourceFile"


# static fields
.field private static final mm:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

.field private static final mn:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mm:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    .line 25
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mn:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 29
    const-string v0, "createResourcesImpl"

    const-string v1, "(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 31
    return-void
.end method

.method protected handle()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->handleCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    .line 36
    return-void
.end method

.method protected handleCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 1

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->originalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    return-object p1

    .line 44
    :cond_0
    sget-object p2, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mAppendedAssetPaths:Ljava/util/List;

    if-nez p2, :cond_1

    .line 45
    return-object p1

    .line 48
    :cond_1
    sget-object p2, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mn:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    invoke-virtual {p2, p1}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;

    move-result-object p2

    .line 49
    sget-object p3, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mAppendedAssetPaths:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mm:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    invoke-interface {v0, p2, p4}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-object p1
.end method

.method protected originalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 0

    .line 56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v24.Android_App_ResourcesManager_class.originalCreateResourcesImpl(long, Object, ResourcesKey)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
