.class public abstract Lcom/miui/internal/util/ClassProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final jm:Ljava/lang/Object;

.field private jn:[J

.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-string v0, "miuiclassproxy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/miui/internal/util/ClassProxy$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/util/ClassProxy$1;-><init>(Lcom/miui/internal/util/ClassProxy;)V

    iput-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jm:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/util/ClassProxy;->mPtr:J

    .line 125
    invoke-direct {p0, p1}, Lcom/miui/internal/util/ClassProxy;->initNative(Ljava/lang/Class;)V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/util/ClassProxy;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/miui/internal/util/ClassProxy;->disposeNative()V

    return-void
.end method

.method private a(JZ)Z
    .locals 5

    .line 158
    nop

    .line 159
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-nez v2, :cond_0

    .line 161
    nop

    .line 162
    goto :goto_1

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 166
    if-eqz p3, :cond_2

    .line 167
    iget-object p1, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, v1

    .line 169
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 171
    :cond_3
    return v0
.end method

.method private native attachMethodNative(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private c(J)V
    .locals 9

    .line 134
    iget-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 135
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    .line 136
    iget-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    aput-wide p1, v0, v2

    goto :goto_3

    .line 138
    :cond_0
    nop

    .line 139
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    const/4 v4, -0x1

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    aget-wide v5, v3, v0

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    aget-wide v5, v3, v0

    cmp-long v3, v5, p1

    if-nez v3, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    :goto_1
    nop

    .line 142
    goto :goto_2

    .line 146
    :cond_3
    move v0, v4

    :goto_2
    if-ne v0, v4, :cond_4

    .line 147
    iget-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 148
    iget-object v1, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v1, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    array-length v1, v1

    .line 150
    iput-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    .line 153
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/miui/internal/util/ClassProxy;->jn:[J

    aput-wide p1, v1, v0

    .line 155
    :goto_3
    return-void
.end method

.method private native detachMethodNative(J)V
.end method

.method private native disposeNative()V
.end method

.method public static native getProcName()Ljava/lang/String;
.end method

.method private native initNative(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public static native setDebugModules([Ljava/lang/String;)V
.end method

.method public static native setupClassHook(ILjava/lang/String;)Z
.end method

.method public static native setupInterpreterHook()Z
.end method

.method public static native setupResourceHook()V
.end method


# virtual methods
.method protected final attachConstructor(Ljava/lang/String;)J
    .locals 2

    .line 198
    const-string v0, "<init>"

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jm:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/util/ClassProxy;->attachMethodNative(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/util/ClassProxy;->c(J)V

    .line 186
    monitor-exit v0

    return-wide p1

    .line 187
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final detachMethod(J)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/miui/internal/util/ClassProxy;->jm:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/internal/util/ClassProxy;->a(JZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/util/ClassProxy;->detachMethodNative(J)V

    .line 211
    :cond_0
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final dispose()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/miui/internal/util/ClassProxy;->disposeNative()V

    .line 221
    return-void
.end method

.method protected abstract handle()V
.end method
