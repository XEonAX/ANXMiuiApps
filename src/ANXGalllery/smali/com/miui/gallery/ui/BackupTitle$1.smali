.class Lcom/miui/gallery/ui/BackupTitle$1;
.super Ljava/lang/Object;
.source "BackupTitle.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BackupTitle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BackupTitle;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$1;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v4, p0, Lcom/miui/gallery/ui/BackupTitle$1;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/BackupTitle;->access$100(Lcom/miui/gallery/ui/BackupTitle;I)Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    move-result-object v2

    .line 116
    .local v2, "pauseItem":Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
    if-eqz v2, :cond_0

    .line 117
    invoke-static {v2}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->access$200(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 118
    iget-object v4, p0, Lcom/miui/gallery/ui/BackupTitle$1;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    .line 124
    :goto_0
    const/4 v3, 0x1

    .line 126
    :cond_0
    return v3

    .line 120
    :cond_1
    invoke-static {v2}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->access$200(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    .line 121
    .local v0, "pauseInterval":J
    const-string v3, "BackupTitle"

    const-string v4, "pause %d hours"

    invoke-static {v2}, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->access$200(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupTitle$1;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/BackupTitle;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/miui/gallery/util/SyncUtil;->pauseSync(Landroid/content/Context;J)V

    goto :goto_0
.end method
