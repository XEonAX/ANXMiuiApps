.class Lcom/miui/gallery/activity/HomePageActivity$1;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/HomePageActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/HomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/HomePageActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageActivity$1;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity$1;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    iget-object v2, v2, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v3, p0, Lcom/miui/gallery/activity/HomePageActivity$1;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v3}, Lcom/miui/gallery/activity/HomePageActivity;->access$100(Lcom/miui/gallery/activity/HomePageActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 157
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/miui/gallery/ui/BaseFragment;

    if-eqz v2, :cond_0

    .line 158
    check-cast v0, Lcom/miui/gallery/ui/BaseFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/BaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "page":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity$1;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v2}, Lcom/miui/gallery/activity/HomePageActivity;->access$200(Lcom/miui/gallery/activity/HomePageActivity;)Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->showImmersionMenu(Landroid/view/View;Ljava/lang/String;)V

    .line 163
    return-void

    .line 160
    .end local v1    # "page":Ljava/lang/String;
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity$1;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v2}, Lcom/miui/gallery/activity/HomePageActivity;->access$100(Lcom/miui/gallery/activity/HomePageActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "page":Ljava/lang/String;
    goto :goto_0
.end method
