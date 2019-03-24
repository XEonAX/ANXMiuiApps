.class public Lmiui/extension/ExtensionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/extension/ExtensionManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtensionManager"

.field private static final xX:Ljava/lang/String; = "com.miui.sdk.extension"

.field private static final xY:Ljava/lang/String; = "miui_extension"

.field private static final xZ:Ljava/lang/String; = "extension"

.field private static final ya:Ljava/lang/String; = "miui.system"


# instance fields
.field private yb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lmiui/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/extension/ExtensionManager;->yb:Ljava/util/HashMap;

    .line 56
    invoke-direct {p0, p1}, Lmiui/extension/ExtensionManager;->n(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/extension/ExtensionManager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lmiui/extension/ExtensionManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)Lmiui/extension/Extension;
    .locals 2

    .line 105
    sget-object v0, Lcom/miui/internal/R$styleable;->DynamicExtension:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    sget p2, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionTarget:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 107
    sget v0, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionAction:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget v1, Lcom/miui/internal/R$styleable;->DynamicExtension_extensionInvoker:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance p1, Lmiui/extension/Extension;

    invoke-direct {p1, p2, v0, v1}, Lmiui/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInstance()Lmiui/extension/ExtensionManager;
    .locals 1

    .line 45
    sget-object v0, Lmiui/extension/ExtensionManager$Holder;->yc:Lmiui/extension/ExtensionManager;

    return-object v0
.end method

.method private n(Landroid/content/Context;)V
    .locals 6

    .line 70
    const-string v0, "com.miui.sdk.extension"

    const-string v1, "miui_extension"

    const-string v2, "miui.system"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lmiui/util/ResourceHelper;->loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 78
    :try_start_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .line 79
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 80
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 81
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "extension"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-direct {p0, p1, v1}, Lmiui/extension/ExtensionManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lmiui/extension/Extension;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lmiui/extension/Extension;->getTarget()Ljava/lang/String;

    move-result-object v3

    .line 85
    iget-object v4, p0, Lmiui/extension/ExtensionManager;->yb:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 86
    if-nez v4, :cond_1

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v5, p0, Lmiui/extension/ExtensionManager;->yb:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 101
    goto :goto_2

    .line 100
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 97
    :catch_0
    move-exception p1

    .line 98
    :try_start_1
    const-string v1, "ExtensionManager"

    const-string v2, "Fail to parse CTA config"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    :catch_1
    move-exception p1

    .line 96
    const-string v1, "ExtensionManager"

    const-string v2, "Fail to parse CTA config"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 102
    :goto_2
    return-void

    .line 100
    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lmiui/extension/ExtensionManager;->yb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/extension/Extension;

    .line 63
    invoke-virtual {v0, p2, p3}, Lmiui/extension/Extension;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
