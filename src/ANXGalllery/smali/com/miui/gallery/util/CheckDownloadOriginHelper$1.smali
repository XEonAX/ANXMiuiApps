.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper;->doDownloadOrigin(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    iput-object p2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;->this$0:Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    iget-object v1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;->val$list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->access$000(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/List;Z)V

    .line 59
    return-void
.end method
