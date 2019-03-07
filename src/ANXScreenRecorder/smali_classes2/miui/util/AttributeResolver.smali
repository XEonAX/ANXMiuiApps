.class public Lmiui/util/AttributeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AttributeResolver$ResultCache;
    }
.end annotation


# static fields
.field private static final Hs:Landroid/util/TypedValue;

.field private static final Ht:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static Hu:Lmiui/util/AttributeResolver$ResultCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->Hs:Landroid/util/TypedValue;

    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/util/AttributeResolver;->Ht:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isUsingMiuiTheme(Landroid/content/Context;)Z
    .locals 5

    .line 175
    sget-object v0, Lmiui/util/AttributeResolver;->Hu:Lmiui/util/AttributeResolver$ResultCache;

    .line 176
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/util/AttributeResolver$ResultCache;->Hv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 177
    iget-boolean p0, v0, Lmiui/util/AttributeResolver$ResultCache;->Hw:Z

    return p0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 181
    sget v0, Lmiui/R$attr;->miui_version:I

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    const v0, 0x101005d

    invoke-static {p0, v0}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    .line 184
    if-lez v0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 187
    sget-object v0, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    .line 188
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    sget v2, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    .line 190
    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 192
    move v1, v3

    goto :goto_0

    .line 190
    :cond_1
    nop

    .line 192
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    new-instance v0, Lmiui/util/AttributeResolver$ResultCache;

    invoke-direct {v0, p0, v1}, Lmiui/util/AttributeResolver$ResultCache;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lmiui/util/AttributeResolver;->Hu:Lmiui/util/AttributeResolver$ResultCache;

    .line 194
    return v1

    .line 198
    :cond_2
    new-instance v0, Lmiui/util/AttributeResolver$ResultCache;

    invoke-direct {v0, p0, v1}, Lmiui/util/AttributeResolver$ResultCache;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lmiui/util/AttributeResolver;->Hu:Lmiui/util/AttributeResolver$ResultCache;

    .line 199
    return v1
.end method

.method private static q(Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 36
    sget-object p0, Lmiui/util/AttributeResolver;->Hs:Landroid/util/TypedValue;

    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lmiui/util/AttributeResolver;->Ht:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/TypedValue;

    .line 40
    if-nez p0, :cond_1

    .line 41
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 42
    sget-object v0, Lmiui/util/AttributeResolver;->Ht:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 45
    :cond_1
    return-object p0
.end method

.method public static resolve(Landroid/content/Context;I)I
    .locals 2

    .line 55
    invoke-static {p0}, Lmiui/util/AttributeResolver;->q(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 56
    nop

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 58
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 60
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 2

    .line 109
    invoke-static {p0}, Lmiui/util/AttributeResolver;->q(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 112
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x12

    if-ne p0, p1, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    .line 114
    move p2, v1

    goto :goto_0

    .line 112
    :cond_0
    const/4 p0, 0x0

    .line 114
    move p2, p0

    :cond_1
    :goto_0
    return p2
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 3

    .line 89
    invoke-static {p0}, Lmiui/util/AttributeResolver;->q(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 93
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_1

    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_1

    .line 95
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static resolveDimension(Landroid/content/Context;I)F
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 70
    invoke-static {p0}, Lmiui/util/AttributeResolver;->q(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_1

    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_1

    .line 76
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    .line 79
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .locals 2

    .line 145
    invoke-static {p0}, Lmiui/util/AttributeResolver;->q(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 146
    nop

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 148
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x10

    if-ne p0, p1, :cond_0

    .line 149
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 152
    :cond_0
    return p2
.end method
