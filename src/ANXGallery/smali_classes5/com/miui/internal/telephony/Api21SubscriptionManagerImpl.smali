.class Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;
.super Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;
    }
.end annotation


# static fields
.field protected static sSubscriptionManagerCls:Ljava/lang/Class;


# instance fields
.field private mSubscriptionManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    :try_start_0
    const-string v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 156
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    return-void
.end method

.method private getAllSubInfoList(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p1, "subscriptionManager"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 228
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getAllSubInfoList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 229
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static getSubId(I)Ljava/lang/Object;
    .locals 7
    .param p0, "slotId"    # I

    .line 267
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v2, "getSubId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 268
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 269
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-object v1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private newSubscriptionManagerInstance()Ljava/lang/Object;
    .locals 3

    .line 219
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getAllSubscriptionInfoListInternal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->newSubscriptionManagerInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->mSubscriptionManager:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getAllSubInfoList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 211
    .local v2, "subInfoRecord":Ljava/lang/Object;
    new-instance v3, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;

    invoke-direct {v3, v2}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v2    # "subInfoRecord":Ljava/lang/Object;
    goto :goto_0

    .line 214
    :cond_1
    return-object v0
.end method

.method public getDefaultSlotId()I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultSubId()I
    .locals 4

    .line 244
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getDefaultSubId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 245
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .local v0, "defaultSubId":J
    long-to-int v2, v0

    return v2

    .line 248
    .end local v0    # "defaultSubId":J
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method

.method protected getSlotId(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 256
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->sSubscriptionManagerCls:Ljava/lang/Class;

    const-string v1, "getSlotId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 257
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SLOT_ID:I

    return v0
.end method

.method public getSlotIdForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 162
    invoke-static {p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SLOT_ID:I

    return v0

    .line 166
    :cond_0
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_1

    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SLOT_ID:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSlotId(I)I

    move-result v0

    .line 167
    .local v0, "slotId":I
    :goto_0
    invoke-static {v0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SLOT_ID:I

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public getSubscriptionIdForSlot(I)I
    .locals 7
    .param p1, "slotId"    # I

    .line 172
    invoke-static {p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    return v0

    .line 176
    :cond_0
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_1

    .line 177
    sget v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->DEFAULT_SUBSCRIPTION_ID:I

    return v0

    .line 180
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 182
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 183
    .local v3, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 184
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    return v2

    .line 186
    .end local v3    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2
    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 191
    sget v2, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    .line 192
    .local v2, "sub":I
    invoke-static {p1}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->getSubId(I)Ljava/lang/Object;

    move-result-object v3

    .line 193
    .local v3, "subIds":Ljava/lang/Object;
    instance-of v4, v3, [I

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 194
    move-object v4, v3

    check-cast v4, [I

    .line 195
    .local v4, "ids":[I
    array-length v6, v4

    if-lez v6, :cond_4

    aget v5, v4, v5

    goto :goto_1

    :cond_4
    sget v5, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    :goto_1
    move v2, v5

    .line 196
    .end local v4    # "ids":[I
    goto :goto_3

    :cond_5
    instance-of v4, v3, [J

    if-eqz v4, :cond_7

    .line 197
    move-object v4, v3

    check-cast v4, [J

    .line 198
    .local v4, "ids":[J
    array-length v6, v4

    if-lez v6, :cond_6

    aget-wide v5, v4, v5

    long-to-int v5, v5

    goto :goto_2

    :cond_6
    sget v5, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;->INVALID_SUBSCRIPTION_ID:I

    :goto_2
    move v2, v5

    .line 200
    .end local v4    # "ids":[J
    :cond_7
    :goto_3
    return v2

    .line 188
    .end local v2    # "sub":I
    .end local v3    # "subIds":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
