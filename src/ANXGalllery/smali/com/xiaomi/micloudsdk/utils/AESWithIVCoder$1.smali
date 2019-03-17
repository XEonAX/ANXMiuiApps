.class Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;
.super Lcom/xiaomi/micloudsdk/utils/AESCoder;
.source "AESWithIVCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;
    .param p2, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;->this$0:Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;

    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/utils/AESCoder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getInitalVector()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;->this$0:Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->access$000(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;)[B

    move-result-object v0

    return-object v0
.end method
