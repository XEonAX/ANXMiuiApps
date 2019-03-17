.class Lcom/miui/gallery/ui/BackupDetailFragment$2;
.super Ljava/lang/Object;
.source "BackupDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BackupDetailFragment;->refreshOnUploadStatusChanged(Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

.field final synthetic val$statusItem:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BackupDetailFragment;Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BackupDetailFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->val$statusItem:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 167
    invoke-static {}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->getUriAdapter()Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->val$statusItem:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    invoke-virtual {v3}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->getUserUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;->getLocalId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->val$statusItem:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;

    invoke-virtual {v2}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusItem;->getItemType()Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/sdk/uploadstatus/ItemType;->OWNER:Lcom/miui/gallery/sdk/uploadstatus/ItemType;

    if-ne v2, v3, :cond_1

    .line 169
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$000(Lcom/miui/gallery/ui/BackupDetailFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BackupDetailFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BackupDetailFragment;->getLoader()Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Landroid/content/CursorLoader;

    .line 179
    .local v1, "loader":Landroid/content/CursorLoader;
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/BackupDetailFragment;->configLoader(Landroid/content/CursorLoader;)V

    .line 180
    invoke-virtual {v1}, Landroid/content/CursorLoader;->onContentChanged()V

    .line 182
    .end local v1    # "loader":Landroid/content/CursorLoader;
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$2;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$000(Lcom/miui/gallery/ui/BackupDetailFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x3fffffff

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
