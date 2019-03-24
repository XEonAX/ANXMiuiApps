.class Lmiui/provider/ExtraTelephony$1;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/ExtraTelephony;->getCallBlockType(Landroid/content/Context;Ljava/lang/String;IZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isForwardCall:Z

.field final synthetic val$isRepeated:Z

.field final synthetic val$isRepeatedBlocked:Z

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZZZ)V
    .locals 0

    .line 1699
    iput-object p1, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/provider/ExtraTelephony$1;->val$number:Ljava/lang/String;

    iput p3, p0, Lmiui/provider/ExtraTelephony$1;->val$slotId:I

    iput-boolean p4, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    iput-boolean p5, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    iput-boolean p6, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Judge;->CALL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lmiui/provider/ExtraTelephony$1;->val$number:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lmiui/provider/ExtraTelephony$1;->val$slotId:I

    .line 1707
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1708
    iget-boolean v4, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    if-eqz v4, :cond_0

    const-string v4, "is_forward_call"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    .line 1709
    iget-boolean v5, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    if-eqz v5, :cond_1

    const-string v5, "is_repeated_normal_call"

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 1710
    iget-boolean v5, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    if-eqz v5, :cond_2

    const-string v5, "is_repeated_blocked_call"

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    aput-object v5, v3, v4

    .line 1703
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1712
    .local v0, "callBlockType":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1699
    invoke-virtual {p0}, Lmiui/provider/ExtraTelephony$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
