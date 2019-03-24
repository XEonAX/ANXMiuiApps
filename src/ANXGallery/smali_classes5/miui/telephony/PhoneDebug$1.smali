.class Lmiui/telephony/PhoneDebug$1;
.super Ljava/lang/Object;
.source "PhoneDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/PhoneDebug;->registerDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$time:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 68
    iput p1, p0, Lmiui/telephony/PhoneDebug$1;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 73
    :try_start_0
    iget v0, p0, Lmiui/telephony/PhoneDebug$1;->val$time:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 74
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$000()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "te":Ljava/lang/Exception;
    const-string v1, "PhoneDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDelay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v0    # "te":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
