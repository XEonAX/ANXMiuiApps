.class public Lcom/xiaomi/smack/ConnectionHelper;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# direct methods
.method public static asErrorCode(Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v3, 0x69

    const/4 v4, -0x1

    .line 9
    move-object v1, p0

    .line 10
    .local v1, "throwable":Ljava/lang/Throwable;
    instance-of v2, v1, Lcom/xiaomi/smack/XMPPException;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 11
    check-cast v2, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v2}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Lcom/xiaomi/smack/XMPPException;

    .end local v1    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lcom/xiaomi/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v1

    .line 16
    .restart local v1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "cause":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_1
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    move v2, v3

    .line 49
    :goto_0
    return v2

    .line 23
    :cond_2
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_b

    .line 24
    const-string v2, "Network is unreachable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 25
    const/16 v2, 0x66

    goto :goto_0

    .line 26
    :cond_3
    const-string v2, "Connection refused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 27
    const/16 v2, 0x67

    goto :goto_0

    .line 28
    :cond_4
    const-string v2, "Connection timed out"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_5

    move v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_5
    const-string v2, "EACCES (Permission denied)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    const/16 v2, 0x65

    goto :goto_0

    .line 32
    :cond_6
    const-string v2, "Connection reset by peer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 33
    const/16 v2, 0x6d

    goto :goto_0

    .line 34
    :cond_7
    const-string v2, "Broken pipe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_8

    .line 35
    const/16 v2, 0x6e

    goto :goto_0

    .line 36
    :cond_8
    const-string v2, "No route to host"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_9

    .line 37
    const/16 v2, 0x68

    goto :goto_0

    .line 38
    :cond_9
    const-string v2, "EINVAL (Invalid argument)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 39
    const/16 v2, 0x6a

    goto :goto_0

    .line 41
    :cond_a
    const/16 v2, 0xc7

    goto :goto_0

    .line 43
    :cond_b
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_c

    .line 44
    const/16 v2, 0x6b

    goto :goto_0

    .line 45
    :cond_c
    instance-of v2, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v2, :cond_d

    .line 46
    const/16 v2, 0x18f

    goto :goto_0

    .line 49
    :cond_d
    const/4 v2, 0x0

    goto :goto_0
.end method
