.class public abstract Lcom/miui/utils/LazyConst;
.super Ljava/lang/Object;
.source "LazyConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mResolved:Z

.field private volatile mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    .local p0, "this":Lcom/miui/utils/LazyConst;, "Lcom/miui/utils/LazyConst<TParam;TValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/utils/LazyConst;->mResolved:Z

    return-void
.end method

.method private declared-synchronized init(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/miui/utils/LazyConst;, "Lcom/miui/utils/LazyConst<TParam;TValue;>;"
    .local p1, "param":Ljava/lang/Object;, "TParam;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/utils/LazyConst;->mResolved:Z

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/utils/LazyConst;->onInit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/utils/LazyConst;->mValue:Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/utils/LazyConst;->mResolved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)TValue;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/miui/utils/LazyConst;, "Lcom/miui/utils/LazyConst<TParam;TValue;>;"
    .local p1, "param":Ljava/lang/Object;, "TParam;"
    iget-boolean v0, p0, Lcom/miui/utils/LazyConst;->mResolved:Z

    if-nez v0, :cond_0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/utils/LazyConst;->init(Ljava/lang/Object;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/miui/utils/LazyConst;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract onInit(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)TValue;"
        }
    .end annotation
.end method
