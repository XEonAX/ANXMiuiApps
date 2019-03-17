.class Lcom/miui/gallery/ui/PhotoPagerHelper$1;
.super Ljava/lang/Object;
.source "PhotoPagerHelper.java"

# interfaces
.implements Lcom/miui/gallery/widget/ViewPager$OnPageSettledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPagerHelper;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$1;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSettled(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPagerHelper$1;->this$0:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setPageSettled(I)V

    .line 44
    return-void
.end method
