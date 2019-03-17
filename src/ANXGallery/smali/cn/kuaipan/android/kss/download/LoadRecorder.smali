.class public Lcn/kuaipan/android/kss/download/LoadRecorder;
.super Ljava/lang/Object;
.source "LoadRecorder.java"


# instance fields
.field private map:Lcn/kuaipan/android/kss/download/LoadMap;

.field private final space:Lcn/kuaipan/android/kss/download/LoadMap$Space;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$Space;)V
    .locals 0
    .param p1, "map"    # Lcn/kuaipan/android/kss/download/LoadMap;
    .param p2, "space"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->map:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 15
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->space:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .line 17
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->map:Lcn/kuaipan/android/kss/download/LoadMap;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The recoder has been recycled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->space:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->remove(I)V

    .line 25
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->map:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/kss/download/LoadMap;->onSpaceRemoved(I)V

    .line 26
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/LoadRecorder;->recycle()V

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    return-void
.end method

.method getSpace()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->space:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    return-object v0
.end method

.method getStart()J
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->space:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->getStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->map:Lcn/kuaipan/android/kss/download/LoadMap;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->map:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-virtual {v0, p0}, Lcn/kuaipan/android/kss/download/LoadMap;->recycleRecorder(Lcn/kuaipan/android/kss/download/LoadRecorder;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->map:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 37
    :cond_0
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadRecorder;->space:Lcn/kuaipan/android/kss/download/LoadMap$Space;

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->size()J

    move-result-wide v0

    return-wide v0
.end method
