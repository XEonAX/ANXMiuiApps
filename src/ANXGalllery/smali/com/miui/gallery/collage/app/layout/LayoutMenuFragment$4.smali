.class Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;
.super Ljava/lang/Object;
.source "LayoutMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoad()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$602(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;Z)Z

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$700(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$4;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$800(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V

    .line 140
    return-void
.end method
