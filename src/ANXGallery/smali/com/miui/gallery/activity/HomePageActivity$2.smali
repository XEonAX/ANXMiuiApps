.class Lcom/miui/gallery/activity/HomePageActivity$2;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/HomePageActivity;
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
    .line 190
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageActivity$2;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemsChecked(Z)V
    .locals 3
    .param p1, "needRedDot"    # Z

    .prologue
    .line 194
    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity$2;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    iget-object v2, v2, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "actionBarMore":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 196
    const v2, 0x7f120084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "updateView":Landroid/view/View;
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .end local v1    # "updateView":Landroid/view/View;
    :cond_0
    return-void

    .line 197
    .restart local v1    # "updateView":Landroid/view/View;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method
