.class public Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
    }
.end annotation


# static fields
.field private static final mb:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    const-string v1, "mLayoutInflater"

    .line 34
    invoke-static {v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mb:Ljava/lang/reflect/Field;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;-><init>()V

    return-void
.end method

.method private a(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;
    .locals 3

    .line 172
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mb:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 173
    new-instance v2, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    invoke-direct {v2, v1, p1, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;)V

    .line 174
    sget-object v1, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mb:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-object v2

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 39
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 44
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)V
    .locals 1

    .line 184
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->mb:Ljava/lang/reflect/Field;

    invoke-static {p2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;->a(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :goto_0
    return-void
.end method

.method static synthetic aI()Ljava/lang/Class;
    .locals 1

    .line 31
    sget-object v0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .line 193
    const-string v0, "installDecor"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 194
    return-void
.end method

.method protected handle()V
    .locals 3

    .line 198
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->handleInstallDecor(JLjava/lang/Object;)V

    .line 199
    return-void
.end method

.method protected handleInstallDecor(JLjava/lang/Object;)V
    .locals 2

    .line 207
    move-object v0, p3

    check-cast v0, Landroid/view/Window;

    .line 208
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    .line 209
    if-eqz v1, :cond_1

    .line 210
    invoke-direct {p0, v0}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Landroid/view/Window;)Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;

    move-result-object v1

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->a(Landroid/view/Window;Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$LayoutInflaterWrapper;)V

    .line 215
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/miui/internal/R$attr;->backgroundDim:I

    const/16 v0, 0x14

    invoke-static {p2, p3, v0}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 219
    :cond_0
    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    .line 222
    :goto_0
    return-void
.end method

.method protected originalInstallDecor(JLjava/lang/Object;)V
    .locals 0

    .line 202
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Internal_Policy_Impl_PhoneWindow_class.originalInstallDecor(long, Object)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
