.class public Lcom/baidu/homework/common/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/SharedPreferences;


# instance fields
.field private c:[B

.field private d:I

.field private e:I

.field private f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/homework/common/a;->c:[B

    iput v0, p0, Lcom/baidu/homework/common/a;->d:I

    iput v0, p0, Lcom/baidu/homework/common/a;->e:I

    iput-object v1, p0, Lcom/baidu/homework/common/a;->f:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/homework/common/a;->f:[B

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/homework/common/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "homework_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/homework/common/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/baidu/homework/common/a;->a:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 8

    const/16 v7, 0x100

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/baidu/homework/common/a;->f:[B

    iput v0, p0, Lcom/baidu/homework/common/a;->d:I

    iput v0, p0, Lcom/baidu/homework/common/a;->e:I

    iget-object v1, p0, Lcom/baidu/homework/common/a;->c:[B

    if-nez v1, :cond_0

    new-array v1, v7, [B

    iput-object v1, p0, Lcom/baidu/homework/common/a;->c:[B

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    iget-object v2, p0, Lcom/baidu/homework/common/a;->c:[B

    int-to-byte v4, v1

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    :goto_1
    if-ge v0, v7, :cond_2

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/baidu/homework/common/a;->c:[B

    aget-byte v5, v5, v0

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lcom/baidu/homework/common/a;->c:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lcom/baidu/homework/common/a;->c:[B

    iget-object v6, p0, Lcom/baidu/homework/common/a;->c:[B

    aget-byte v6, v6, v1

    aput-byte v6, v5, v0

    iget-object v5, p0, Lcom/baidu/homework/common/a;->c:[B

    aput-byte v4, v5, v1

    add-int/lit8 v2, v2, 0x1

    array-length v4, v3

    rem-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_TIME_OFFSET"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_INSTALL_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SIGN_A"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_SIGN_B"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a([BII[BI)V
    .locals 6

    add-int/lit8 v0, p3, 0x0

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p3, 0x0

    array-length v1, p4

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget v1, p0, Lcom/baidu/homework/common/a;->d:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/baidu/homework/common/a;->d:I

    iget-object v1, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v2, p0, Lcom/baidu/homework/common/a;->d:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/baidu/homework/common/a;->e:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/baidu/homework/common/a;->e:I

    iget-object v1, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v2, p0, Lcom/baidu/homework/common/a;->d:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v3, p0, Lcom/baidu/homework/common/a;->d:I

    iget-object v4, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v5, p0, Lcom/baidu/homework/common/a;->e:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v3, p0, Lcom/baidu/homework/common/a;->e:I

    aput-byte v1, v2, v3

    aget-byte v1, p1, v0

    iget-object v2, p0, Lcom/baidu/homework/common/a;->c:[B

    iget-object v3, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v4, p0, Lcom/baidu/homework/common/a;->d:I

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/baidu/homework/common/a;->c:[B

    iget v5, p0, Lcom/baidu/homework/common/a;->e:I

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SIGN_A"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "KEY_SIGN_B"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_INSTALL_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/baidu/homework/common/a;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "KEY_TIME_OFFSET"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.homework.sdk.PREFERENCE_FILE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/baidu/homework/common/a;->b:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/homework/common/a;->a()V

    array-length v0, p1

    new-array v4, v0, [B

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/homework/common/a;->a([BII[BI)V

    return-object v4
.end method

.method public b([B)[B
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/homework/common/a;->a()V

    array-length v0, p1

    new-array v4, v0, [B

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/homework/common/a;->a([BII[BI)V

    return-object v4
.end method
