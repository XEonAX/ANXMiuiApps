.class public Lcom/xiaomi/stat/d/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x40

.field private static final b:I = 0x100

.field private static final c:I = 0x2800

.field private static final d:Ljava/lang/String; = "mistat_"

.field private static final e:Ljava/lang/String; = "mi_"

.field private static final f:Ljava/lang/String; = "abtest_"

.field private static final g:Ljava/lang/String; = "null"

.field private static h:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "^[a-zA-Z_][a-zA-Z0-9_]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/n;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "parameter number exceed limits"

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    const-string v0, "mistat_"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mi_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "abtest_"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/xiaomi/stat/d/n;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string p0, "null"

    .line 46
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter value is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 63
    return-void
.end method
