.class final Lcom/miui/gallery/net/download/ConnectionController$Holder;
.super Ljava/lang/Object;
.source "ConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/net/download/ConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final reason:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/miui/gallery/net/download/ConnectionController$Holder;, "Lcom/miui/gallery/net/download/ConnectionController$Holder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/net/download/ConnectionController$Holder;->value:Ljava/lang/Object;

    .line 38
    iput p1, p0, Lcom/miui/gallery/net/download/ConnectionController$Holder;->reason:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/miui/gallery/net/download/ConnectionController$Holder;, "Lcom/miui/gallery/net/download/ConnectionController$Holder<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/gallery/net/download/ConnectionController$Holder;->value:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/net/download/ConnectionController$Holder;->reason:I

    .line 34
    return-void
.end method
