.class public abstract Lcom/miui/internal/variable/Android_View_Window_class;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_Window_class$Factory;
    }
.end annotation


# static fields
.field protected static setExtraFlags:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    const-string v2, "(II)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    .line 21
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setTranslucentStatus(Landroid/view/Window;I)Z
.end method
