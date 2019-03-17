.class Lcom/miui/gallery/ui/HomePageFragment$1;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$1;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadFinish(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$1;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$1;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/HomePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$1;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageFragment;->onDataBind()V

    goto :goto_0
.end method
