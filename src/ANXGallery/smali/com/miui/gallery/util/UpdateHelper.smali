.class public Lcom/miui/gallery/util/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    return-void
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    return v0
.end method

.method public update(DD)D
    .locals 1
    .param p1, "original"    # D
    .param p3, "update"    # D

    .prologue
    .line 43
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    .line 45
    move-wide p1, p3

    .line 47
    :cond_0
    return-wide p1
.end method

.method public update(II)I
    .locals 1
    .param p1, "original"    # I
    .param p2, "update"    # I

    .prologue
    .line 27
    if-eq p1, p2, :cond_0

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    .line 29
    move p1, p2

    .line 31
    :cond_0
    return p1
.end method

.method public update(JJ)J
    .locals 1
    .param p1, "original"    # J
    .param p3, "update"    # J

    .prologue
    .line 35
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    .line 37
    move-wide p1, p3

    .line 39
    :cond_0
    return-wide p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "original":Ljava/lang/Object;, "TT;"
    .local p2, "update":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/miui/gallery/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    .line 69
    move-object p1, p2

    .line 71
    :cond_0
    return-object p1
.end method

.method public update([B[B)[B
    .locals 1
    .param p1, "original"    # [B
    .param p2, "update"    # [B

    .prologue
    .line 59
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/UpdateHelper;->mUpdated:Z

    .line 61
    move-object p1, p2

    .line 63
    :cond_0
    return-object p1
.end method
