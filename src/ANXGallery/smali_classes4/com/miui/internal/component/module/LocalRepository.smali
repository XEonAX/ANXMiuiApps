.class public abstract Lcom/miui/internal/component/module/LocalRepository;
.super Lmiui/module/Repository;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmiui/module/Repository;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/internal/component/module/LocalRepository;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    .line 25
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 26
    const-string v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 27
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "symlink"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 30
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return v2

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/internal/component/module/LocalRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/module/LocalRepository;->getRootFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/component/module/LocalRepository;->getModuleFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public fetch(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/miui/internal/component/module/LocalRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/module/LocalRepository;->getRootFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/component/module/LocalRepository;->getModuleFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".apk"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/component/module/LocalRepository;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getModuleFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
.end method

.method protected abstract getRootFolder(Landroid/content/Context;)Ljava/io/File;
.end method
