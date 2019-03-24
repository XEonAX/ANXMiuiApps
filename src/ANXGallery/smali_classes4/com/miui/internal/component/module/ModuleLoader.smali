.class public Lcom/miui/internal/component/module/ModuleLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;
    }
.end annotation


# instance fields
.field private dE:[Lcom/miui/internal/component/module/ModuleFolder;

.field private dF:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private du:Landroid/app/Application;


# direct methods
.method public varargs constructor <init>(Landroid/app/Application;[Lcom/miui/internal/component/module/ModuleFolder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->dF:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->dG:Ljava/util/Set;

    .line 35
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader;->du:Landroid/app/Application;

    .line 36
    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader;->dE:[Lcom/miui/internal/component/module/ModuleFolder;

    .line 37
    return-void
.end method

.method private a(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V
    .locals 4

    .line 105
    nop

    .line 106
    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {v0}, Lmiui/module/Module;->getContent()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dI:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_0
    move-object v0, v1

    .line 110
    :goto_0
    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getContent()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dJ:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_1
    move-object v2, v1

    .line 114
    :goto_1
    iget-object v3, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {v3}, Lmiui/module/Module;->getContent()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 115
    iget-object v1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dI:Ljava/lang/String;

    .line 118
    :cond_2
    const/4 v3, 0x0

    .line 119
    if-nez v0, :cond_3

    if-eqz v2, :cond_5

    .line 120
    :cond_3
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/internal/component/module/ModuleLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 121
    xor-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_5

    iget-boolean p2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dL:Z

    if-eqz p2, :cond_4

    goto :goto_2

    .line 122
    :cond_4
    new-instance p2, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encounter error when load dex for module: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    .line 126
    invoke-direct {p0, v1}, Lcom/miui/internal/component/module/ModuleLoader;->g(Ljava/lang/String;)V

    .line 127
    if-eqz v3, :cond_7

    iget-boolean p2, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dL:Z

    if-eqz p2, :cond_6

    goto :goto_3

    .line 128
    :cond_6
    new-instance p2, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encounter error when load res for module: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 130
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader;->dG:Ljava/util/Set;

    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dI:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_8
    if-nez v3, :cond_9

    .line 133
    iget-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader;->dF:Ljava/util/Set;

    iget-object p1, p1, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {p1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->du:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/component/module/ModuleLoader;->du:Landroid/app/Application;

    invoke-static {p2, p1, p3, v0, v1}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private f(Ljava/lang/String;)Lmiui/module/Module;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->du:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/core/ManifestParser;->createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object p1

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/internal/component/module/ModuleLoader;->dG:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    .line 149
    return-void
.end method

.method public static varargs loadResources([Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;)V

    .line 153
    return-void
.end method


# virtual methods
.method public varargs loadModules([Lmiui/module/Dependency;)V
    .locals 19

    move-object/from16 v0, p0

    .line 56
    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    aget-object v8, v1, v6

    .line 60
    iget-object v9, v0, Lcom/miui/internal/component/module/ModuleLoader;->dF:Ljava/util/Set;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    goto/16 :goto_5

    .line 63
    :cond_0
    invoke-virtual {v8}, Lmiui/module/Dependency;->getType()I

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 64
    move v9, v10

    goto :goto_1

    .line 63
    :cond_1
    nop

    .line 64
    const/4 v9, 0x0

    .line 65
    :goto_1
    iget-object v11, v0, Lcom/miui/internal/component/module/ModuleLoader;->dE:[Lcom/miui/internal/component/module/ModuleFolder;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 66
    new-instance v15, Ljava/io/File;

    invoke-virtual {v14}, Lcom/miui/internal/component/module/ModuleFolder;->getApkFolder()Ljava/io/File;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-static {v13}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v14}, Lcom/miui/internal/component/module/ModuleFolder;->getOptFolder()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 71
    invoke-direct {v0, v13}, Lcom/miui/internal/component/module/ModuleLoader;->f(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v12

    .line 72
    new-instance v7, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    move-object v11, v7

    move-object v14, v4

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    nop

    .line 74
    nop

    .line 77
    const/16 v17, 0x1

    goto :goto_3

    .line 65
    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_2

    .line 77
    :cond_3
    const/16 v17, 0x0

    :goto_3
    if-nez v17, :cond_7

    .line 78
    iget-object v4, v0, Lcom/miui/internal/component/module/ModuleLoader;->du:Landroid/app/Application;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v4, v7, v10}, Lcom/miui/internal/util/PackageHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    const/4 v7, 0x0

    goto :goto_4

    .line 79
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 81
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 82
    invoke-static {v13}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 83
    const/4 v15, 0x0

    .line 84
    invoke-direct {v0, v13}, Lcom/miui/internal/component/module/ModuleLoader;->f(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v12

    .line 85
    new-instance v4, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    move-object v11, v4

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_5

    :cond_5
    if-eqz v9, :cond_6

    goto :goto_5

    .line 87
    :cond_6
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such module found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 92
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    .line 93
    iget-object v4, v0, Lcom/miui/internal/component/module/ModuleLoader;->du:Landroid/app/Application;

    iget-object v5, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dI:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/internal/component/module/ModuleUtils;->isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 94
    iget-object v4, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dK:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Lcom/miui/internal/component/module/ModuleLoader;->a(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V

    goto :goto_7

    .line 95
    :cond_9
    iget-boolean v4, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dL:Z

    if-eqz v4, :cond_a

    .line 98
    :goto_7
    goto :goto_6

    .line 96
    :cond_a
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid signature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->dH:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;

    .line 100
    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/miui/internal/component/module/ModuleLoader;->a(Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;Ljava/lang/String;)V

    .line 101
    goto :goto_8

    .line 102
    :cond_c
    return-void
.end method
