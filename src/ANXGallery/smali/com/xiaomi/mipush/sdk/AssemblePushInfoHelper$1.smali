.class synthetic Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$1;
.super Ljava/lang/Object;
.source "AssemblePushInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/xiaomi/mipush/sdk/AssemblePush;->values()[Lcom/xiaomi/mipush/sdk/AssemblePush;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$1;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$1;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_HUAWEI:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$1;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_FCM:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$1;->$SwitchMap$com$xiaomi$mipush$sdk$AssemblePush:[I

    sget-object v1, Lcom/xiaomi/mipush/sdk/AssemblePush;->ASSEMBLE_PUSH_COS:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/AssemblePush;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
