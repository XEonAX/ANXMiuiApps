.class public Lcom/miui/internal/component/module/ModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODULE_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final MODULE_LIB_EXTENSION:Ljava/lang/String; = ".lib"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6

    .line 48
    const/4 v0, -0x3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    const/4 v2, 0x0

    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 53
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 56
    array-length v3, p1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 57
    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 61
    return v2

    .line 63
    :cond_3
    return v0

    .line 49
    :cond_4
    :goto_2
    return v0
.end method

.method public static getLibraryFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 25
    invoke-static {p0}, Lmiui/os/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".lib"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v1
.end method

.method public static isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 33
    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 34
    nop

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 41
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 42
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p1, p0}, Lcom/miui/internal/component/module/ModuleUtils;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 44
    :cond_1
    return v0
.end method
