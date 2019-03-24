.class Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21SubscriptionInfoImpl"
.end annotation


# static fields
.field private static sSubInfoRecordCls:Ljava/lang/Class;


# instance fields
.field private mSubInfoRecord:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;

    .line 280
    :try_start_0
    const-string v0, "android.telephony.SubInfoRecord"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 284
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "subInfoRecord"    # Ljava/lang/Object;

    .line 288
    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->mSubInfoRecord:Ljava/lang/Object;

    .line 290
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 2

    .line 333
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->mSubInfoRecord:Ljava/lang/Object;

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 2

    .line 344
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->mSubInfoRecord:Ljava/lang/Object;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .line 306
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;

    const-string v1, "iccId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->mSubInfoRecord:Ljava/lang/Object;

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->getSlotId()I

    move-result v0

    return v0
.end method

.method public getSlotId()I
    .locals 2

    .line 317
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;

    const-string v1, "slotId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->mSubInfoRecord:Ljava/lang/Object;

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 2

    .line 295
    :try_start_0
    sget-object v0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->sSubInfoRecordCls:Ljava/lang/Class;

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api21SubscriptionManagerImpl$Api21SubscriptionInfoImpl;->mSubInfoRecord:Ljava/lang/Object;

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    .line 295
    return v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/BaseSubscriptionManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 354
    const/4 v0, 0x0

    return v0
.end method
