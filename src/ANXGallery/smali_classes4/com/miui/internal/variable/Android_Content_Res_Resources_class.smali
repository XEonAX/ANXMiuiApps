.class public abstract Lcom/miui/internal/variable/Android_Content_Res_Resources_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/content/res/Resources;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field protected static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field protected static mAssets:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    const-class v0, Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
.end method
