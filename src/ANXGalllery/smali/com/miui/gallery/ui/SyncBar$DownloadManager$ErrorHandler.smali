.class Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;
.super Ljava/lang/Object;
.source "SyncBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SyncBar$DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorCodeTranslator:Lcom/miui/gallery/error/core/ErrorCodeTranslator;

.field private mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance v0, Lcom/miui/gallery/error/BaseErrorCodeTranslator;

    invoke-direct {v0}, Lcom/miui/gallery/error/BaseErrorCodeTranslator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mErrorCodeTranslator:Lcom/miui/gallery/error/core/ErrorCodeTranslator;

    .line 641
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mContext:Landroid/content/Context;

    .line 642
    return-void
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;Lcom/miui/gallery/error/core/ErrorTip;)Lcom/miui/gallery/error/core/ErrorTip;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;
    .param p1, "x1"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

    return-object p1
.end method


# virtual methods
.method public clearError()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

    .line 662
    return-void
.end method

.method public getErrorTip()Lcom/miui/gallery/error/core/ErrorTip;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

    return-object v0
.end method

.method public handleError(Lcom/miui/gallery/error/core/ErrorCode;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/miui/gallery/error/core/ErrorCode;
    .param p2, "callback"    # Lcom/miui/gallery/error/core/ErrorTranslateCallback;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mErrorCodeTranslator:Lcom/miui/gallery/error/core/ErrorCodeTranslator;

    iget-object v1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler$1;-><init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/miui/gallery/error/core/ErrorCodeTranslator;->translate(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V

    .line 654
    return-void
.end method
