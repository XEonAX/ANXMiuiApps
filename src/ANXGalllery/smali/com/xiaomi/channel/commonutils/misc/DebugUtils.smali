.class public Lcom/xiaomi/channel/commonutils/misc/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field static final HEXCHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/DebugUtils;->HEXCHARS:[C

    .line 14
    return-void
.end method

.method public static bytes2Hex([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 36
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 37
    .local v2, "v":I
    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/DebugUtils;->HEXCHARS:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/DebugUtils;->HEXCHARS:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isTesting(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/DebugSwitch;->sDebugServerHost:Z

    return v0
.end method
