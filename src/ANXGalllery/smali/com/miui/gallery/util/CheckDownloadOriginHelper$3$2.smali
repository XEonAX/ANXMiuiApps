.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$2;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->onDownloadComplete(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$2;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$2;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    iget-object v0, v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3$2;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    iget-object v0, v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;->onCanceled()V

    .line 115
    :cond_0
    return-void
.end method
