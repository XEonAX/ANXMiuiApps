.class Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;
.super Ljava/lang/Object;
.source "HomePageImmersionMenuHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->onCreateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

.field final synthetic val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

.field final synthetic val$photoMovieItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$photoMovieItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    iput-object p3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloading()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$photoMovieItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setRemainWhenClick(Z)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$photoMovieItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const v1, 0x7f0c05a1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setInformation(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->updateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 73
    return-void
.end method

.method public onFinish(ZI)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$photoMovieItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setRemainWhenClick(Z)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$photoMovieItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setInformation(Ljava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$1;->val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->updateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 80
    return-void
.end method
