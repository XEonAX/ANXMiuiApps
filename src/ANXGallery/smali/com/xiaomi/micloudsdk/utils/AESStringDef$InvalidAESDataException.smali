.class Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
.super Ljava/lang/Exception;
.source "AESStringDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/AESStringDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidAESDataException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
