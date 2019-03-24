.class public Lmiui/vip/VipMessageUtils;
.super Ljava/lang/Object;
.source "VipMessageUtils.java"


# static fields
.field static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getErrMsg(ILjava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "result"    # I
    .param p1, "data"    # Ljava/lang/Object;

    .line 61
    if-eqz p0, :cond_0

    .line 62
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 64
    .local v0, "res":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 65
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 69
    .end local v0    # "res":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRequestId(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .line 80
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "VIP_REQUEST_ID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 84
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public static getValueFrom(Landroid/os/Message;)Ljava/lang/Object;
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 19
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 20
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 22
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static makeErrData(ILjava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "result"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 73
    if-eqz p0, :cond_0

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setData(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 5
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "value"    # Ljava/lang/Object;

    .line 26
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 33
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 34
    const-string v1, "value"

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 36
    const-string v1, "value"

    move-object v2, p1

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 38
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 39
    .local v1, "array":[Ljava/lang/Object;
    array-length v3, v1

    if-lez v3, :cond_5

    .line 40
    aget-object v3, v1, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 41
    const-string v2, "value"

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_4
    aget-object v2, v1, v2

    instance-of v2, v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_5

    .line 43
    const-string v2, "value"

    move-object v3, p1

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 46
    .end local v1    # "array":[Ljava/lang/Object;
    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 47
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 48
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "elem":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 51
    const-string v3, "value"

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 52
    :cond_7
    instance-of v3, v2, Landroid/os/Parcelable;

    if-eqz v3, :cond_8

    .line 53
    const-string v3, "value"

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v2    # "elem":Ljava/lang/Object;
    :cond_8
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public static setRequestId(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "reqId"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "data":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 92
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    :cond_0
    const-string v1, "VIP_REQUEST_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
