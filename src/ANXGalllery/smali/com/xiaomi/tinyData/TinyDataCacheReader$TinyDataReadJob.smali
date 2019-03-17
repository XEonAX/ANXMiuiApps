.class Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;
.super Ljava/lang/Object;
.source "TinyDataCacheReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/tinyData/TinyDataCacheReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TinyDataReadJob"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUploader:Lcom/xiaomi/tinyData/TinyDataUploader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;->mUploader:Lcom/xiaomi/tinyData/TinyDataUploader;

    .line 46
    iput-object p1, p0, Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/tinyData/TinyDataCacheReader$TinyDataReadJob;->mUploader:Lcom/xiaomi/tinyData/TinyDataUploader;

    invoke-static {v0, v1}, Lcom/xiaomi/tinyData/TinyDataCacheReader;->access$000(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V

    .line 52
    return-void
.end method
