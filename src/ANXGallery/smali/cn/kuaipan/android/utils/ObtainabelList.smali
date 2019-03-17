.class public Lcn/kuaipan/android/utils/ObtainabelList;
.super Ljava/util/LinkedList;
.source "ObtainabelList.java"

# interfaces
.implements Lcn/kuaipan/android/utils/IObtainable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;",
        "Lcn/kuaipan/android/utils/IObtainable;"
    }
.end annotation


# static fields
.field private static mPool:Lcn/kuaipan/android/utils/ObtainabelList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ObtainabelList",
            "<*>;"
        }
    .end annotation
.end field

.field private static mPoolSize:I = 0x0

.field private static mPoolSync:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x59f8f30bbe1eddd3L


# instance fields
.field private next:Lcn/kuaipan/android/utils/ObtainabelList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ObtainabelList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSync:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    sput v0, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lcn/kuaipan/android/utils/ObtainabelList;, "Lcn/kuaipan/android/utils/ObtainabelList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 54
    return-void
.end method

.method public static obtain()Lcn/kuaipan/android/utils/ObtainabelList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/kuaipan/android/utils/ObtainabelList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v2, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 22
    :try_start_0
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPool:Lcn/kuaipan/android/utils/ObtainabelList;

    if-eqz v1, :cond_0

    .line 23
    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelList;->mPool:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 24
    .local v0, "m":Lcn/kuaipan/android/utils/ObtainabelList;
    iget-object v1, v0, Lcn/kuaipan/android/utils/ObtainabelList;->next:Lcn/kuaipan/android/utils/ObtainabelList;

    sput-object v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPool:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 25
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/kuaipan/android/utils/ObtainabelList;->next:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 26
    sget v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSize:I

    .line 27
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->clear()V

    .line 28
    monitor-exit v2

    .line 31
    .end local v0    # "m":Lcn/kuaipan/android/utils/ObtainabelList;
    :goto_0
    return-object v0

    .line 30
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    new-instance v0, Lcn/kuaipan/android/utils/ObtainabelList;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/ObtainabelList;-><init>()V

    goto :goto_0

    .line 30
    .restart local v0    # "m":Lcn/kuaipan/android/utils/ObtainabelList;
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
    .locals 4

    .prologue
    .line 36
    .local p0, "this":Lcn/kuaipan/android/utils/ObtainabelList;, "Lcn/kuaipan/android/utils/ObtainabelList<TE;>;"
    sget-object v2, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    sget v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSize:I

    const/16 v3, 0x50

    if-ge v1, v3, :cond_0

    .line 38
    sget v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPoolSize:I

    .line 39
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelList;->mPool:Lcn/kuaipan/android/utils/ObtainabelList;

    iput-object v1, p0, Lcn/kuaipan/android/utils/ObtainabelList;->next:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 40
    sput-object p0, Lcn/kuaipan/android/utils/ObtainabelList;->mPool:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/ObtainabelList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "value":Ljava/lang/Object;, "TE;"
    instance-of v3, v0, Lcn/kuaipan/android/utils/IObtainable;

    if-eqz v3, :cond_1

    .line 45
    check-cast v0, Lcn/kuaipan/android/utils/IObtainable;

    .end local v0    # "value":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Lcn/kuaipan/android/utils/IObtainable;->recycle()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/ObtainabelList;->clear()V

    .line 49
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    return-void
.end method
