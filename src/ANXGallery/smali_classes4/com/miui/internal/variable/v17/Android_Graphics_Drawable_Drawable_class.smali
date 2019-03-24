.class public Lcom/miui/internal/variable/v17/Android_Graphics_Drawable_Drawable_class;
.super Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.source "SourceFile"


# static fields
.field private static final mg:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "getLayoutDirection"

    const-string v2, "()I"

    .line 25
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v17/Android_Graphics_Drawable_Drawable_class;->mg:Lmiui/reflect/Method;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .line 30
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v17/Android_Graphics_Drawable_Drawable_class;->mg:Lmiui/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.Drawable.getLayoutDirection"

    invoke-virtual {v1, v2, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return v0
.end method
