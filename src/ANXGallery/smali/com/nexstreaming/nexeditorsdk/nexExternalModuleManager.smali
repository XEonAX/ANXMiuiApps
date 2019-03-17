.class public Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;
.super Ljava/lang/Object;
.source "nexExternalModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nexModuleManager"

.field private static final s_supportedModuleClass:[Ljava/lang/Class;

.field private static single:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;


# instance fields
.field private moduleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private moduleProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/nexstreaming/nexeditorsdk/module/nexFaceDetectionProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->s_supportedModuleClass:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleProviders:Ljava/util/Map;

    .line 35
    return-void
.end method

.method static getInstance()Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->single:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;-><init>()V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->single:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->single:Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;

    return-object v0
.end method

.method private getSubClassType(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 200
    move v0, v1

    :goto_0
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->s_supportedModuleClass:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 201
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->s_supportedModuleClass:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    add-int/lit8 v1, v0, 0x1

    .line 205
    :cond_0
    return v1

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSubClassType(Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    move v1, v0

    .line 191
    :goto_0
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->s_supportedModuleClass:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 192
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->s_supportedModuleClass:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    add-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return v1
.end method


# virtual methods
.method clearModule()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    return-void
.end method

.method getModule(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 244
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    .line 251
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 260
    :goto_1
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_0
    :goto_2
    move-object v0, v1

    .line 260
    goto :goto_1

    .line 254
    :catch_2
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 256
    :catch_3
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method getModule(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getSubClassType(Ljava/lang/Class;)I

    move-result v1

    .line 228
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;

    .line 229
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 230
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->a(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;)I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModules(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getSubClassType(Ljava/lang/Class;)I

    move-result v2

    .line 217
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;

    .line 218
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;->a(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;)I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    .line 219
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    return-object v1
.end method

.method public registerModule(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    .line 68
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;

    .line 76
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;

    .line 77
    invoke-interface {v1}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :cond_1
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 81
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->getSubClassType(Ljava/lang/Object;)I

    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported Provider interface. uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 87
    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 85
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;ILcom/nexstreaming/nexeditorsdk/nexExternalModuleManager$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleProviders:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 89
    :catch_2
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 91
    :catch_3
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public registerModule(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->registerModule(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterModule(Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;)V
    .locals 1

    .prologue
    .line 103
    invoke-interface {p1}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->unregisterModule(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public unregisterModule(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;

    .line 114
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/module/nexModuleProvider;->uuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 119
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexExternalModuleManager;->moduleProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
