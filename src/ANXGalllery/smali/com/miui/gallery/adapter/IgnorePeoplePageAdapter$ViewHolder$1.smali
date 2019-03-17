.class Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "IgnorePeoplePageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->bindData(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

.field final synthetic val$localId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->this$1:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    iput-object p2, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->val$localId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->val$serverId:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->this$1:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->this$0:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->access$000(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;)Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->this$1:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->this$0:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    invoke-static {v0}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->access$000(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;)Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->val$localId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->val$serverId:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->this$1:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    invoke-static {v4}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->access$100(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;->this$1:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    invoke-static {v5}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->access$200(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;->onPeopleRecoveryButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 121
    :cond_0
    return-void
.end method
