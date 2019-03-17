.class public Lcn/kuaipan/android/utils/SyncAccessor$Args;
.super Ljava/lang/Object;
.source "SyncAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/SyncAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# static fields
.field private static mPool:Lcn/kuaipan/android/utils/SyncAccessor$Args;

.field private static mPoolSize:I

.field private static mPoolSync:Ljava/lang/Object;


# instance fields
.field public err:Ljava/lang/RuntimeException;

.field public volatile handled:Z

.field private next:Lcn/kuaipan/android/utils/SyncAccessor$Args;

.field public params:[Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPoolSync:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPoolSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->handled:Z

    return-void
.end method

.method private clearForRecycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->params:[Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->result:Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->err:Ljava/lang/RuntimeException;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->handled:Z

    .line 51
    return-void
.end method

.method public static obtain()Lcn/kuaipan/android/utils/SyncAccessor$Args;
    .locals 3

    .prologue
    .line 24
    sget-object v2, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPool:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    if-eqz v1, :cond_0

    .line 26
    sget-object v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPool:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 27
    .local v0, "m":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    iget-object v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->next:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    sput-object v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPool:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 28
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->next:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 29
    monitor-exit v2

    .line 32
    .end local v0    # "m":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :goto_0
    return-object v0

    .line 31
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    new-instance v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/SyncAccessor$Args;-><init>()V

    goto :goto_0

    .line 31
    .restart local v0    # "m":Lcn/kuaipan/android/utils/SyncAccessor$Args;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 36
    sget-object v1, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 38
    invoke-direct {p0}, Lcn/kuaipan/android/utils/SyncAccessor$Args;->clearForRecycle()V

    .line 40
    sget-object v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPool:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    iput-object v0, p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->next:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 41
    sput-object p0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->mPool:Lcn/kuaipan/android/utils/SyncAccessor$Args;

    .line 43
    :cond_0
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
