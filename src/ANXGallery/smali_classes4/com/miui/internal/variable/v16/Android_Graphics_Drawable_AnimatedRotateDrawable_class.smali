.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;
.source "SourceFile"


# static fields
.field private static final lo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final lu:Lmiui/reflect/Method;

.field private static final lv:Lmiui/reflect/Method;

.field private static final lw:Lmiui/reflect/Method;

.field private static final lx:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    nop

    .line 24
    :try_start_0
    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lo:Ljava/lang/Class;

    .line 31
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lo:Ljava/lang/Class;

    const-string v1, "setFramesCount"

    const-string v2, "(I)V"

    .line 32
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lu:Lmiui/reflect/Method;

    .line 34
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lo:Ljava/lang/Class;

    const-string v1, "setFramesDuration"

    const-string v2, "(I)V"

    .line 35
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lv:Lmiui/reflect/Method;

    .line 37
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lo:Ljava/lang/Class;

    const-string v1, "start"

    const-string v2, "()V"

    .line 38
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lw:Lmiui/reflect/Method;

    .line 40
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lo:Ljava/lang/Class;

    const-string v1, "stop"

    const-string v2, "()V"

    .line 41
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lx:Lmiui/reflect/Method;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 81
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1
.end method

.method public setFramesCount(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .line 46
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lu:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable.setFramesCount"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_0
    return-void
.end method

.method public setFramesDuration(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .line 55
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lv:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.graphics.drawable.AnimatedRotateDrawable.setFramesDuration"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :goto_0
    return-void
.end method

.method public start(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 64
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lw:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable.start"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    return-void
.end method

.method public stop(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 73
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->lx:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.graphics.drawable.AnimatedRotateDrawable.stop"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void
.end method
