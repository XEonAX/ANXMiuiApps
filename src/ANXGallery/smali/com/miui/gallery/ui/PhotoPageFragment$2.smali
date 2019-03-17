.class Lcom/miui/gallery/ui/PhotoPageFragment$2;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;->delayDoAfterTransit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$300(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    goto :goto_0
.end method
