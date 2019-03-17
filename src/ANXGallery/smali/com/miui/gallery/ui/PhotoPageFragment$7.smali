.class Lcom/miui/gallery/ui/PhotoPageFragment$7;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
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
    .line 1259
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$7;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$7;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1300(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$7;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1400(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$7;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1400(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setBackgroundAlpha(F)V

    goto :goto_0
.end method
