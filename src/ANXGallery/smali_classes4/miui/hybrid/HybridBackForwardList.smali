.class public abstract Lmiui/hybrid/HybridBackForwardList;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 25
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentItem()Lmiui/hybrid/HybridHistoryItem;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemAtIndex(I)Lmiui/hybrid/HybridHistoryItem;
    .locals 0

    .line 29
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method
