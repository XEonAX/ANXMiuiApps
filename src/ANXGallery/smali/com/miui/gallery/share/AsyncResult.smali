.class public Lcom/miui/gallery/share/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


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
.field public final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mError:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/miui/gallery/share/AsyncResult;->mError:I

    .line 11
    iput-object p2, p0, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public static create(I)Lcom/miui/gallery/share/AsyncResult;
    .locals 2
    .param p0, "err"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/miui/gallery/share/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/share/AsyncResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;
    .locals 1
    .param p0, "err"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lcom/miui/gallery/share/AsyncResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/miui/gallery/share/AsyncResult;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/share/AsyncResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    .local p0, "this":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<TT;>;"
    const-string v0, "[error code=%d, data=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/share/AsyncResult;->mError:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
