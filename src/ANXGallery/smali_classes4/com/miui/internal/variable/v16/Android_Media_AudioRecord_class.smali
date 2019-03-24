.class public Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;
.super Lcom/miui/internal/variable/Android_Media_AudioRecord_class;
.source "SourceFile"


# static fields
.field private static final lC:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    nop

    .line 13
    :try_start_0
    const-class v0, Landroid/media/AudioRecord;

    const-string v1, "setParameters"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 16
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->lC:Lmiui/reflect/Method;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isExtraParamSupported()Z
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->lC:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I
    .locals 4

    .line 26
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->lC:Lmiui/reflect/Method;

    if-nez v0, :cond_0

    .line 27
    const/4 p1, -0x1

    return p1

    .line 29
    :cond_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->lC:Lmiui/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
