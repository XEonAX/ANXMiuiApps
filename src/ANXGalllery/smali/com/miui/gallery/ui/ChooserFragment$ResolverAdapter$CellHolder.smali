.class Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;
.super Ljava/lang/Object;
.source "ChooserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

.field public mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;Lcom/miui/gallery/ui/ChooserFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;
    .param p2, "x1"    # Lcom/miui/gallery/ui/ChooserFragment$1;

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;-><init>(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)V

    return-void
.end method


# virtual methods
.method public needRefresh(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 764
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    .line 765
    invoke-static {v1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;->access$600(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    .line 766
    invoke-static {v2}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;->access$600(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 764
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ShareComponentSorter;->touch(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->access$700(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->this$0:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->access$700(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$CellHolder;->mInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$DisplayResolvedInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;->onIntentSelected(Landroid/content/Intent;)V

    .line 770
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/ShareComponentSorter;->save()V

    .line 771
    return-void
.end method
