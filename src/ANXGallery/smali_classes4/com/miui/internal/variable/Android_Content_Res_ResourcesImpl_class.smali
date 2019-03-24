.class public abstract Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/content/res/ResourcesImpl;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    const-class v0, Landroid/content/res/ResourcesImpl;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;
.end method
