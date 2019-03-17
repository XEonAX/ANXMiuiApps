.class Lcom/miui/gallery/ui/RecommendFacePageFragment$2;
.super Ljava/lang/Object;
.source "RecommendFacePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/RecommendFacePageFragment;->onPageChanged(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/RecommendFacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecommendFacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/RecommendFacePageFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment$2;->this$0:Lcom/miui/gallery/ui/RecommendFacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment$2;->this$0:Lcom/miui/gallery/ui/RecommendFacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 88
    return-void
.end method
