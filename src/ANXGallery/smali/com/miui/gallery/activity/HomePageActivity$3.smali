.class Lcom/miui/gallery/activity/HomePageActivity$3;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/HomePageActivity;->setupHomePageFragment()V
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
    .line 214
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/activity/HomePageActivity;->access$502(Lcom/miui/gallery/activity/HomePageActivity;I)I

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageActivity;->access$600(Lcom/miui/gallery/activity/HomePageActivity;)V

    .line 236
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "ratio"    # F
    .param p3, "fromHasActionMenu"    # Z
    .param p4, "toHasActionMenu"    # Z

    .prologue
    .line 218
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 222
    const-string v0, "HomePageActivity"

    const-string v1, "onPageSelected %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageActivity;->access$100(Lcom/miui/gallery/activity/HomePageActivity;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v2}, Lcom/miui/gallery/activity/HomePageActivity;->access$100(Lcom/miui/gallery/activity/HomePageActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/activity/HomePageActivity;->access$300(Lcom/miui/gallery/activity/HomePageActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v1, p1}, Lcom/miui/gallery/activity/HomePageActivity;->access$300(Lcom/miui/gallery/activity/HomePageActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/activity/HomePageActivity;->access$400(Lcom/miui/gallery/activity/HomePageActivity;I)V

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity$3;->this$0:Lcom/miui/gallery/activity/HomePageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/activity/HomePageActivity;->access$102(Lcom/miui/gallery/activity/HomePageActivity;I)I

    .line 230
    return-void
.end method
