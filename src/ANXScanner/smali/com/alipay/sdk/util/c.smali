.class public final Lcom/alipay/sdk/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = false

.field public static final b:Ljava/lang/String; = "mspstd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 68
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method private static a()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 58
    :cond_0
    return-void
.end method

.method private static b()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method private static c()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method private static d()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method private static e()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method private static f()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method private static g()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method private static h()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
