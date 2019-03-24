.class public Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;
.source "SourceFile"


# static fields
.field private static final lA:Lmiui/reflect/Method;

.field private static final lB:Lmiui/reflect/Method;

.field private static final lz:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    const-string v1, "getStateCount"

    const-string v2, "()I"

    .line 21
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->lz:Lmiui/reflect/Method;

    .line 23
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    const-string v1, "getStateSet"

    const-string v2, "(I)[I"

    .line 24
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->lA:Lmiui/reflect/Method;

    .line 26
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    const-string v1, "getStateDrawable"

    const-string v2, "(I)Landroid/graphics/drawable/Drawable;"

    .line 27
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->lB:Lmiui/reflect/Method;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 61
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1
.end method

.method public getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 4

    .line 32
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->lz:Lmiui/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.StateListDrawable.getStateCount"

    invoke-virtual {v1, v2, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return v0
.end method

.method public getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 52
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->lB:Lmiui/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v1, "android.graphics.drawable.StateListDrawable.getStateDrawable"

    invoke-virtual {p2, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-object v0
.end method

.method public getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 4

    .line 42
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Graphics_Drawable_StateListDrawable_class;->lA:Lmiui/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v1, "android.graphics.drawable.StateListDrawable.getStateSet"

    invoke-virtual {p2, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-object v0
.end method
