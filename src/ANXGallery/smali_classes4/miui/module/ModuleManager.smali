.class public Lmiui/module/ModuleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/module/ModuleManager$ModuleLoadListener;
    }
.end annotation


# static fields
.field private static final Cn:Lmiui/module/ModuleManager;

.field private static final Co:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Application;",
            "Lmiui/module/ModuleManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final Cp:Ljava/lang/String; = "modules"

.field private static final Cq:Ljava/lang/String; = "modules-temp"


# instance fields
.field private Cr:Ljava/io/File;

.field private Cs:Ljava/io/File;

.field private Ct:Lcom/miui/internal/component/module/ModuleLoader;

.field private Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

.field private du:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lmiui/module/ModuleManager;

    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lmiui/module/ModuleManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lmiui/module/ModuleManager;->Cn:Lmiui/module/ModuleManager;

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/module/ModuleManager;->Co:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lmiui/module/ModuleManager;->du:Landroid/app/Application;

    .line 75
    iget-object p1, p0, Lmiui/module/ModuleManager;->du:Landroid/app/Application;

    invoke-direct {p0, p1}, Lmiui/module/ModuleManager;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    .line 76
    iget-object p1, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 77
    iget-object p1, p0, Lmiui/module/ModuleManager;->du:Landroid/app/Application;

    invoke-direct {p0, p1}, Lmiui/module/ModuleManager;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lmiui/module/ModuleManager;->Cs:Ljava/io/File;

    .line 78
    iget-object p1, p0, Lmiui/module/ModuleManager;->Cs:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 79
    new-instance p1, Lcom/miui/internal/component/module/ModuleLoader;

    iget-object v0, p0, Lmiui/module/ModuleManager;->du:Landroid/app/Application;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/internal/component/module/ModuleFolder;

    new-instance v2, Lcom/miui/internal/component/module/ModuleFolder;

    iget-object v3, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    iget-object v4, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-direct {v2, v3, v4}, Lcom/miui/internal/component/module/ModuleFolder;-><init>(Ljava/io/File;Ljava/io/File;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p1, v0, v1}, Lcom/miui/internal/component/module/ModuleLoader;-><init>(Landroid/app/Application;[Lcom/miui/internal/component/module/ModuleFolder;)V

    iput-object p1, p0, Lmiui/module/ModuleManager;->Ct:Lcom/miui/internal/component/module/ModuleLoader;

    .line 80
    return-void
.end method

.method private B(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 230
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    invoke-interface {v0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFail(Ljava/lang/String;I)V

    .line 234
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".apk"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 177
    const/4 p1, 0x0

    return p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 180
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0, p2}, Lmiui/module/ModuleManager;->B(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 187
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 192
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 194
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 195
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 197
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 198
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    :cond_2
    invoke-static {v3}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v4}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_3
    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 214
    nop

    .line 215
    return v1

    .line 213
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    throw p1
.end method

.method public static createInstance(Landroid/app/Application;)Lmiui/module/ModuleManager;
    .locals 3

    .line 44
    if-eqz p0, :cond_2

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lmiui/module/ModuleManager;->Co:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lmiui/module/ModuleManager;->Co:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/module/ModuleManager;

    .line 50
    if-nez v1, :cond_1

    .line 51
    new-instance v1, Lmiui/module/ModuleManager;

    invoke-direct {v1, p0}, Lmiui/module/ModuleManager;-><init>(Landroid/app/Application;)V

    .line 52
    sget-object v2, Lmiui/module/ModuleManager;->Co:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    monitor-exit v0

    return-object v1

    .line 55
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 45
    :cond_2
    :goto_0
    sget-object p0, Lmiui/module/ModuleManager;->Cn:Lmiui/module/ModuleManager;

    return-object p0
.end method

.method private cz()V
    .locals 2

    .line 237
    const-string v0, "miuisdk"

    const-string v1, "process modules finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    invoke-interface {v0}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFinish()V

    .line 241
    :cond_0
    return-void
.end method

.method public static getInstance()Lmiui/module/ModuleManager;
    .locals 1

    .line 37
    sget-object v0, Lmiui/module/ModuleManager;->Cn:Lmiui/module/ModuleManager;

    return-object v0
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 223
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " successful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    invoke-interface {v0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method private o(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "modules"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private p(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "modules-temp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V
    .locals 13

    .line 100
    if-eqz p2, :cond_a

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 104
    :cond_0
    new-instance v0, Lcom/miui/internal/component/module/BuiltinRepository;

    iget-object v1, p0, Lmiui/module/ModuleManager;->du:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/BuiltinRepository;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Lcom/miui/internal/component/module/PrebuiltRepository;

    iget-object v2, p0, Lmiui/module/ModuleManager;->du:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/miui/internal/component/module/PrebuiltRepository;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p1, :cond_1

    .line 107
    new-instance p1, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v6, v4, [Lmiui/module/Repository;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    invoke-direct {p1, v6}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v6, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v7, v2, [Lmiui/module/Repository;

    aput-object v0, v7, v3

    aput-object v1, v7, v5

    aput-object p1, v7, v4

    invoke-direct {v6, v7}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    .line 112
    move-object p1, v6

    :goto_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 113
    array-length v1, p2

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_3

    aget-object v7, p2, v6

    .line 114
    invoke-direct {p0, v7}, Lmiui/module/ModuleManager;->B(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 115
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_3
    nop

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    .line 123
    :cond_4
    iget-object v1, p0, Lmiui/module/ModuleManager;->Cs:Ljava/io/File;

    invoke-virtual {p1, v0}, Lmiui/module/Repository;->contains(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    .line 126
    :goto_2
    array-length v1, p2

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_9

    aget-object v7, p2, v6

    .line 127
    const-string v8, "miuisdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loading module: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 129
    iget-object v8, p0, Lmiui/module/ModuleManager;->Cs:Ljava/io/File;

    iget-object v9, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10, v7}, Lmiui/module/ModuleManager;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 130
    const-string v8, "miuisdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t copy module from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/module/ModuleManager;->Cs:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, v7, v4}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    .line 133
    goto/16 :goto_6

    .line 136
    :cond_5
    invoke-direct {p0, v7}, Lmiui/module/ModuleManager;->B(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 137
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 139
    :try_start_0
    iget-object v9, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-direct {p0, v9, v7}, Lmiui/module/ModuleManager;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 140
    const-string v9, "miuisdk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to extract library to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lmiui/module/ModuleManager;->Cr:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, v7, v4}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto/16 :goto_6

    .line 148
    :cond_6
    goto :goto_4

    .line 145
    :catch_0
    move-exception v9

    .line 146
    const-string v10, "miuisdk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "got IOException when extract lib: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, v7, v4}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    .line 150
    :cond_7
    :goto_4
    new-instance v9, Lmiui/module/Dependency;

    invoke-direct {v9}, Lmiui/module/Dependency;-><init>()V

    .line 151
    invoke-virtual {v9, v7}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    .line 153
    :try_start_1
    iget-object v10, p0, Lmiui/module/ModuleManager;->Ct:Lcom/miui/internal/component/module/ModuleLoader;

    new-array v11, v5, [Lmiui/module/Dependency;

    aput-object v9, v11, v3

    invoke-virtual {v10, v11}, Lcom/miui/internal/component/module/ModuleLoader;->loadModules([Lmiui/module/Dependency;)V
    :try_end_1
    .catch Lcom/miui/internal/component/module/ModuleLoadException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    nop

    .line 167
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lmiui/module/ModuleManager;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 162
    :catch_1
    move-exception v8

    .line 163
    const-string v9, "miuisdk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got Exception when load modules: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, v7, v2}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    .line 165
    goto :goto_6

    .line 154
    :catch_2
    move-exception v8

    .line 155
    const-string v9, "miuisdk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got ModuleLoadException when load modules: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/internal/component/module/ModuleLoadException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 157
    invoke-direct {p0, v7, v5}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 159
    :cond_8
    invoke-direct {p0, v7, v2}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    .line 161
    :goto_5
    nop

    .line 126
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 169
    :cond_9
    invoke-direct {p0}, Lmiui/module/ModuleManager;->cz()V

    .line 170
    return-void

    .line 101
    :cond_a
    :goto_7
    return-void
.end method

.method public varargs loadModules([Ljava/lang/String;)V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/module/ModuleManager;->loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lmiui/module/ModuleManager;->Cu:Lmiui/module/ModuleManager$ModuleLoadListener;

    .line 220
    return-void
.end method
