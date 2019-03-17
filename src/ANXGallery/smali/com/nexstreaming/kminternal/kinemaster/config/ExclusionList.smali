.class public Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;
.super Ljava/lang/Object;
.source "ExclusionList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Ljava/io/File;

.field private m_refs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->a:Ljava/io/File;

    .line 21
    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->a:Ljava/io/File;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public static exclusionListBackedBy(Ljava/io/File;)Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;
    .locals 3

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 34
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 42
    :goto_0
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;-><init>(Ljava/io/File;)V

    .line 47
    :goto_1
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    .line 40
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    :goto_3
    move-object v0, v1

    .line 40
    goto :goto_0

    .line 38
    :catch_2
    move-exception v0

    :goto_4
    move-object v0, v1

    .line 40
    goto :goto_0

    .line 39
    :catch_3
    move-exception v0

    :goto_5
    move-object v0, v1

    goto :goto_0

    .line 45
    :cond_0
    iput-object p0, v0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->a:Ljava/io/File;

    goto :goto_1

    .line 39
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_5

    .line 38
    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_4

    .line 37
    :catch_6
    move-exception v1

    move-object v1, v0

    goto :goto_3

    .line 36
    :catch_7
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 35
    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_9
    move-exception v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_1
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized isExcluded(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v0, :cond_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 74
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/ExclusionList;->m_refs:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :catch_1
    move-exception v0

    goto :goto_0
.end method
