.class Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;
.super Ljava/lang/Object;
.source "RecentDiscoveryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

.field final synthetic val$albumId:J

.field final synthetic val$albumName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    iput-wide p2, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->val$albumId:J

    iput-object p4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->val$albumName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->access$000(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;)Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->val$albumId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isAlbumDataValid(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->access$100(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;)Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    iget-wide v2, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->val$albumId:J

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->access$200(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->val$albumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->this$0:Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    iget-object v1, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;->val$albumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->access$300(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
