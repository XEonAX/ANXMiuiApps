.class Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSuccess(Ljava/lang/String;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2$1;->this$2:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->access$3400(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Ljava/lang/String;)V

    .line 1560
    return-void
.end method
