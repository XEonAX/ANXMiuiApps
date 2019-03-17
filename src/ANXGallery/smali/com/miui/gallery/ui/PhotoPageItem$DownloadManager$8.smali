.class Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$8;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$8;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1361
    return-void
.end method
