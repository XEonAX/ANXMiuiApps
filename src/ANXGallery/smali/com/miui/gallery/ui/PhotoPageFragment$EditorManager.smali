.class Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;
.super Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 1

    .prologue
    .line 3697
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 3697
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method


# virtual methods
.method protected handleEditorResult(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    .line 3700
    const/4 v0, 0x0

    .line 3701
    .local v0, "handled":Z
    if-eqz p1, :cond_0

    .line 3702
    const-string v5, "photo_secret_id"

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3703
    .local v2, "id":J
    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 3705
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->setTargetId(J)V

    .line 3706
    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->notifyDataSetChange(J)V

    .line 3707
    const/4 v0, 0x1

    .line 3720
    .end local v2    # "id":J
    :cond_0
    :goto_0
    return v0

    .line 3710
    .restart local v2    # "id":J
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3711
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 3712
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 3713
    .local v1, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->onEditorSaved(Landroid/net/Uri;)V

    .line 3714
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->notifyDataSetChange(Ljava/lang/String;)V

    .line 3715
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->setTargetPath(Ljava/lang/String;)V

    .line 3716
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 3724
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->release()V

    .line 3725
    return-void
.end method
